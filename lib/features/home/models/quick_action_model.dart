import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

class QuickActionModel extends Equatable {
  final String title;
  final IconData icon;

  const QuickActionModel({
    required this.title,
    required this.icon,
  });

  @override
  List<Object?> get props => [title, icon];
}
