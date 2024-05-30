import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_gallery/core/common/toast/show_toast.dart';
import 'package:my_gallery/core/common/widgets/custom_button.dart';
import 'package:my_gallery/core/routes/routers.dart';
import 'package:my_gallery/core/service/shared_pref/pref_keys.dart';
import 'package:my_gallery/core/service/shared_pref/shared_pref.dart';
import 'package:my_gallery/features/auth/presentation/bloc/auth/auth_cubit.dart';

class LoginButtom extends StatelessWidget {
  const LoginButtom({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        state.whenOrNull(
          success: (loginData)async {

            ShowToast.showToastSuccessTop(
              message: 'Login successfully',
            );

            Navigator.pushNamedAndRemoveUntil(
                context, Routes.home, (route) => false).then((value) {
                
                  print('hiiiiiiiiiii>>>>>>${loginData.user.name}');
                });
          },
          error: (message) {
            ShowToast.showToastErrorTop(
              message: message,
            );
          },
        );
      },
      builder: (context, state) {
        return state.maybeWhen(
          loading: () {
            return SizedBox(
              width: MediaQuery.of(context).size.width,
              child: const Center(
                child: CircularProgressIndicator(
                  color: Colors.white,
                ),
              ),
            );
          },
          orElse: () {
            return  CustomButton(
      backgroundColor: Colors.blue.shade300,
        onPressed: () {
_validateThenDoLogin (context);
        },
        text: 'SUBMIT',
        width: MediaQuery.of(context).size.width,
        height: 40.h);
          },
        );
      },
    );
  }

  void _validateThenDoLogin(BuildContext context) {
    if (context.read<AuthCubit>().formKey.currentState!.validate()) {
      context.read<AuthCubit>().login(
             email: context.read<AuthCubit>().emailController.text,
            password: context.read<AuthCubit>().passwordController.text,  
      );
    }
  }
}

