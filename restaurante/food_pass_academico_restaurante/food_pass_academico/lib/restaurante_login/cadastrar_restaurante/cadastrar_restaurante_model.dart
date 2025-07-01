import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'cadastrar_restaurante_widget.dart' show CadastrarRestauranteWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CadastrarRestauranteModel
    extends FlutterFlowModel<CadastrarRestauranteWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for nomeRestaurante widget.
  FocusNode? nomeRestauranteFocusNode;
  TextEditingController? nomeRestauranteTextController;
  String? Function(BuildContext, String?)?
      nomeRestauranteTextControllerValidator;
  // State field(s) for cnpj widget.
  FocusNode? cnpjFocusNode;
  TextEditingController? cnpjTextController;
  String? Function(BuildContext, String?)? cnpjTextControllerValidator;
  // State field(s) for email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  // State field(s) for senha widget.
  FocusNode? senhaFocusNode;
  TextEditingController? senhaTextController;
  late bool senhaVisibility;
  String? Function(BuildContext, String?)? senhaTextControllerValidator;
  // State field(s) for senhaConfirmar widget.
  FocusNode? senhaConfirmarFocusNode;
  TextEditingController? senhaConfirmarTextController;
  late bool senhaConfirmarVisibility;
  String? Function(BuildContext, String?)?
      senhaConfirmarTextControllerValidator;

  @override
  void initState(BuildContext context) {
    senhaVisibility = false;
    senhaConfirmarVisibility = false;
  }

  @override
  void dispose() {
    nomeRestauranteFocusNode?.dispose();
    nomeRestauranteTextController?.dispose();

    cnpjFocusNode?.dispose();
    cnpjTextController?.dispose();

    emailFocusNode?.dispose();
    emailTextController?.dispose();

    senhaFocusNode?.dispose();
    senhaTextController?.dispose();

    senhaConfirmarFocusNode?.dispose();
    senhaConfirmarTextController?.dispose();
  }
}
