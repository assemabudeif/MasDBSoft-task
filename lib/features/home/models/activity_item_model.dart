import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

class ActivityItemModel extends Equatable {
  final String title;
  final String date;
  final IconData icon;
  final String description;
  final Color color;

  const ActivityItemModel({
    required this.color,
    required this.title,
    required this.description,
    required this.date,
    required this.icon,
  });

  @override
  List<Object?> get props => [
        title,
        description,
        date,
        icon,
        color,
      ];
}
