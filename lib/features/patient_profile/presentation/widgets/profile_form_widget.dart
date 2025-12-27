import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:ruh/core/di/injection.dart';
import 'package:ruh/features/lookups/domain/entities/country.dart';
import 'package:ruh/features/lookups/domain/entities/language.dart';
import 'package:ruh/features/lookups/domain/repositories/lookups_repository.dart';
import 'package:ruh/core/utils/l10n_extensions.dart';
import 'package:ruh/core/utils/string_extensions.dart';
import 'package:ruh/core/utils/validators.dart';
import 'package:ruh/features/auth/domain/entities/user.dart';
import 'package:ruh/features/lookups/presentation/widgets/country_picker_field.dart';
import 'package:ruh/features/lookups/presentation/widgets/languages_picker_field.dart';
import 'package:ruh/features/lookups/presentation/widgets/languages_picker_bottom_sheet.dart';
import 'package:ruh/features/patient_profile/domain/dtos/spoken_language_input_dto.dart';

class ProfileFormWidget extends StatefulWidget {
  final Function(
    String fullName,
    DateTime dateOfBirth,
    UserGender gender,
    String countryId,
    List<SpokenLanguageInputDto> spokenLanguages,
  )
  onSave;
  final String? initialFullName;
  final DateTime? initialDateOfBirth;
  final UserGender? initialGender;
  final String? initialCountryId;
  final List<Language>? initialLanguages;

  const ProfileFormWidget({
    super.key,
    required this.onSave,
    this.initialFullName,
    this.initialDateOfBirth,
    this.initialGender,
    this.initialCountryId,
    this.initialLanguages,
  });

  @override
  State<ProfileFormWidget> createState() => _ProfileFormWidgetState();
}

class _ProfileFormWidgetState extends State<ProfileFormWidget> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController _fullNameController;
  late TextEditingController _dobController;
  late UserGender _selectedGender;
  DateTime? _selectedDate;

  Country? _selectedCountry;
  List<LanguageSelection> _selectedLanguageSelections = [];

  @override
  void initState() {
    super.initState();
    _fullNameController = TextEditingController(
      text: widget.initialFullName ?? '',
    );
    _dobController = TextEditingController(
      text: widget.initialDateOfBirth != null
          ? DateFormat('yyyy-MM-dd').format(widget.initialDateOfBirth!)
          : '',
    );
    _selectedDate = widget.initialDateOfBirth;
    _selectedGender = widget.initialGender ?? UserGender.male;

    final initialCountryId = widget.initialCountryId?.trim();
    if (initialCountryId != null && initialCountryId.isNotEmpty) {
      _selectedCountry = Country(id: initialCountryId, name: '');
      _loadInitialCountryName(initialCountryId);
    } else {
      _selectedCountry = null;
    }

    final initialLanguages = widget.initialLanguages ?? const <Language>[];
    _selectedLanguageSelections = initialLanguages.asMap().entries.map((e) {
      return LanguageSelection(language: e.value, isPrimary: e.key == 0);
    }).toList();
  }

  Future<void> _loadInitialCountryName(String countryId) async {
    final repo = getIt<LookupsRepository>();
    final result = await repo.getCountry(countryId);
    if (!mounted) return;
    result.fold(
      (_) {},
      (country) => setState(() => _selectedCountry = country),
    );
  }

  @override
  void dispose() {
    _fullNameController.dispose();
    _dobController.dispose();
    super.dispose();
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate ?? DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
        _dobController.text = DateFormat('yyyy-MM-dd').format(picked);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            controller: _fullNameController,
            decoration: InputDecoration(
              labelText: context.tr.full_name,
              prefixIcon: const Icon(Icons.person),
            ),
            validator: (value) => Validators.required(value, context),
          ),
          SizedBox(height: 16.h),

          TextFormField(
            controller: _dobController,
            readOnly: true,
            onTap: () => _selectDate(context),
            decoration: InputDecoration(
              labelText: context.tr.date_of_birth,
              prefixIcon: const Icon(Icons.calendar_today),
            ),
            validator: (value) => Validators.required(value, context),
          ),
          SizedBox(height: 16.h),

          DropdownButtonFormField<UserGender>(
            initialValue: _selectedGender,
            decoration: InputDecoration(
              labelText: context.tr.gender,
              prefixIcon: const Icon(Icons.person_outline),
            ),
            items: UserGender.values.map((UserGender gender) {
              return DropdownMenuItem<UserGender>(
                value: gender,
                child: Text(gender.name.capitalize),
              );
            }).toList(),
            onChanged: (UserGender? newValue) {
              if (newValue != null) {
                setState(() {
                  _selectedGender = newValue;
                });
              }
            },
          ),
          SizedBox(height: 24.h),

          FormField<Country>(
            initialValue: _selectedCountry,
            validator: (value) =>
                value == null ? context.tr.required_field : null,
            builder: (field) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CountryPickerField(
                    value: field.value,
                    onChanged: (country) {
                      setState(() => _selectedCountry = country);
                      field.didChange(country);
                    },
                  ),
                  if (field.hasError)
                    Padding(
                      padding: EdgeInsets.only(left: 12.w, top: 6.h),
                      child: Text(
                        field.errorText ?? '',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.error,
                          fontSize: 12.sp,
                        ),
                      ),
                    ),
                ],
              );
            },
          ),
          SizedBox(height: 16.h),

          LanguagesPickerField(
            value: _selectedLanguageSelections,
            onChanged: (value) {
              setState(() => _selectedLanguageSelections = value);
            },
          ),
          SizedBox(height: 24.h),

          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate() &&
                    _selectedDate != null) {
                  final countryId = _selectedCountry!.id;
                  final spokenLanguages = _selectedLanguageSelections
                      .map(
                        (s) => SpokenLanguageInputDto(
                          languageId: s.language.id,
                          isPrimary: s.isPrimary,
                        ),
                      )
                      .toList();

                  widget.onSave(
                    _fullNameController.text,
                    _selectedDate!,
                    _selectedGender,
                    countryId,
                    spokenLanguages,
                  );
                }
              },
              child: Text(context.tr.save),
            ),
          ),
        ],
      ),
    );
  }
}
