import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../../../utils/myElevatedButton.dart';
import '../viewModel/registerViewModel.dart';

class RegisterView extends GetView<RegisterViewModel> {
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
                          .height * 0.20,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          stops: [0.1, 0.5, 0.7, 0.9],
                          colors: [
                            Colors.black.withOpacity(1.0),
                            Colors.black.withOpacity(0.9),
                            Colors.black.withOpacity(0.8),
                            Colors.black.withOpacity(0.7),
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
                              .height * 0.2,
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
                                alignment: AlignmentDirectional(-1, -1),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(20, 16, 0, 0),
                                  child:Text(
                                      'Geri',
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 24)
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(1, 1),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Align(
                                      alignment: AlignmentDirectional(-1, 1),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20, 0, 16, 4),
                                        child: Text(
                                            'Kayıt ol',
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                                color: Colors.white, fontSize: 24)
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(-1, 1),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20, 8, 0, 16),
                                        child: Text(
                                            'Hesabınızı oluşturun',
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
                    ),
                  ),)
                ],
              ),
              const Align(
                alignment: AlignmentDirectional(0, 1),
                child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(16, 8, 16, 36),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Hesabınız var mı?", style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w500)),
                        SizedBox(width: 16,),
                        Text("Giriş yap", style: TextStyle(color: Colors.green,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),),
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