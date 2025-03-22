import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NotificacionesRecord extends FirestoreRecord {
  NotificacionesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "titulo" field.
  String? _titulo;
  String get titulo => _titulo ?? '';
  bool hasTitulo() => _titulo != null;

  // "mensaje" field.
  String? _mensaje;
  String get mensaje => _mensaje ?? '';
  bool hasMensaje() => _mensaje != null;

  // "cursoId" field.
  String? _cursoId;
  String get cursoId => _cursoId ?? '';
  bool hasCursoId() => _cursoId != null;

  // "fecha" field.
  DateTime? _fecha;
  DateTime? get fecha => _fecha;
  bool hasFecha() => _fecha != null;

  // "estado" field.
  String? _estado;
  String get estado => _estado ?? '';
  bool hasEstado() => _estado != null;

  // "destinatarios" field.
  List<String>? _destinatarios;
  List<String> get destinatarios => _destinatarios ?? const [];
  bool hasDestinatarios() => _destinatarios != null;

  void _initializeFields() {
    _titulo = snapshotData['titulo'] as String?;
    _mensaje = snapshotData['mensaje'] as String?;
    _cursoId = snapshotData['cursoId'] as String?;
    _fecha = snapshotData['fecha'] as DateTime?;
    _estado = snapshotData['estado'] as String?;
    _destinatarios = getDataList(snapshotData['destinatarios']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('notificaciones');

  static Stream<NotificacionesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => NotificacionesRecord.fromSnapshot(s));

  static Future<NotificacionesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => NotificacionesRecord.fromSnapshot(s));

  static NotificacionesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      NotificacionesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static NotificacionesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      NotificacionesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'NotificacionesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is NotificacionesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createNotificacionesRecordData({
  String? titulo,
  String? mensaje,
  String? cursoId,
  DateTime? fecha,
  String? estado,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'titulo': titulo,
      'mensaje': mensaje,
      'cursoId': cursoId,
      'fecha': fecha,
      'estado': estado,
    }.withoutNulls,
  );

  return firestoreData;
}

class NotificacionesRecordDocumentEquality
    implements Equality<NotificacionesRecord> {
  const NotificacionesRecordDocumentEquality();

  @override
  bool equals(NotificacionesRecord? e1, NotificacionesRecord? e2) {
    const listEquality = ListEquality();
    return e1?.titulo == e2?.titulo &&
        e1?.mensaje == e2?.mensaje &&
        e1?.cursoId == e2?.cursoId &&
        e1?.fecha == e2?.fecha &&
        e1?.estado == e2?.estado &&
        listEquality.equals(e1?.destinatarios, e2?.destinatarios);
  }

  @override
  int hash(NotificacionesRecord? e) => const ListEquality().hash([
        e?.titulo,
        e?.mensaje,
        e?.cursoId,
        e?.fecha,
        e?.estado,
        e?.destinatarios
      ]);

  @override
  bool isValidKey(Object? o) => o is NotificacionesRecord;
}
