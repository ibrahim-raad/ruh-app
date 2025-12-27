import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ruh/core/utils/l10n_extensions.dart';
import 'package:ruh/features/lookups/domain/entities/country.dart';
import 'package:ruh/features/lookups/presentation/widgets/country_picker_bottom_sheet.dart';

class CountryPickerField extends StatelessWidget {
  final Country? value;
  final ValueChanged<Country?> onChanged;

  const CountryPickerField({
    super.key,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    final displayValue = (value != null && value!.name.trim().isNotEmpty)
        ? value!.name
        : context.tr.select_country;

    return InkWell(
      borderRadius: BorderRadius.circular(12.r),
      onTap: () async {
        final selected = await CountryPickerBottomSheet.show(
          context,
          initialCountry: value,
        );
        if (selected != null) onChanged(selected);
      },
      child: InputDecorator(
        decoration: InputDecoration(
          labelText: context.tr.country,
          prefixIcon: const Icon(Icons.public),
        ),
        child: Text(displayValue),
      ),
    );
  }
}
