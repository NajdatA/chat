import 'package:chat/core/error/failures.dart';
import 'package:chat/core/network/network_info.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

import 'base_local_data_source.dart';

typedef FutureEitherOr<T> = Future<Either<Failure, T>> Function();
typedef FutureEitherOrWithToken<T> = Future<Either<Failure, T>> Function(
    String token);

abstract class BaseRepository {
  Future<Either<Failure, String>> getToken();
//
//  Future<Either<Failure, int>> getUserID();
//
//  Future<Either<Failure, bool>> isLoggedIn();

  Future<Either<Failure, T>> checkNetwork<T>(FutureEitherOr<T> body);

  Future<Either<Failure, T>> requestWithToken<T>(
      FutureEitherOrWithToken<T> body);
}

class BaseRepositoryImpl implements BaseRepository {
  final NetworkInfo networkInfo;

  BaseRepositoryImpl(
      {@required this.networkInfo});

  @override
  Future<Either<Failure, String>> getToken() async {
    final token = 'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6Ijk5MmM0NDQ4ZTgwZDZmMjYyNWU0YWRmZjJiNzQzYTM2OWVmNzQ3ODA2NjRlMTQ0YzkwZmQxMGRkMzg0NDBkYjI0ZWJjMzMwM2Q0ZDkwYzJiIn0.eyJhdWQiOiIxIiwianRpIjoiOTkyYzQ0NDhlODBkNmYyNjI1ZTRhZGZmMmI3NDNhMzY5ZWY3NDc4MDY2NGUxNDRjOTBmZDEwZGQzODQ0MGRiMjRlYmMzMzAzZDRkOTBjMmIiLCJpYXQiOjE1ODI1NDYzODMsIm5iZiI6MTU4MjU0NjM4MywiZXhwIjoxNjE0MTY4NzgzLCJzdWIiOiIxIiwic2NvcGVzIjpbXX0.bd7VgqVq3JcMMdfpImggnHFKrNuGjzTKujVvf7gyN3ShEZJBF97km2TdXy4Mxl2SJLrQZ02yb9c1AAb0yJoZR-pjC60mQ-UEgBFOAkhFWCHcpxIqMb0pU8-oO-YT-P5rH7dzmUIYwDmWlnEkWRlYB9hFXuEPa1795FOi7CZZ9x8-tUT2uD6VeMMgMwPnefeCxldxC6_zmWBNIiDYmLbOKrSBk3yMrvA4emBImvZ8CcmIkE8NUq2ZtRQQ23gije80xbo33_juri_RKEJgjSI_qgUWDiKMek4KodOv8EN8B05z9R_cifdyCl2aNWQWR4Bd3glvEM4FCY9FZLP4GHIpE_WaHAv8v-v-VJSOMG0kJuNls9gRrT6FYb2Lm93ya-WUvtzAAraL8G4lggzb7ynbSm57Z0GQ1ggDSXmNMLTL2gx5HStTemQo6XyO8Nq5M7khZB5CiePizUgjvlKUFlKGMajE6db4hHOWg_FpYwLDr3v-wWwZMdPBXltsP6H48v5JyDBUIXGTJHsWwhAJpVf2xHaVvOQYkqRuA7ofyBDx0FiDbi8vjZLvloYLzO6lsfvAljHIvJPNWH16HDrcO6jKeUFWs-18rLgg5mkOMrYuFVMoMHRscrP5pOihRPseXAlZJWtKR4XRBmgjXEro6nXJ_Lm0yyPbgLauuTd0yJZTXkA';
    print(token);
    if (token != null && token.isNotEmpty) {
      return Right(token);
    } else {
      return Left(CacheFailure());
    }
  }

//  @override
//  Future<Either<Failure, int>> getUserID() async {
//    final userID = await baseLocalDataSource.userID;
//    print(userID);
//    if (userID != null) {
//      return Right(userID);
//    } else {
//      return Left(CacheFailure());
//    }
//  }

//  @override
//  Future<Either<Failure, bool>> isLoggedIn() async {
//    final token = await baseLocalDataSource.token;
//    final isRememberMe = await baseLocalDataSource.isRememberMe;
//    print(token);
//    if (token != null &&
//        token.isNotEmpty &&
//        isRememberMe != null &&
//        isRememberMe) {
//      return Right(true);
//    } else {
//      return Left(CacheFailure());
//    }
//  }

  @override
  Future<Either<Failure, T>> requestWithToken<T>(
      FutureEitherOrWithToken<T> body,
      ) async {
    print('requestWithToken');
    return await checkNetwork<T>(() async {
      try {
        final token = await getToken();
        print('toke is $token');
        return await token.fold(
              (failure) => Left(ServerFailure()),
              (token) async {
            return body(token);
          },
        );
      } catch (e) {
        print('e is $e');
        return Left(ServerFailure());
      }
    });
  }

  @override
  Future<Either<Failure, T>> checkNetwork<T>(FutureEitherOr<T> body) async {
    if (await networkInfo.isConnected) {
      return body();
    } else {
      return Left(ServerFailure());
    }
  }
}
