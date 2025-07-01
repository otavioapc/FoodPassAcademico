import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'login_funcionario_widget.dart' show LoginFuncionarioWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginFuncionarioModel extends FlutterFlowModel<LoginFuncionarioWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for emailFuncionario widget.
  FocusNode? emailFuncionarioFocusNode;
  TextEditingController? emailFuncionarioTextController;
  String? Function(BuildContext, String?)?
      emailFuncionarioTextControllerValidator;
  // State field(s) for senhaFuncionario widget.
  FocusNode? senhaFuncionarioFocusNode;
  TextEditingController? senhaFuncionarioTextController;
  late bool senhaFuncionarioVisibility;
  String? Function(BuildContext, String?)?
      senhaFuncionarioTextControllerValidator;

  @override
  void initState(BuildContext context) {
    senhaFuncionarioVisibility = false;
  }

  @override
  void dispose() {
    emailFuncionarioFocusNode?.dispose();
    emailFuncionarioTextController?.dispose();

    senhaFuncionarioFocusNode?.dispose();
    senhaFuncionarioTextController?.dispose();
  }
}
