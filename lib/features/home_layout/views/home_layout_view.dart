import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '/core/constants/app_constance.dart';
import '/core/services/service_locator.dart';
import '/core/theme/app_color.dart';
import '/core/utilities/assets_data.dart';
import '/features/home/views/home_view.dart';
import '/features/home_layout/cubit/home_layout_cubit.dart';
import '/features/home_layout/views/widgets/drawer_widget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class HomeLayoutView extends StatelessWidget {
  const HomeLayoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<HomeLayoutCubit>(),
      child: Scaffold(
        key: sl<HomeLayoutCubit>().scaffoldKey,
        appBar: AppBar(
          leading: IconButton(
            icon: const FaIcon(FontAwesomeIcons.bars),
            onPressed: () {
              sl<HomeLayoutCubit>().openDrawer();
            },
          ),
          title: BlocBuilder<HomeLayoutCubit, HomeLayoutState>(
            bloc: sl<HomeLayoutCubit>(),
            buildWhen: (context, state) => state is ChangeIndexState,
            builder: (context, state) {
              return Text(
                context.read<HomeLayoutCubit>().title,
              );
            },
          ),
          actions: [
            Badge(
              label: const Text('3'),
              backgroundColor: AppColors.lightGreenColor,
              offset: Offset(-2.w, 1.h),
              child: IconButton(
                icon: FaIcon(FontAwesomeIcons.bell),
                onPressed: () {},
              ),
            ),
            CircleAvatar(
              backgroundImage: AssetImage(
                AssetsData.userImage,
              ),
              radius: 4.w,
            ),
            SizedBox(width: kDefaultPadding),
          ],
        ),
        drawer: DrawerWidget(),
        body: BlocBuilder<HomeLayoutCubit, HomeLayoutState>(
          bloc: sl<HomeLayoutCubit>(),
          buildWhen: (context, state) => state is ChangeIndexState,
          builder: (context, state) {
            return IndexedStack(
              index: context.read<HomeLayoutCubit>().currentIndex,
              children: const [
                HomeView(),
                Center(child: Text('Search')),
                Center(child: Text('Graph')),
                Center(child: Text('Clock')),
                Center(child: Text('Profile')),
              ],
            );
          },
        ),
        bottomNavigationBar: BlocBuilder<HomeLayoutCubit, HomeLayoutState>(
          bloc: sl<HomeLayoutCubit>(),
          builder: (context, state) {
            return SalomonBottomBar(
              items: context.read<HomeLayoutCubit>().bottomBarItems,
              currentIndex: context.read<HomeLayoutCubit>().currentIndex,
              onTap: context.read<HomeLayoutCubit>().changeIndex,
            );
          },
        ),
      ),
    );
  }
}
