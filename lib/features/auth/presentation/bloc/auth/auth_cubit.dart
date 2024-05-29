import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_gallery/features/auth/data/model/login_request.dart';
import 'package:my_gallery/features/auth/data/repos/auth_repo.dart';

part 'auth_state.dart';
 part 'auth_cubit.freezed.dart';
class AuthCubit extends Cubit<AuthState> {
  AuthCubit(this._repos) : super(const AuthState.initial());
  final AuthRepos _repos;
final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  Future<void> login({required String email,required String password}) async {
    emit(const AuthState.loading());
    final response = await _repos.login(LoginRequestBody(email: email, password: password));
    response.when(success: (value) {
      emit(AuthState.success());
    }, failure: (error) {
      emit(AuthState.error(error: error));
    });
  }
}
