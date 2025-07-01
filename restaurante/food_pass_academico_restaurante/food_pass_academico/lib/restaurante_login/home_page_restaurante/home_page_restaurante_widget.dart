import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'home_page_restaurante_model.dart';
export 'home_page_restaurante_model.dart';

class HomePageRestauranteWidget extends StatefulWidget {
  const HomePageRestauranteWidget({super.key});

  static String routeName = 'HomePageRestaurante';
  static String routePath = '/homePageRestaurante';

  @override
  State<HomePageRestauranteWidget> createState() =>
      _HomePageRestauranteWidgetState();
}

class _HomePageRestauranteWidgetState extends State<HomePageRestauranteWidget> {
  late HomePageRestauranteModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageRestauranteModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFFFFCDD2),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                child: Container(
                  width: 350.0,
                  height: 120.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 4.0,
                        color: Color(0x86000000),
                        offset: Offset(
                          0.0,
                          2.0,
                        ),
                      )
                    ],
                    borderRadius: BorderRadius.circular(8.0),
                    border: Border.all(
                      color: Color(0xEF000000),
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Flexible(
                        child: StreamBuilder<List<UsersRestauranteRecord>>(
                          stream: queryUsersRestauranteRecord(
                            queryBuilder: (usersRestauranteRecord) =>
                                usersRestauranteRecord.where(
                              'restauranteID',
                              isEqualTo: currentUserUid,
                            ),
                            singleRecord: true,
                          ),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return Center(
                                child: SizedBox(
                                  width: 50.0,
                                  height: 50.0,
                                  child: CircularProgressIndicator(
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                      FlutterFlowTheme.of(context).primary,
                                    ),
                                  ),
                                ),
                              );
                            }
                            List<UsersRestauranteRecord>
                                informacaoRestauranteUsersRestauranteRecordList =
                                snapshot.data!;
                            // Return an empty Container when the item does not exist.
                            if (snapshot.data!.isEmpty) {
                              return Container();
                            }
                            final informacaoRestauranteUsersRestauranteRecord =
                                informacaoRestauranteUsersRestauranteRecordList
                                        .isNotEmpty
                                    ? informacaoRestauranteUsersRestauranteRecordList
                                        .first
                                    : null;

                            return InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.pushNamed(
                                  InfoRestauranteWidget.routeName,
                                  queryParameters: {
                                    'pEndereco': serializeParam(
                                      informacaoRestauranteUsersRestauranteRecord
                                          ?.endereco,
                                      ParamType.String,
                                    ),
                                    'pHorarioAtendimento': serializeParam(
                                      informacaoRestauranteUsersRestauranteRecord
                                          ?.horarioAtendimento,
                                      ParamType.String,
                                    ),
                                  }.withoutNulls,
                                );
                              },
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.asset(
                                  'assets/images/IconRed.png',
                                  width: 80.0,
                                  height: double.infinity,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      StreamBuilder<List<UsersRestauranteRecord>>(
                        stream: queryUsersRestauranteRecord(
                          queryBuilder: (usersRestauranteRecord) =>
                              usersRestauranteRecord.where(
                            'restauranteID',
                            isEqualTo: currentUserUid,
                          ),
                          singleRecord: true,
                        ),
                        builder: (context, snapshot) {
                          // Customize what your widget looks like when it's loading.
                          if (!snapshot.hasData) {
                            return Center(
                              child: SizedBox(
                                width: 50.0,
                                height: 50.0,
                                child: CircularProgressIndicator(
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                    FlutterFlowTheme.of(context).primary,
                                  ),
                                ),
                              ),
                            );
                          }
                          List<UsersRestauranteRecord>
                              columnUsersRestauranteRecordList = snapshot.data!;
                          // Return an empty Container when the item does not exist.
                          if (snapshot.data!.isEmpty) {
                            return Container();
                          }
                          final columnUsersRestauranteRecord =
                              columnUsersRestauranteRecordList.isNotEmpty
                                  ? columnUsersRestauranteRecordList.first
                                  : null;

                          return Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                valueOrDefault<String>(
                                  columnUsersRestauranteRecord?.nome,
                                  'Nome Restaurante',
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .override(
                                      font: GoogleFonts.openSans(
                                        fontWeight: FontWeight.w600,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyLarge
                                            .fontStyle,
                                      ),
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .fontStyle,
                                    ),
                              ),
                            ],
                          );
                        },
                      ),
                      FlutterFlowIconButton(
                        borderColor:
                            FlutterFlowTheme.of(context).secondaryBackground,
                        borderRadius: 8.0,
                        buttonSize: 50.0,
                        fillColor:
                            FlutterFlowTheme.of(context).secondaryBackground,
                        icon: Icon(
                          Icons.logout_sharp,
                          color: Color(0xFFD32F2F),
                          size: 24.0,
                        ),
                        onPressed: () async {
                          GoRouter.of(context).prepareAuthEvent();
                          await authManager.signOut();
                          GoRouter.of(context).clearRedirectLocation();

                          context.goNamedAuth(LoginRestauranteWidget.routeName,
                              context.mounted);
                        },
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 50.0),
                child: Text(
                  'BEM VINDO AO FOODPASS',
                  style: FlutterFlowTheme.of(context).bodyLarge.override(
                        font: GoogleFonts.inter(
                          fontWeight: FontWeight.bold,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyLarge.fontStyle,
                        ),
                        color: Color(0xFF961515),
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.bold,
                        fontStyle:
                            FlutterFlowTheme.of(context).bodyLarge.fontStyle,
                      ),
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 150.0,
                    height: 150.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 4.0,
                          color: Color(0x8D000000),
                          offset: Offset(
                            0.0,
                            2.0,
                          ),
                        )
                      ],
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10.0),
                        bottomRight: Radius.circular(10.0),
                        topLeft: Radius.circular(10.0),
                        topRight: Radius.circular(10.0),
                      ),
                      border: Border.all(
                        color: Colors.red,
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FlutterFlowIconButton(
                          borderRadius: 8.0,
                          buttonSize: 88.8,
                          fillColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          icon: Icon(
                            Icons.fastfood_outlined,
                            color: Color(0xFFD32F2F),
                            size: 60.0,
                          ),
                          onPressed: () async {
                            context.pushNamed(CadastrarPratoWidget.routeName);
                          },
                        ),
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed(CadastrarPratoWidget.routeName);
                          },
                          child: Text(
                            'Cadastrar Prato',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  font: GoogleFonts.inter(
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 150.0,
                    height: 150.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 4.0,
                          color: Color(0xAF000000),
                          offset: Offset(
                            0.0,
                            2.0,
                          ),
                        )
                      ],
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10.0),
                        bottomRight: Radius.circular(10.0),
                        topLeft: Radius.circular(10.0),
                        topRight: Radius.circular(10.0),
                      ),
                      border: Border.all(
                        color: Colors.red,
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FlutterFlowIconButton(
                          borderRadius: 8.0,
                          buttonSize: 88.8,
                          fillColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          icon: Icon(
                            Icons.list_alt_sharp,
                            color: Color(0xFFD32F2F),
                            size: 60.0,
                          ),
                          onPressed: () async {
                            context.pushNamed(ListarPratosWidget.routeName);
                          },
                        ),
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed(ListarPratosWidget.routeName);
                          },
                          child: Text(
                            'Listar Pratos',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  font: GoogleFonts.inter(
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 150.0,
                      height: 150.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 4.0,
                            color: Color(0x8D000000),
                            offset: Offset(
                              0.0,
                              2.0,
                            ),
                          )
                        ],
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10.0),
                          bottomRight: Radius.circular(10.0),
                          topLeft: Radius.circular(10.0),
                          topRight: Radius.circular(10.0),
                        ),
                        border: Border.all(
                          color: Colors.red,
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          StreamBuilder<List<UsersRestauranteRecord>>(
                            stream: queryUsersRestauranteRecord(
                              singleRecord: true,
                            ),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Center(
                                  child: SizedBox(
                                    width: 50.0,
                                    height: 50.0,
                                    child: CircularProgressIndicator(
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                        FlutterFlowTheme.of(context).primary,
                                      ),
                                    ),
                                  ),
                                );
                              }
                              List<UsersRestauranteRecord>
                                  iconButtonUsersRestauranteRecordList =
                                  snapshot.data!;
                              // Return an empty Container when the item does not exist.
                              if (snapshot.data!.isEmpty) {
                                return Container();
                              }
                              final iconButtonUsersRestauranteRecord =
                                  iconButtonUsersRestauranteRecordList
                                          .isNotEmpty
                                      ? iconButtonUsersRestauranteRecordList
                                          .first
                                      : null;

                              return FlutterFlowIconButton(
                                borderRadius: 8.0,
                                buttonSize: 88.8,
                                fillColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                icon: FaIcon(
                                  FontAwesomeIcons.userEdit,
                                  color: Color(0xFFD32F2F),
                                  size: 60.0,
                                ),
                                onPressed: () async {
                                  context.pushNamed(
                                    EditarPerfilRestauranteWidget.routeName,
                                    queryParameters: {
                                      'pAtualizarLocalizacao': serializeParam(
                                        iconButtonUsersRestauranteRecord
                                            ?.endereco,
                                        ParamType.String,
                                      ),
                                      'pAtualizarHorario': serializeParam(
                                        iconButtonUsersRestauranteRecord
                                            ?.horarioAtendimento,
                                        ParamType.String,
                                      ),
                                      'documentoRestaurante': serializeParam(
                                        iconButtonUsersRestauranteRecord
                                            ?.reference,
                                        ParamType.DocumentReference,
                                      ),
                                    }.withoutNulls,
                                  );
                                },
                              );
                            },
                          ),
                          Text(
                            'Editar Perfil',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  font: GoogleFonts.inter(
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
