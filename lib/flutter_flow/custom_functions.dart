import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

String? contarNotificaciones(String? uid) {
  Future<int> contarNotificaciones(String userId) async {
    try {
      QuerySnapshot snapshot = await FirebaseFirestore.instance
          .collection('notificaciones')
          .where('destinatarios', arrayContains: userId)
          .get();

      return snapshot.size;
    } catch (e) {
      print("Error contando notificaciones: $e");
      return 0;
    }
  }
}
