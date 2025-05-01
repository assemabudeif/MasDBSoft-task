import 'package:get_it/get_it.dart';
import 'package:interview_task/features/home_layout/cubit/home_layout_cubit.dart';

final sl = GetIt.instance;

class ServiceLocator {
  static Future<void> init() async {
    /// Cubits
    sl.registerLazySingleton<HomeLayoutCubit>(() => HomeLayoutCubit());
  }
}
