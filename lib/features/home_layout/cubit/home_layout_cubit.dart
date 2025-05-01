import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '/core/theme/app_color.dart';
import '/core/utilities/assets_data.dart';
import '/core/utilities/font_manager.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

part 'home_layout_state.dart';

class HomeLayoutCubit extends Cubit<HomeLayoutState> {
  HomeLayoutCubit() : super(HomeLayoutInitial());

  final scaffoldKey = GlobalKey<ScaffoldState>();
  int currentIndex = 0;

  List<SalomonBottomBarItem> get bottomBarItems => [
        SalomonBottomBarItem(
          icon: SvgPicture.asset(
            AssetsData.homeSvg,
            colorFilter: ColorFilter.mode(
              currentIndex == 0 ? AppColors.primary : AppColors.disabledColor,
              BlendMode.srcIn,
            ),
          ),
          title: Text(
            'Home',
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontManager.mediumFontWeight,
              color: AppColors.primary,
              fontFamily: FontManager.poppinsFontFamily,
            ),
          ),
        ),
        SalomonBottomBarItem(
          icon: SvgPicture.asset(
            AssetsData.searchSvg,
            colorFilter: ColorFilter.mode(
              currentIndex == 1 ? AppColors.primary : AppColors.disabledColor,
              BlendMode.srcIn,
            ),
          ),
          title: Text(
            'Search',
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontManager.mediumFontWeight,
              color: AppColors.primary,
              fontFamily: FontManager.poppinsFontFamily,
            ),
          ),
        ),
        SalomonBottomBarItem(
          icon: SvgPicture.asset(
            AssetsData.graphSvg,
            colorFilter: ColorFilter.mode(
              currentIndex == 2 ? AppColors.primary : AppColors.disabledColor,
              BlendMode.srcIn,
            ),
          ),
          title: Text(
            'Graph',
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontManager.mediumFontWeight,
              color: AppColors.primary,
              fontFamily: FontManager.poppinsFontFamily,
            ),
          ),
        ),
        SalomonBottomBarItem(
          icon: SvgPicture.asset(
            AssetsData.clockSvg,
            colorFilter: ColorFilter.mode(
              currentIndex == 3 ? AppColors.primary : AppColors.disabledColor,
              BlendMode.srcIn,
            ),
          ),
          title: Text(
            'Clock',
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontManager.mediumFontWeight,
              color: AppColors.primary,
              fontFamily: FontManager.poppinsFontFamily,
            ),
          ),
        ),
        SalomonBottomBarItem(
          icon: SvgPicture.asset(
            AssetsData.userSvg,
            colorFilter: ColorFilter.mode(
              currentIndex == 4 ? AppColors.primary : AppColors.disabledColor,
              BlendMode.srcIn,
            ),
          ),
          title: Text(
            'Profile',
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontManager.mediumFontWeight,
              color: AppColors.primary,
              fontFamily: FontManager.poppinsFontFamily,
            ),
          ),
        ),
      ];

  final List<String> _titles = [
    'Dashboard',
    'Search',
    'Graph',
    'Clock',
    'Profile',
  ];

  String get title => _titles[currentIndex];

  void changeIndex(int index) {
    if (index == currentIndex) return;
    emit(ChangeIndexInitialState());
    currentIndex = index;
    emit(ChangeIndexState());
  }

  void openDrawer() {
    if (scaffoldKey.currentState!.isDrawerOpen) {
      scaffoldKey.currentState!.closeDrawer();
    } else {
      scaffoldKey.currentState!.openDrawer();
    }
  }
}
