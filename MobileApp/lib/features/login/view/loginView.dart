import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:mobile_app/features/login/viewModel/loginViewModel.dart';

import '../../../route/app_routes.dart';
import '../../../utils/button.dart';
import '../../../utils/myElevatedButton.dart';

class LoginView extends GetView<LoginViewModel> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Align(
                  alignment: const AlignmentDirectional(0, -1),
                  child: Container(
                      height: MediaQuery
                          .of(context)
                          .size
                          .height * 0.5,

                    child: const Center(
                      child: Image(
                        image: AssetImage("assets/images/login_icon.png"),
                        height: double.infinity,
                        width: double.infinity,
                      ),
                    ),
                  ),
              ),
              Align(
                  alignment: const AlignmentDirectional(-1, 0),
                  child: Container(
                      height: MediaQuery
                          .of(context)
                          .size
                          .height * 0.35,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          stops: [0.1, 0.5, 0.7, 0.9],
                          colors: [
                            Colors.black.withOpacity(0.0),
                            Colors.black.withOpacity(0.6),
                            Colors.black.withOpacity(0.8),
                            Colors.black.withOpacity(1.0),
                          ],
                        ),
                      )
                  )),
              Column(
                children: [
                  Expanded(
                      child:  Align(
                        alignment: const AlignmentDirectional(0, -1),
                        child: Container(
                          height: MediaQuery
                              .of(context)
                              .size
                              .height * 0.5,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              stops: [0.1, 0.5, 0.7, 0.9],
                              colors: [
                                Colors.black.withOpacity(0.1 ),
                                Colors.black.withOpacity(0.2),
                                Colors.black.withOpacity(0.3),
                                Colors.black.withOpacity(0.4),
                              ],
                            ),
                          ),
                          child: const Stack(
                            children: [
                              Align(
                                alignment: AlignmentDirectional(0, -1),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                                  child: Text(
                                      'Welcome To AlzApp',
                                      style: TextStyle(color: Colors.white)
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0, 1),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Align(
                                      alignment: AlignmentDirectional(0, 1),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            16, 0, 16, 4),
                                        child: Text(
                                            'Birlikte Güçlüyüz, Her Anı Yaşayalım',
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                                color: Colors.white, fontSize: 24)
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(0, 1),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 4, 50, 16),
                                        child: Text(
                                            'Gücümüzü Birlikte Unutulmaz Anlara Dönüştürelim',
                                            textAlign: TextAlign.start,
                                            style: TextStyle(color: Colors.white,
                                                fontWeight: FontWeight.w300)
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                  
                  ),
                  Expanded(child: Align(
                    alignment: const AlignmentDirectional(0, 1),
                    child: Container(
                      height: MediaQuery
                          .of(context)
                          .size
                          .height * 0.5,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16, 32, 16, 0),
                              child: MyElevatedButton(
                                width: double.infinity,
                                onPressed: () {},
                                borderRadius: BorderRadius.circular(20),
                                text: 'QR Kod ile Eşleştir',
                                icon: Icons.qr_code,
                                gradient: const LinearGradient(colors: [
                                  Colors.greenAccent,
                                  Colors.lightGreen
                                ]),
                              )
                          ),
                          Container(
                            padding: const EdgeInsets.only(
                                left: 16, top: 24, right: 16),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    height: 1,
                                    color: Colors.black,
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 16, right: 16),
                                  child: Text(
                                      "Or Login With"
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    height: 1,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 24),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                onPrimary: Colors.black,
                              ),
                              onPressed: () {},
                              child: const Padding(
                                padding: EdgeInsets.fromLTRB(0, 8, 0, 8),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(top: 4),
                                      child: Image(
                                        image: AssetImage(
                                            "assets/images/google_logo.png"),
                                        height: 24.0,
                                        width: 24.0,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 20, right: 20),
                                      child: Text(
                                        'Sign in with Google',
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.black45,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),)
                ],
              ),
              Align(
                alignment: AlignmentDirectional(0, 1),
                child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(16, 8, 16, 36),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Hesabınız yok mu?", style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w500)),
                        SizedBox(width: 16,),
                        InkWell(
                          onTap: () => {
                            Get.toNamed(AppRoutes.register)
                          },
                          child: const Text("Kayıt Ol!", style: TextStyle(color: Colors.green,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),),
                        )
                      ],
                    )
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}