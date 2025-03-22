import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'crear_notificacion_widget.dart' show CrearNotificacionWidget;
import 'package:flutter/material.dart';

class CrearNotificacionModel extends FlutterFlowModel<CrearNotificacionWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for titulo widget.
  FocusNode? tituloFocusNode;
  TextEditingController? tituloTextController;
  String? Function(BuildContext, String?)? tituloTextControllerValidator;
  // State field(s) for mensaje widget.
  FocusNode? mensajeFocusNode;
  TextEditingController? mensajeTextController;
  String? Function(BuildContext, String?)? mensajeTextControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for DropDown widget.
  List<String>? dropDownValue2;
  FormFieldController<List<String>>? dropDownValueController2;
  // State field(s) for guardarParaDespues widget.
  bool? guardarParaDespuesValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tituloFocusNode?.dispose();
    tituloTextController?.dispose();

    mensajeFocusNode?.dispose();
    mensajeTextController?.dispose();
  }
}
