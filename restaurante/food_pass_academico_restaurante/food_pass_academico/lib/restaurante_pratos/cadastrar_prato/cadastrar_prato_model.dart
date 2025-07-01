import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'cadastrar_prato_widget.dart' show CadastrarPratoWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CadastrarPratoModel extends FlutterFlowModel<CadastrarPratoWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for nomePrato widget.
  FocusNode? nomePratoFocusNode;
  TextEditingController? nomePratoTextController;
  String? Function(BuildContext, String?)? nomePratoTextControllerValidator;
  // State field(s) for ingredientesParto widget.
  FocusNode? ingredientesPartoFocusNode;
  TextEditingController? ingredientesPartoTextController;
  String? Function(BuildContext, String?)?
      ingredientesPartoTextControllerValidator;
  // State field(s) for precoPrato widget.
  FocusNode? precoPratoFocusNode;
  TextEditingController? precoPratoTextController;
  String? Function(BuildContext, String?)? precoPratoTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    nomePratoFocusNode?.dispose();
    nomePratoTextController?.dispose();

    ingredientesPartoFocusNode?.dispose();
    ingredientesPartoTextController?.dispose();

    precoPratoFocusNode?.dispose();
    precoPratoTextController?.dispose();
  }
}
