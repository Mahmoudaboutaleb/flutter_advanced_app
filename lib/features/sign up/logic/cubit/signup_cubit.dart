import 'package:flutter/material.dart';
import 'package:flutter_advanced_app/features/sign%20up/data/models/signup_request_body.dart';
import 'package:flutter_advanced_app/features/sign%20up/data/repos/signup_repo.dart';
import 'package:flutter_advanced_app/features/sign%20up/logic/cubit/signup_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupCubit extends Cubit<SignupState> {
  final SignupRepo _signupRepo;
  SignupCubit(this._signupRepo) : super(SignupState.initial());
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  Future<void> emitSignupState() async {
    emit(SignupState.signupLoading());
    final respone = await _signupRepo.signup(SignupRequestBody(
      name: nameController.text,
      email: emailController.text,
      phone: phoneNumberController.text,
      password: passwordController.text,
      passwordConfirmation: confirmPasswordController.text,
      gender: 0,
    ));
    respone.when(success: (signupResponse) {
      emit(SignupState.signupSuccess(signupResponse));
    }, failure: (error) {
      emit(SignupState.signupError(error: error.apiErrorModel.message ?? ""));
    });
  }
}
