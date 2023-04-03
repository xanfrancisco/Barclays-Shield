import '/budgets/budgets_widget.dart';
import '/dopamine/dopamine_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/home/home_widget.dart';
import '/save_my_savings/save_my_savings_widget.dart';
import '/shoppinglist/shoppinglist_widget.dart';
import '/the_vault/the_vault_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'barclays_shield_model.dart';
export 'barclays_shield_model.dart';

class BarclaysShieldWidget extends StatefulWidget {
  const BarclaysShieldWidget({Key? key}) : super(key: key);

  @override
  _BarclaysShieldWidgetState createState() => _BarclaysShieldWidgetState();
}

class _BarclaysShieldWidgetState extends State<BarclaysShieldWidget> {
  late BarclaysShieldModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BarclaysShieldModel());
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
        child: Stack(
          children: [
            Align(
              alignment: AlignmentDirectional(0.0, 0.0),
              child: Image.asset(
                'assets/images/Prototype_Barclays_Shield.jpg',
                width: 433.0,
                height: 855.0,
                fit: BoxFit.cover,
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.74, -0.3),
              child: Switch(
                value: _model.switchValue1 ??= true,
                onChanged: (newValue) async {
                  setState(() => _model.switchValue1 = newValue!);
                },
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.74, -0.13),
              child: Switch(
                value: _model.switchValue2 ??= true,
                onChanged: (newValue) async {
                  setState(() => _model.switchValue2 = newValue!);
                },
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.75, 0.38),
              child: Switch(
                value: _model.switchValue3 ??= true,
                onChanged: (newValue) async {
                  setState(() => _model.switchValue3 = newValue!);
                },
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.75, 0.05),
              child: Switch(
                value: _model.switchValue4 ??= true,
                onChanged: (newValue) async {
                  setState(() => _model.switchValue4 = newValue!);
                },
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.76, 0.22),
              child: Switch(
                value: _model.switchValue5 ??= true,
                onChanged: (newValue) async {
                  setState(() => _model.switchValue5 = newValue!);
                },
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.52, -0.29),
              child: FFButtonWidget(
                onPressed: () async {
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SaveMySavingsWidget(),
                    ),
                  );
                },
                text: '',
                options: FFButtonOptions(
                  width: 200.0,
                  height: 55.4,
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: Colors.transparent,
                  textStyle: TextStyle(
                    color: Colors.white,
                  ),
                  elevation: 0.0,
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.57, -0.12),
              child: FFButtonWidget(
                onPressed: () async {
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BudgetsWidget(),
                    ),
                  );
                },
                text: '',
                options: FFButtonOptions(
                  width: 200.0,
                  height: 55.4,
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: Colors.transparent,
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Poppins',
                        color: Colors.white,
                      ),
                  elevation: 0.0,
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.49, 0.06),
              child: FFButtonWidget(
                onPressed: () async {
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TheVaultWidget(),
                    ),
                  );
                },
                text: '',
                options: FFButtonOptions(
                  width: 200.0,
                  height: 55.4,
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: Colors.transparent,
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Poppins',
                        color: Colors.white,
                      ),
                  elevation: 0.0,
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.48, 0.23),
              child: FFButtonWidget(
                onPressed: () async {
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ShoppinglistWidget(),
                    ),
                  );
                },
                text: '',
                options: FFButtonOptions(
                  width: 200.0,
                  height: 55.4,
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: Colors.transparent,
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Poppins',
                        color: Colors.white,
                      ),
                  elevation: 0.0,
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.62, 0.39),
              child: FFButtonWidget(
                onPressed: () async {
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DopamineWidget(),
                    ),
                  );
                },
                text: '',
                options: FFButtonOptions(
                  width: 200.0,
                  height: 55.4,
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: Colors.transparent,
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Poppins',
                        color: Colors.white,
                      ),
                  elevation: 0.0,
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.82, -0.61),
              child: InkWell(
                onTap: () async {
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeWidget(),
                    ),
                  );
                },
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Color(0xFF3999EF),
                  size: 24.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
