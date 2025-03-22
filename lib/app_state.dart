import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  String _cursoSeleccionado = '';
  String get cursoSeleccionado => _cursoSeleccionado;
  set cursoSeleccionado(String value) {
    _cursoSeleccionado = value;
  }

  List<String> _cursosMatriculados = [];
  List<String> get cursosMatriculados => _cursosMatriculados;
  set cursosMatriculados(List<String> value) {
    _cursosMatriculados = value;
  }

  void addToCursosMatriculados(String value) {
    cursosMatriculados.add(value);
  }

  void removeFromCursosMatriculados(String value) {
    cursosMatriculados.remove(value);
  }

  void removeAtIndexFromCursosMatriculados(int index) {
    cursosMatriculados.removeAt(index);
  }

  void updateCursosMatriculadosAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    cursosMatriculados[index] = updateFn(_cursosMatriculados[index]);
  }

  void insertAtIndexInCursosMatriculados(int index, String value) {
    cursosMatriculados.insert(index, value);
  }
}
