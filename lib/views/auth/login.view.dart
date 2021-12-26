import 'dart:async';

import 'package:cszeidre_app/conf/app_colors.dart';
import 'package:cszeidre_app/conf/app_icons.dart';
import 'package:cszeidre_app/views/home/home.view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  late StreamSubscription<bool> keyboardSubscription;

  bool showPass = false;
  bool keyBoardVisible = false;

  @override
  void initState() {
    super.initState();
    var keyboardVisibilityController = KeyboardVisibilityController();

    // Subscribe
    keyboardSubscription =
        keyboardVisibilityController.onChange.listen((bool visible) {
      setState(() {
        keyBoardVisible = visible;
      });
    });
  }

  @override
  void dispose() {
    keyboardSubscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double heithScreen = MediaQuery.of(context).size.height * 0.22;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            ListView(
              children: [
                SizedBox(
                  height: heithScreen,
                ),
                const Center(
                  child: Image(
                    image: AssetImage('assets/icons/cs-go-logo-laranja.png'),
                    width: 174,
                    height: 40,
                  ),
                ),
                Center(
                  child: RichText(
                    text: const TextSpan(
                      style: TextStyle(
                          fontSize: 64,
                          fontFamily: 'Quantico',
                          color: AppColors.primaryColor),
                      text: 'CS',
                      children: [
                        TextSpan(
                            text: 'zeidre',
                            style:
                                TextStyle(color: AppColors.colorTextPrincipal)),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 85,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Form(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: TextFormField(
                            // autofocus: true,
                            style: const TextStyle(
                              color: AppColors.colorTextInputsHints,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 1, horizontal: 8),
                              hintStyle: const TextStyle(
                                  fontSize: 16,
                                  color: AppColors.colorTextInputsHints),
                              hintText: 'Email',
                              fillColor: AppColors.backgroundInputColor,
                              filled: true,
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: TextFormField(
                            // autofocus: true,
                            style: const TextStyle(
                              color: AppColors.colorTextInputsHints,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                            obscureText: !showPass,
                            decoration: InputDecoration(
                              hintText: 'Senha',
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 1, horizontal: 8),
                              hintStyle: const TextStyle(
                                  fontSize: 16,
                                  color: AppColors.colorTextInputsHints),
                              fillColor: AppColors.backgroundInputColor,
                              filled: true,
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              suffixIcon: IconButton(
                                icon: ImageIcon(
                                  AssetImage(showPass
                                      ? AppIcons.iconEyeHide30
                                      : AppIcons.iconEye30),
                                  color: AppColors.colorTextInputsHints,
                                ),
                                onPressed: () {
                                  setState(() {
                                    showPass = !showPass;
                                  });
                                },
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: Row(
                            children: [
                              Expanded(
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (_) => HomeView()));
                                  },
                                  child: const Text(
                                    'ENTRAR',
                                    style: TextStyle(
                                        fontSize: 18, color: Color(0xFFFFFFFF)),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                      primary: AppColors.backgroundBtnColor,
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 10),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10))),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            if (!keyBoardVisible)
              const Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  'desenvolvido por LiopiGuys 2021',
                  style: TextStyle(
                    color: AppColors.colorTextInputsHints,
                    fontSize: 14,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
