import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'cadastro_funcionario_widget.dart' show CadastroFuncionarioWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CadastroFuncionarioModel
    extends FlutterFlowModel<CadastroFuncionarioWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for cpf widget.
  FocusNode? cpfFocusNode;
  TextEditingController? cpfTextController;
  String? Function(BuildContext, String?)? cpfTextControllerValidator;
  // State field(s) for nome widget.
  FocusNode? nomeFocusNode;
  TextEditingController? nomeTextController;
  String? Function(BuildContext, String?)? nomeTextControllerValidator;
  // State field(s) for email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  // State field(s) for senhaFuncionario widget.
  FocusNode? senhaFuncionarioFocusNode;
  TextEditingController? senhaFuncionarioTextController;
  late bool senhaFuncionarioVisibility;
  String? Function(BuildContext, String?)?
      senhaFuncionarioTextControllerValidator;
  // State field(s) for senhaFuncionarioConfirmar widget.
  FocusNode? senhaFuncionarioConfirmarFocusNode;
  TextEditingController? senhaFuncionarioConfirmarTextController;
  late bool senhaFuncionarioConfirmarVisibility;
  String? Function(BuildContext, String?)?
      senhaFuncionarioConfirmarTextControllerValidator;

  @override
  void initState(BuildContext context) {
    senhaFuncionarioVisibility = false;
    senhaFuncionarioConfirmarVisibility = false;
  }

  @override
  void dispose() {
    cpfFocusNode?.dispose();
    cpfTextController?.dispose();

    nomeFocusNode?.dispose();
    nomeTextController?.dispose();

    emailFocusNode?.dispose();
    emailTextController?.dispose();

    senhaFuncionarioFocusNode?.dispose();
    senhaFuncionarioTextController?.dispose();

    senhaFuncionarioConfirmarFocusNode?.dispose();
    senhaFuncionarioConfirmarTextController?.dispose();
  }
}
