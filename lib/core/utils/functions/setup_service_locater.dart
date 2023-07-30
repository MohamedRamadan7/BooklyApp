import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../../Features/home/data/data_sourse/home_local_data_source.dart';
import '../../../Features/home/data/data_sourse/home_remote_data_sourse.dart';
import '../../../Features/home/data/repository/home_repo_impl.dart';
import '../api_service.dart';

final getIt = GetIt.instance;
void setupServiceLocater() {
  getIt.registerSingleton<ApiService>(
    ApiService(
      Dio(),
    ),
  );
  getIt.registerSingleton<HomeRepoImpl>(
    HomeRepoImpl(
      homeRemoteDataSource: HomeRemoteDataSourceImpl(
        getIt.get<ApiService>(),
      ),
      homeLocalDataSourcel: HomeLocalDataSourceImpl(),
    ),
  );
}
