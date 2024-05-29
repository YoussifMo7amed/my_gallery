import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_gallery/core/common/widgets/custom_text_field.dart';
import 'package:my_gallery/core/utils/app_regex.dart';
import 'package:my_gallery/features/auth/presentation/bloc/auth/auth_cubit.dart';

class LoginTextFields extends StatefulWidget {
  const LoginTextFields({super.key});

  @override
  State<LoginTextFields> createState() => _LoginTextFieldsState();
}

class _LoginTextFieldsState extends State<LoginTextFields> {

  bool isshowpassword = true;
  late final AuthCubit _cubit;
  @override
  void initState() {
    super.initState();
    _cubit = context.read<AuthCubit>();
  }
@override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _cubit.emailController.dispose();
    _cubit.passwordController.dispose();
   
  }
  Widget build(BuildContext context) {
    return  Form(
      key: _cubit.formKey,
      child: Column(
        children: [
          //Email
          CustomTextField(  
            fillColour: Colors.white,
            controller: _cubit.emailController,
           hintText: 'Email',
           keyboardType: TextInputType.emailAddress,
           obscureText: false,
             validator: (value) {
                if (!AppRegex.isEmailValid(_cubit.emailController.text)) {
                  return 'Please enter a valid email';
                }
                return null;
              },
          ),
          SizedBox(height: 30.h),
          //Password
          CustomTextField(controller: _cubit.passwordController,
           hintText: 'Password',
           keyboardType: TextInputType.visiblePassword,
           obscureText: isshowpassword,
             validator: (value) {
                if (value == null || value.isEmpty || value.length < 6) {
                  return 'Please enter a valid password';
                }
                return null;
              },
               suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    isshowpassword = !isshowpassword;
                  });
                },
                icon: Icon(
                  !isshowpassword ? Icons.visibility : Icons.visibility_off,
                  color: Colors.grey,
                ),
          ),)
          //Forgot Password
        ],
      ),
    );
  }
}