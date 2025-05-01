import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '/core/constants/app_constance.dart';
import '/core/services/service_locator.dart';
import '/core/theme/app_color.dart';
import '/core/utilities/extensions.dart';
import '/core/utilities/font_manager.dart';
import '/features/home/cubit/home_cubit.dart';
import '/features/home/views/widgets/quick_action_item_widget.dart';
import '/features/home/views/widgets/summary_item_widget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'widgets/activity_item_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeCubit>(
      create: (context) => sl<HomeCubit>(),
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            /// Welcome Text
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: kDefaultPadding,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: kDefaultPadding),
                    Text(
                      'Welcome back, John!',
                      style: context.textTheme.titleLarge?.copyWith(
                        fontWeight: FontManager.boldFontWeight,
                      ),
                    ),
                    SizedBox(height: 1.h),
                    Text(
                      'Monday, 15 March 2025',
                      style: context.textTheme.bodySmall?.copyWith(
                        fontWeight: FontManager.regularFontWeight,
                        color: AppColors.hintColor,
                      ),
                    ),
                    SizedBox(height: 3.h),
                    Text(
                      'Recent Activity',
                      style: context.textTheme.titleSmall?.copyWith(
                        fontWeight: FontManager.semiBoldFontWeight,
                      ),
                    ),
                    SizedBox(height: 1.5.h),
                  ],
                ),
              ),
            ),

            /// Activity Items
            BlocBuilder<HomeCubit, HomeState>(
              bloc: sl<HomeCubit>(),
              builder: (context, state) {
                return SliverPadding(
                  padding: EdgeInsets.symmetric(
                    horizontal: kDefaultPadding,
                  ),
                  sliver: SliverList.separated(
                    itemCount: context.read<HomeCubit>().activityItems.length,
                    itemBuilder: (context, index) => ActivityItemWidget(
                      model: context.read<HomeCubit>().activityItems[index],
                    ),
                    separatorBuilder: (context, index) => SizedBox(height: 2.h),
                  ),
                );
              },
            ),
            SliverToBoxAdapter(
              child: SizedBox(height: 5.h),
            ),

            /// Summary Items
            BlocBuilder<HomeCubit, HomeState>(
              bloc: sl<HomeCubit>(),
              builder: (context, state) {
                return SliverPadding(
                  padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  sliver: SliverToBoxAdapter(
                    child: SizedBox(
                      height: 13.5.h,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: (context, index) =>
                            SizedBox(width: 3.w),
                        itemCount:
                            context.read<HomeCubit>().summaryItems.length,
                        itemBuilder: (context, index) => SummaryItemWidget(
                          model: context.read<HomeCubit>().summaryItems[index],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
            SliverToBoxAdapter(
              child: SizedBox(height: 5.h),
            ),

            /// Quick Actions
            SliverToBoxAdapter(
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.secondBackgroundColor,
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: kDefaultPadding,
                  vertical: 2.h,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Quick Actions',
                          style: context.textTheme.titleSmall?.copyWith(
                            fontWeight: FontManager.semiBoldFontWeight,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: FaIcon(
                            FontAwesomeIcons.pen,
                            size: 14.sp,
                            color: AppColors.blackColor,
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 1.5.h),
                    BlocBuilder<HomeCubit, HomeState>(
                      bloc: sl<HomeCubit>(),
                      builder: (context, state) {
                        return GridView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 3.5.w,
                            mainAxisSpacing: 2.h,
                            childAspectRatio: 2,
                            mainAxisExtent: 6.h,
                          ),
                          itemCount:
                              context.read<HomeCubit>().quickActions.length,
                          itemBuilder: (context, index) {
                            return QuickActionItemWidget(
                              model:
                                  context.read<HomeCubit>().quickActions[index],
                            );
                          },
                        );
                      },
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
