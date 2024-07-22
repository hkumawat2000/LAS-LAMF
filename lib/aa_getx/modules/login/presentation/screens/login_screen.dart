import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:lms/aa_getx/core/constants/colors.dart';
import 'package:lms/aa_getx/core/constants/strings.dart';
import 'package:lms/aa_getx/core/utils/style.dart';
import 'package:lms/aa_getx/core/utils/utility.dart';
import 'package:lms/aa_getx/modules/login/presentation/controllers/login_controller.dart';
import 'package:lms/widgets/WidgetCommon.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: colorBg,
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 75,
                ),
                AppIcon(),
                SizedBox(
                  height: 34,
                ),
                headingText(Strings.registration),
                SizedBox(
                  height: 120,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Theme(
                    data: theme.copyWith(primaryColor: appTheme),
                    child: TextField(
                      obscureText: false,
                      autofocus: false,
                      cursorColor: appTheme,
                      maxLength: 10,
                      focusNode: controller.mobileTextfiledFocus,
                      keyboardType: TextInputType.number,
                      controller: controller.mobileNumberController,
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp('[0-9]')),
                      ],
                      style: textFiledInputStyle,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: appTheme),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: appTheme),
                        ),
                        errorBorder: new OutlineInputBorder(
                          borderSide:
                              new BorderSide(color: Colors.red, width: 0.0),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4)),
                          borderSide: BorderSide(width: 1, color: Colors.red),
                        ),
                        counterText: "",
                        hintText: Strings.mobile,
                        labelText: Strings.mobile,
                        hintStyle: TextStyle(color: colorGrey),
                        labelStyle: TextStyle(color: appTheme),
                        focusColor: Colors.grey,
                      ),
                      onChanged: (text) {
                        controller.onMobileNumberValueChanged();
                        // if (text.length == 10) {
                        //   FocusScope.of(context).requestFocus(FocusNode());
                        //   Utility.isNetworkConnection().then((isNetwork) async {
                        //     if (isNetwork) {
                        //       controller.login();
                        //     } else {
                        //       Utility.showToastMessage(
                        //           Strings.no_internet_message);
                        //     }
                        //   });
                        // }
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      Obx(
                      ()=> Checkbox(
                            value: controller.checkBoxValue.value,
                            activeColor: appTheme,
                            onChanged: (bool? newValue) {
                              controller.onCheckBoxValueChanged();
                            }),
                      ),
                      Expanded(
                        child: RichText(
                          text: TextSpan(
                            text: 'I agree to accept ',
                            style: mediumTextStyle_14_gray,
                            children: [
                              TextSpan(
                                text: 'Terms & Conditions',
                                style: boldTextStyle_14,
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Utility.isNetworkConnection()
                                        .then((isNetwork) {
                                      if (isNetwork) {
                                        controller
                                            .navigateToTermsAndConditionWebview(
                                                false);
                                      } else {
                                        Utility.showToastMessage(
                                            Strings.no_internet_message);
                                      }
                                    });
                                  },
                              ),
                              TextSpan(
                                text: ' and ',
                                style: mediumTextStyle_14_gray,
                              ),
                              TextSpan(
                                text: 'Privacy Policy',
                                style: boldTextStyle_14,
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Utility.isNetworkConnection()
                                        .then((isNetwork) {
                                      if (isNetwork) {
                                        controller
                                            .navigateToTermsAndConditionWebview(
                                                true);
                                      } else {
                                        Utility.showToastMessage(
                                            Strings.no_internet_message);
                                      }
                                    });
                                  },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 112,
                ),
                Container(
                  height: 45,
                  width: 100,
                  child: Material(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(35)),
                    elevation: 1.0,
                    color: appTheme,
                    child: MaterialButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(35)),
                      minWidth: MediaQuery.of(context).size.width,
                      onPressed: () async {
                        Utility.isNetworkConnection().then((isNetwork) async {
                          if (isNetwork) {
                            controller.login();
                          } else {
                            Utility.showToastMessage(
                                Strings.no_internet_message);
                          }
                        });
                      },
                      child: ArrowForwardNavigation(),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Obx(()=> version(),),
                SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget version() {
    return Center(
      child: Text(
          'Version ${controller.versionName.isNotEmpty ? controller.versionName : ""}'),
    );
  }
}
