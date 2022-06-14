import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../regis/regis_widget.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  TextEditingController apellidoController;
  TextEditingController contrasenaController;
  bool contrasenaVisibility;
  TextEditingController confcontrasenaController;
  bool confcontrasenaVisibility;
  TextEditingController correoController;
  TextEditingController textController3;
  TextEditingController textController4;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    apellidoController = TextEditingController();
    contrasenaController = TextEditingController();
    contrasenaVisibility = false;
    confcontrasenaController = TextEditingController();
    confcontrasenaVisibility = false;
    correoController = TextEditingController();
    textController3 = TextEditingController();
    textController4 = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFF456B8A),
        automaticallyImplyLeading: false,
        title: Align(
          alignment: AlignmentDirectional(0, 1),
          child: Text(
            'Base  de Datos FlutLab',
            textAlign: TextAlign.center,
            style: FlutterFlowTheme.of(context).title2.override(
                  fontFamily: 'Poppins',
                  color: Colors.white,
                  fontSize: 22,
                ),
          ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 2,
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                child: TextFormField(
                  controller: apellidoController,
                  onChanged: (_) => EasyDebounce.debounce(
                    'apellidoController',
                    Duration(milliseconds: 2000),
                    () => setState(() {}),
                  ),
                  autofocus: true,
                  obscureText: false,
                  decoration: InputDecoration(
                    labelText: 'Apellido:',
                    hintText: 'Apellido:',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFDBE2E7),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFDBE2E7),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    contentPadding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                  ),
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        color: Color(0xFF101213),
                        fontWeight: FontWeight.normal,
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                child: TextFormField(
                  controller: contrasenaController,
                  onChanged: (_) => EasyDebounce.debounce(
                    'contrasenaController',
                    Duration(milliseconds: 2000),
                    () => setState(() {}),
                  ),
                  autofocus: true,
                  obscureText: !contrasenaVisibility,
                  decoration: InputDecoration(
                    labelText: 'Contraseña:',
                    hintText: 'Contraseña:',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFDBE2E7),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFDBE2E7),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    contentPadding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                    suffixIcon: InkWell(
                      onTap: () => setState(
                        () => contrasenaVisibility = !contrasenaVisibility,
                      ),
                      focusNode: FocusNode(skipTraversal: true),
                      child: Icon(
                        contrasenaVisibility ? Icons.visibility_outlined : Icons.visibility_off_outlined,
                        color: Color(0xFF757575),
                        size: 22,
                      ),
                    ),
                  ),
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.normal,
                      ),
                  keyboardType: TextInputType.visiblePassword,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                child: TextFormField(
                  controller: confcontrasenaController,
                  onChanged: (_) => EasyDebounce.debounce(
                    'confcontrasenaController',
                    Duration(milliseconds: 2000),
                    () => setState(() {}),
                  ),
                  autofocus: true,
                  obscureText: !confcontrasenaVisibility,
                  decoration: InputDecoration(
                    labelText: 'Confirmar Contraseña:',
                    hintText: 'Confirmar Contraseña:',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFDBE2E7),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFDBE2E7),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    contentPadding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                    suffixIcon: InkWell(
                      onTap: () => setState(
                        () => confcontrasenaVisibility = !confcontrasenaVisibility,
                      ),
                      focusNode: FocusNode(skipTraversal: true),
                      child: Icon(
                        confcontrasenaVisibility ? Icons.visibility_outlined : Icons.visibility_off_outlined,
                        color: Color(0xFF757575),
                        size: 22,
                      ),
                    ),
                  ),
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.normal,
                      ),
                  keyboardType: TextInputType.visiblePassword,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                child: TextFormField(
                  controller: correoController,
                  onChanged: (_) => EasyDebounce.debounce(
                    'correoController',
                    Duration(milliseconds: 2000),
                    () => setState(() {}),
                  ),
                  autofocus: true,
                  obscureText: false,
                  decoration: InputDecoration(
                    labelText: 'Email:',
                    hintText: 'Email:',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFDBE2E7),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFDBE2E7),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    contentPadding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                  ),
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.normal,
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                child: TextFormField(
                  controller: textController3,
                  onChanged: (_) => EasyDebounce.debounce(
                    'textController3',
                    Duration(milliseconds: 2000),
                    () => setState(() {}),
                  ),
                  autofocus: true,
                  obscureText: false,
                  decoration: InputDecoration(
                    labelText: 'Nombre:',
                    hintText: 'Nombre:',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFDBE2E7),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFDBE2E7),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    contentPadding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                  ),
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.normal,
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                child: TextFormField(
                  controller: textController4,
                  onChanged: (_) => EasyDebounce.debounce(
                    'textController4',
                    Duration(milliseconds: 2000),
                    () => setState(() {}),
                  ),
                  autofocus: true,
                  obscureText: false,
                  decoration: InputDecoration(
                    labelText: 'Telefono:',
                    hintText: 'Telefono:',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFDBE2E7),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFDBE2E7),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    contentPadding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                  ),
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.normal,
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 25, 0, 0),
                child: FFButtonWidget(
                  onPressed: () async {
                    if (contrasenaController?.text != confcontrasenaController?.text) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            'Passwords don\'t match!',
                          ),
                        ),
                      );
                      return;
                    }

                    final user = await createAccountWithEmail(
                      context,
                      correoController.text,
                      contrasenaController.text,
                    );
                    if (user == null) {
                      return;
                    }

                    await sendEmailVerification();
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RegisWidget(),
                      ),
                    );
                  },
                  text: 'Registrar',
                  options: FFButtonOptions(
                    width: 130,
                    height: 40,
                    color: Color(0xFF456B8A),
                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Poppins',
                          color: Colors.white,
                        ),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: 12,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
