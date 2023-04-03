import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'save_my_savings_model.dart';
export 'save_my_savings_model.dart';

class SaveMySavingsWidget extends StatefulWidget {
  const SaveMySavingsWidget({Key? key}) : super(key: key);

  @override
  _SaveMySavingsWidgetState createState() => _SaveMySavingsWidgetState();
}

class _SaveMySavingsWidgetState extends State<SaveMySavingsWidget> {
  late SaveMySavingsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SaveMySavingsModel());
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
                'assets/images/Prototype_Save_my_savings.jpg',
                width: 405.9,
                height: 869.8,
                fit: BoxFit.cover,
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.65, 0.16),
              child: Switch(
                value: _model.switchValue1 ??= true,
                onChanged: (newValue) async {
                  setState(() => _model.switchValue1 = newValue!);
                },
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.66, 0.01),
              child: Switch(
                value: _model.switchValue2 ??= true,
                onChanged: (newValue) async {
                  setState(() => _model.switchValue2 = newValue!);
                },
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.81, -0.61),
              child: InkWell(
                onTap: () async {
                  Navigator.pop(context);
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
