import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:ruh/core/di/injection.dart';
import 'package:ruh/core/network/models/pagination_query_params_dto.dart';
import 'package:ruh/core/utils/app_toast.dart';
import 'package:ruh/core/utils/theme_extensions.dart';
import 'package:ruh/shared/widgets/app_loader.dart';
import 'package:dio/dio.dart';
import 'package:ruh/features/lookups/domain/entities/country.dart';
import 'package:ruh/features/lookups/domain/entities/language.dart';
import 'package:ruh/features/lookups/presentation/widgets/single_select_lookup_picker.dart';

import 'package:ruh/features/therapists/data/datasources/therapists_remote_datasource.dart';
import 'package:ruh/features/therapists/data/repositories/therapists_repository_impl.dart';
import '../cubit/therapists_cubit.dart';
import '../cubit/therapists_state.dart';
import '../widgets/therapist_card.dart';

class FindTherapistPage extends StatefulWidget {
  const FindTherapistPage({super.key});

  @override
  State<FindTherapistPage> createState() => _FindTherapistPageState();
}

class _FindTherapistPageState extends State<FindTherapistPage> {
  final _searchController = TextEditingController();
  final _scrollController = ScrollController();
  Timer? _debounce;

  Country? _country;
  Language? _language;
  late final TherapistsCubit _cubit;

  @override
  void initState() {
    super.initState();
    final dio = getIt<Dio>();
    final repo = TherapistsRepositoryImpl(TherapistsRemoteDataSource(dio));
    _cubit = TherapistsCubit(repo, const PaginationQueryParamsDto(limit: 10))
      ..loadInitial(dto: _buildDto(offset: 0));
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _debounce?.cancel();
    _searchController.dispose();
    _scrollController.dispose();
    _cubit.close();
    super.dispose();
  }

  void _onScroll() {
    if (!_scrollController.hasClients) return;
    final max = _scrollController.position.maxScrollExtent;
    final current = _scrollController.position.pixels;
    if (current >= max - 250) {
      _cubit.loadNext();
    }
  }

  PaginationQueryParamsDto _buildDto({required int offset}) {
    final query = <String, dynamic>{};
    final text = _searchController.text.trim();
    if (text.isNotEmpty) query['name'] = text;
    if (_country != null) query['country_id'] = _country!.id;
    if (_language != null) query['language_id'] = _language!.id;

    return PaginationQueryParamsDto(
      offset: offset,
      limit: 10,
      sort: 'created_at DESC',
      queryParams: query.isEmpty ? null : query,
    );
  }

  void _onSearchChanged(String value) {
    _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 300), () {
      _cubit.loadInitial(dto: _buildDto(offset: 0));
    });
  }

  Future<void> _pickCountry() async {
    final selected = await showCountryPicker(context, initialCountry: _country);
    if (!mounted) return;
    if (selected == null) return;
    setState(() => _country = selected);
    _cubit.loadInitial(dto: _buildDto(offset: 0));
  }

  Future<void> _pickLanguage() async {
    final selected = await showLanguagePicker(
      context,
      initialLanguage: _language,
    );
    if (!mounted) return;
    if (selected == null) return;
    setState(() => _language = selected);
    _cubit.loadInitial(dto: _buildDto(offset: 0));
  }

  void _clearFilters() {
    setState(() {
      _country = null;
      _language = null;
      _searchController.clear();
    });
    _cubit.loadInitial(dto: _buildDto(offset: 0));
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _cubit,
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              _Header(onBack: () => context.pop()),
              Padding(
                padding: EdgeInsets.fromLTRB(20.w, 14.h, 20.w, 12.h),
                child: TextField(
                  controller: _searchController,
                  onChanged: _onSearchChanged,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: 'search by name...',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20.w, 0, 20.w, 12.h),
                child: Row(
                  children: [
                    Expanded(
                      child: _FilterChip(
                        label: _country?.name ?? 'country',
                        icon: Icons.public,
                        selected: _country != null,
                        onTap: _pickCountry,
                      ),
                    ),
                    SizedBox(width: 10.w),
                    Expanded(
                      child: _FilterChip(
                        label: _language?.name ?? 'language',
                        icon: Icons.translate,
                        selected: _language != null,
                        onTap: _pickLanguage,
                      ),
                    ),
                    SizedBox(width: 10.w),
                    IconButton(
                      tooltip: 'Clear',
                      onPressed: _clearFilters,
                      icon: const Icon(Icons.close),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: BlocBuilder<TherapistsCubit, TherapistsState>(
                  builder: (context, state) {
                    if (state is TherapistsLoading) {
                      return const Center(child: AppLoader());
                    }
                    if (state is TherapistsError) {
                      return Center(child: Text(state.failure.message));
                    }
                    if (state is TherapistsLoaded) {
                      return RefreshIndicator(
                        onRefresh: () async {
                          await _cubit.loadInitial(dto: _buildDto(offset: 0));
                        },
                        child: ListView.separated(
                          controller: _scrollController,
                          padding: EdgeInsets.fromLTRB(20.w, 0, 20.w, 20.h),
                          itemCount:
                              state.therapists.length +
                              (state.isLoadingMore ? 1 : 0),
                          separatorBuilder: (_, _) => SizedBox(height: 14.h),
                          itemBuilder: (context, index) {
                            if (index >= state.therapists.length) {
                              return Padding(
                                padding: EdgeInsets.symmetric(vertical: 12.h),
                                child: const Center(child: AppLoader()),
                              );
                            }

                            final t = state.therapists[index];
                            return TherapistCard(
                              therapist: t,
                              onViewProfile: () =>
                                  AppToast.showSuccess(context, 'Coming soon'),
                            );
                          },
                        ),
                      );
                    }
                    return const SizedBox();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _Header extends StatelessWidget {
  final VoidCallback onBack;

  const _Header({required this.onBack});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.fromLTRB(12.w, 18.h, 20.w, 18.h),
      margin: EdgeInsets.fromLTRB(20.w, 0, 20.w, 0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18.r),
        gradient: LinearGradient(
          colors: [context.primary, context.secondary],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconButton(
            onPressed: onBack,
            icon: Icon(Icons.arrow_back, color: context.onPrimary),
          ),
          SizedBox(width: 4.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'find your therapist',
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w800,
                    color: context.onPrimary,
                  ),
                ),
                SizedBox(height: 6.h),
                Text(
                  'connect with verified professionals',
                  style: TextStyle(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w600,
                    color: context.onPrimary.withValues(alpha: 0.9),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _FilterChip extends StatelessWidget {
  final String label;
  final IconData icon;
  final bool selected;
  final VoidCallback onTap;

  const _FilterChip({
    required this.label,
    required this.icon,
    required this.selected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final bg = selected
        ? context.secondary.withValues(alpha: 0.25)
        : context.surfaceContainer;
    final border = selected ? context.secondary : context.outline;

    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12.r),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
        decoration: BoxDecoration(
          color: bg,
          borderRadius: BorderRadius.circular(12.r),
          border: Border.all(color: border),
        ),
        child: Row(
          children: [
            Icon(icon, size: 18.sp, color: context.onSurfaceVariant),
            SizedBox(width: 8.w),
            Expanded(
              child: Text(
                label,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w700,
                  color: context.onSurfaceVariant,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
