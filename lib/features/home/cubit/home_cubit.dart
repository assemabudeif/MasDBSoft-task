import 'package:bloc/bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:interview_task/core/theme/app_color.dart';
import 'package:interview_task/features/home/models/activity_item_model.dart';
import 'package:interview_task/features/home/models/quick_action_model.dart';
import 'package:interview_task/features/home/models/summary_item_model.dart';
import 'package:meta/meta.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final List<ActivityItemModel> activityItems = [
    ActivityItemModel(
      title: 'New Order #1234',
      description: '15.00 EGP',
      date: '2 minutes ago',
      color: AppColors.primary,
      icon: FontAwesomeIcons.box,
    ),
    ActivityItemModel(
      title: 'New Support Ticket',
      description: 'Open',
      date: '15 minutes ago',
      color: AppColors.blueColor,
      icon: FontAwesomeIcons.solidMessage,
    ),
  ];

  final List<SummaryItemModel> summaryItems = [
    SummaryItemModel(
      title: 'Total Orders',
      description: '+12.5% from last week',
      color: AppColors.primary,
      icon: FontAwesomeIcons.bagShopping,
      value: '1,258',
    ),
    SummaryItemModel(
      title: 'Revenue',
      description: '+8.2% from last week',
      color: AppColors.greenColor,
      icon: FontAwesomeIcons.arrowTrendUp,
      value: '\$24.5k',
    ),
    SummaryItemModel(
      title: 'Total Orders',
      description: '+12.5% from last week',
      color: AppColors.primary,
      icon: FontAwesomeIcons.bagShopping,
      value: '1,258',
    ),
  ];

  final List<QuickActionModel> quickActions = [
    QuickActionModel(
      title: 'Orders',
      icon: FontAwesomeIcons.cartShopping,
    ),
    QuickActionModel(
      title: 'Products',
      icon: FontAwesomeIcons.box,
    ),
    QuickActionModel(
      title: 'Offers',
      icon: FontAwesomeIcons.tag,
    ),
    QuickActionModel(
      title: 'Spotlight',
      icon: FontAwesomeIcons.solidStar,
    ),
    QuickActionModel(
      title: 'Coupons',
      icon: FontAwesomeIcons.ticket,
    ),
    QuickActionModel(
      title: 'Complaints',
      icon: FontAwesomeIcons.triangleExclamation,
    ),
  ];

  HomeCubit() : super(HomeInitial());
}
