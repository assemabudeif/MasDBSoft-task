import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class SummaryItemModel extends Equatable {
  final String title;
  final String value;
  final IconData icon;
  final String description;
  final Color color;

  const SummaryItemModel({
    required this.title,
    required this.value,
    required this.icon,
    required this.description,
    required this.color,
  });

  @override
  List<Object?> get props => [title, value, icon, description, color];
}
