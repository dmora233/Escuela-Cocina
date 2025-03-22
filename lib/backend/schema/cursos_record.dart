import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CursosRecord extends FirestoreRecord {
  CursosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  bool hasDescripcion() => _descripcion != null;

  // "imagenCurso" field.
  String? _imagenCurso;
  String get imagenCurso => _imagenCurso ?? '';
  bool hasImagenCurso() => _imagenCurso != null;

  // "precio" field.
  double? _precio;
  double get precio => _precio ?? 0.0;
  bool hasPrecio() => _precio != null;

  // "capacidadMaxima" field.
  int? _capacidadMaxima;
  int get capacidadMaxima => _capacidadMaxima ?? 0;
  bool hasCapacidadMaxima() => _capacidadMaxima != null;

  // "disponible" field.
  bool? _disponible;
  bool get disponible => _disponible ?? false;
  bool hasDisponible() => _disponible != null;

  // "fechaInicio" field.
  DateTime? _fechaInicio;
  DateTime? get fechaInicio => _fechaInicio;
  bool hasFechaInicio() => _fechaInicio != null;

  // "fechafin" field.
  DateTime? _fechafin;
  DateTime? get fechafin => _fechafin;
  bool hasFechafin() => _fechafin != null;

  // "dias" field.
  List<String>? _dias;
  List<String> get dias => _dias ?? const [];
  bool hasDias() => _dias != null;

  // "horaInicio" field.
  String? _horaInicio;
  String get horaInicio => _horaInicio ?? '';
  bool hasHoraInicio() => _horaInicio != null;

  // "horaFin" field.
  String? _horaFin;
  String get horaFin => _horaFin ?? '';
  bool hasHoraFin() => _horaFin != null;

  // "cursoID" field.
  String? _cursoID;
  String get cursoID => _cursoID ?? '';
  bool hasCursoID() => _cursoID != null;

  void _initializeFields() {
    _nombre = snapshotData['nombre'] as String?;
    _descripcion = snapshotData['descripcion'] as String?;
    _imagenCurso = snapshotData['imagenCurso'] as String?;
    _precio = castToType<double>(snapshotData['precio']);
    _capacidadMaxima = castToType<int>(snapshotData['capacidadMaxima']);
    _disponible = snapshotData['disponible'] as bool?;
    _fechaInicio = snapshotData['fechaInicio'] as DateTime?;
    _fechafin = snapshotData['fechafin'] as DateTime?;
    _dias = getDataList(snapshotData['dias']);
    _horaInicio = snapshotData['horaInicio'] as String?;
    _horaFin = snapshotData['horaFin'] as String?;
    _cursoID = snapshotData['cursoID'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('cursos');

  static Stream<CursosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CursosRecord.fromSnapshot(s));

  static Future<CursosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CursosRecord.fromSnapshot(s));

  static CursosRecord fromSnapshot(DocumentSnapshot snapshot) => CursosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CursosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CursosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CursosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CursosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCursosRecordData({
  String? nombre,
  String? descripcion,
  String? imagenCurso,
  double? precio,
  int? capacidadMaxima,
  bool? disponible,
  DateTime? fechaInicio,
  DateTime? fechafin,
  String? horaInicio,
  String? horaFin,
  String? cursoID,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombre': nombre,
      'descripcion': descripcion,
      'imagenCurso': imagenCurso,
      'precio': precio,
      'capacidadMaxima': capacidadMaxima,
      'disponible': disponible,
      'fechaInicio': fechaInicio,
      'fechafin': fechafin,
      'horaInicio': horaInicio,
      'horaFin': horaFin,
      'cursoID': cursoID,
    }.withoutNulls,
  );

  return firestoreData;
}

class CursosRecordDocumentEquality implements Equality<CursosRecord> {
  const CursosRecordDocumentEquality();

  @override
  bool equals(CursosRecord? e1, CursosRecord? e2) {
    const listEquality = ListEquality();
    return e1?.nombre == e2?.nombre &&
        e1?.descripcion == e2?.descripcion &&
        e1?.imagenCurso == e2?.imagenCurso &&
        e1?.precio == e2?.precio &&
        e1?.capacidadMaxima == e2?.capacidadMaxima &&
        e1?.disponible == e2?.disponible &&
        e1?.fechaInicio == e2?.fechaInicio &&
        e1?.fechafin == e2?.fechafin &&
        listEquality.equals(e1?.dias, e2?.dias) &&
        e1?.horaInicio == e2?.horaInicio &&
        e1?.horaFin == e2?.horaFin &&
        e1?.cursoID == e2?.cursoID;
  }

  @override
  int hash(CursosRecord? e) => const ListEquality().hash([
        e?.nombre,
        e?.descripcion,
        e?.imagenCurso,
        e?.precio,
        e?.capacidadMaxima,
        e?.disponible,
        e?.fechaInicio,
        e?.fechafin,
        e?.dias,
        e?.horaInicio,
        e?.horaFin,
        e?.cursoID
      ]);

  @override
  bool isValidKey(Object? o) => o is CursosRecord;
}
