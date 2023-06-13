
import 'package:celean_architecture_tdd/Auth/presentation/controller/login_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/resources/assets_manager.dart';
import '../../../../../core/resources/color_manager.dart';
import '../../../../../core/resources/strings_manager.dart';
import 'customTextField.dart';
import 'custom_buttons.dart';
import 'custom_text.dart';


class SignInPage extends StatelessWidget {
   SignInPage({Key? key, this.inputType, this.onSaved}) : super(key: key);
  final TextInputType? inputType;
  final ValueSetter? onSaved;
  TextEditingController controllerDilocode=TextEditingController();
  TextEditingController controllerPhoneNumber=TextEditingController();
   final DilocodeFoucs=FocusNode();
   final PhoneNumberFoucs=FocusNode();
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(ImageAssets.kLogo,),
        Padding(
          padding: REdgeInsetsDirectional.only(start: 33, end: 33),
          child: Column(
            children: [
              const Spacer(),
              Image.asset(ImageAssets.signInlogo,height:55.87.h ,width: 168.63.w),
              const Spacer(),
              CustomTextField(
                hint_text: AppStrings.signInInputHintText2,
                suffix: false,
                suffix_icon: null,
                controller:controllerDilocode ,
                keyboard: TextInputType.visiblePassword,
                PasswordFoucs: DilocodeFoucs,
                obsc:false,
                validate:  (value) {
                  if(value!.isEmpty)
                  {
                    DilocodeFoucs.requestFocus();
                    return "Please make sure the password or user name you are entering is correct";
                  }

                },
              ),
              20.verticalSpace,
              CustomTextField(
                hint_text:  AppStrings.signUptHintText1,
                suffix: false,
                suffix_icon: null,
                controller:controllerPhoneNumber ,
                keyboard: TextInputType.visiblePassword,
                PasswordFoucs: PhoneNumberFoucs,
                obsc:false,
                validate:  (value) {
                  if(value!.isEmpty)
                  {
                    PhoneNumberFoucs.requestFocus();
                    return "Please make sure the password or user name you are entering is correct";
                  }

                },
              ),const Spacer(),
              Row(
                children:   [
                  Flexible(
                    flex: 1,
                    child: CustomButtonWithIcon(
                      iconData: Icons.arrow_back_ios,
                      color: ColorManager.primary,
                      // onTap: (){
                      // Navigator.pushNamed(context, Routes.loginRoute);
                      // },
                    ),
                  ),
                  10.horizontalSpace,
                  // const RSizedBox(width:10 ,),//todo
                   Flexible(
                    flex: 3,
                    child: CustomGeneralButton(text:AppStrings.signInBtnText1,
                      textColor: ColorManager.white,
                      btnColor: ColorManager.primary,
                      onTap: (){
                      print(controllerPhoneNumber.text);
                        BlocProvider.of<LoginBloc>(context).add(LoginMainEvent(dialCode: controllerDilocode.text.toString(), phoneNumber: controllerPhoneNumber.text.toString()));
                      },
                    ),
                  ),
                ],
              ),
              // SizedBox(height: 16.h,),
              16.verticalSpace,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextCustom(
                      text:AppStrings.signInText1,
                    textColor: ColorManager.lightGrey,
                  ),
                  // RSizedBox(width: 10.w,),
                  10.horizontalSpace,
                  GestureDetector(
                    // onTap: (){
                    //   Navigator.pushNamed(context, Routes.signUpRoute);
                    // },
                    child: TextCustom(
                      text:AppStrings.signInText2,
                      textColor: ColorManager.primary,
                    ),
                  )
                ],
              ),
              const Spacer()
            ],
          ),
        ),
      ],
    );
  }
}
