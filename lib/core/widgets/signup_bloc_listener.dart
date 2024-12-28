import 'package:flutter/material.dart';
import 'package:flutter_advanced_app/core/helpers/extensions.dart';
import 'package:flutter_advanced_app/core/routing/routes.dart';
import 'package:flutter_advanced_app/core/themes/colors.dart';
import 'package:flutter_advanced_app/core/widgets/setup_error_state.dart';
import 'package:flutter_advanced_app/features/sign%20up/logic/cubit/signup_cubit.dart';
import 'package:flutter_advanced_app/features/sign%20up/logic/cubit/signup_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupBlocListener extends StatelessWidget {
  const SignupBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignupCubit, SignupState>(
      listenWhen: (previous, current) =>
          current is SignupLoading ||
          current is SignupSuccess ||
          current is SignupError,
      listener: (context, state) {
        state.whenOrNull(
          signupLoading: () {
            return showDialog(
                context: context,
                builder: (context) {
                  return const Center(
                    child: CircularProgressIndicator(
                      color: ColorsManager.mainBlue,
                    ),
                  );
                });
          },
          signupSuccess: (loginResponse) {
            context.pop();
            context.pushNamed(Routes.homeScreen);
          },
          signupError: (error) {
            setupMethodState(context, error);
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }
}
