import '/barclays_shield/barclays_shield_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'shoppinglist_model.dart';
export 'shoppinglist_model.dart';

class ShoppinglistWidget extends StatefulWidget {
  const ShoppinglistWidget({Key? key}) : super(key: key);

  @override
  _ShoppinglistWidgetState createState() => _ShoppinglistWidgetState();
}

class _ShoppinglistWidgetState extends State<ShoppinglistWidget> {
  late ShoppinglistModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ShoppinglistModel());
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
            Image.asset(
              'assets/images/Prototype_Shopping_list.jpg',
              width: 405.0,
              height: 854.1,
              fit: BoxFit.cover,
            ),
            Align(
              alignment: AlignmentDirectional(-0.82, -0.61),
              child: InkWell(
                onTap: () async {
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BarclaysShieldWidget(),
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
