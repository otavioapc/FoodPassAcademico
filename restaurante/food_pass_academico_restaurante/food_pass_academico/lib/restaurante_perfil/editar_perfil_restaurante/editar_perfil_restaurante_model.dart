import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'editar_perfil_restaurante_widget.dart'
    show EditarPerfilRestauranteWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditarPerfilRestauranteModel
    extends FlutterFlowModel<EditarPerfilRestauranteWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for localizacao widget.
  FocusNode? localizacaoFocusNode;
  TextEditingController? localizacaoTextController;
  String? Function(BuildContext, String?)? localizacaoTextControllerValidator;
  // State field(s) for horarioAberto widget.
  FocusNode? horarioAbertoFocusNode;
  TextEditingController? horarioAbertoTextController;
  String? Function(BuildContext, String?)? horarioAbertoTextControllerValidator;
  // State field(s) for novaSenha widget.
  FocusNode? novaSenhaFocusNode;
  TextEditingController? novaSenhaTextController;
  late bool novaSenhaVisibility;
  String? Function(BuildContext, String?)? novaSenhaTextControllerValidator;
  // State field(s) for confirmarNovaSenha widget.
  FocusNode? confirmarNovaSenhaFocusNode;
  TextEditingController? confirmarNovaSenhaTextController;
  late bool confirmarNovaSenhaVisibility;
  String? Function(BuildContext, String?)?
      confirmarNovaSenhaTextControllerValidator;

  @override
  void initState(BuildContext context) {
    novaSenhaVisibility = false;
    confirmarNovaSenhaVisibility = false;
  }

  @override
  void dispose() {
    localizacaoFocusNode?.dispose();
    localizacaoTextController?.dispose();

    horarioAbertoFocusNode?.dispose();
    horarioAbertoTextController?.dispose();

    novaSenhaFocusNode?.dispose();
    novaSenhaTextController?.dispose();

    confirmarNovaSenhaFocusNode?.dispose();
    confirmarNovaSenhaTextController?.dispose();
  }
}
