import 'package:flutter/material.dart';
import 'package:flutter_advanced_app/core/themes/colors.dart';
import 'package:flutter_advanced_app/core/themes/styles.dart';
import 'package:flutter_advanced_app/core/widgets/already_have_accunt.dart';
import 'package:flutter_advanced_app/core/widgets/doc_button_widget.dart';
import 'package:flutter_advanced_app/core/widgets/signup_bloc_listener.dart';
import 'package:flutter_advanced_app/core/widgets/register_forms.dart';
import 'package:flutter_advanced_app/features/login/ui/widgets/terms_and_conditions.dart';
import 'package:flutter_advanced_app/features/sign%20up/logic/cubit/signup_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
          body: SafeArea(
        child: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 31.w, vertical: 50.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Create Account", style: TextStyles.font24BlueBold),
                const SizedBox(height: 8),
                Text(
                    "Sign up now and start exploring all that our app has to offer. We're excited to welcome you to our community!",
                    style: TextStyles.font14GreyReqular),
                SizedBox(height: 36.h),
                Column(
                  children: [
                    RegisterForms(),
                    SizedBox(height: 16.h),
                    Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "Forgot Password?",
                          style: TextStyles.font13BlueReqular,
                        )),
                    SizedBox(height: 41.h),
                    DocButtonWidget(
                        text: "Create Account",
                        onTap: () {
                          validateThenDoLogin(context);
                        }),
                    SizedBox(
                      height: 46,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Divider(
                            thickness: 1.0,
                            height: 1,
                            color: Color(0xFFE0E0E0),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Text(
                            "Or sign in with",
                            style: TextStyles.font12GreyReqular,
                          ),
                        ),
                        Expanded(
                          child: Divider(
                            thickness: 1.0,
                            height: 1,
                            color: Color(0xFFE0E0E0),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 32.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CircleAvatar(
                          radius: 21,
                          backgroundColor: Color(0xFFF5F5F5),
                          child: GestureDetector(
                            onTap: () {},
                            child: SvgPicture.asset(
                              "assets/svg/google_logo.svg",
                              width: 20,
                            ),
                          ),
                        ),
                        CircleAvatar(
                          radius: 23,
                          backgroundColor: Color(0xFFF5F5F5),
                          child: IconButton(
                            padding: EdgeInsets.zero,
                            constraints: BoxConstraints(),
                            icon: Icon(
                              Icons.facebook,
                              color: ColorsManager.mainBlue,
                              size: 30,
                            ),
                            onPressed: () {},
                          ),
                        ),
                        CircleAvatar(
                          radius: 22,
                          backgroundColor: Color(0xFFF5F5F5),
                          child: IconButton(
                            padding: EdgeInsets.zero,
                            constraints: BoxConstraints(),
                            icon: Icon(
                              Icons.apple,
                              color: Color(0xFF000000),
                              size: 30,
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 32.h),
                    TermsAndConditions(),
                    SizedBox(height: 24.h),
                    AlreadyHaveAccunt(),
                    const SignupBlocListener(),
                  ],
                ),
              ],
            ),
          ),
        ),
      )),
    );
  }

  void validateThenDoLogin(BuildContext context) {
    if (context.read<SignupCubit>().formKey.currentState!.validate()) {
      context.read<SignupCubit>().emitSignupState();
    }
  }
}
