import 'dart:html';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:freezed/builder.dart';
import 'package:build_runner/build_runner.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'clothes.freezed.dart';

@freezed
class Clothes with _$Clothes {
  factory Clothes({
    required String name,
    required String type,
    required String color,
  }) = _Clothes;

  /*factory Clothes.fromFirestore(
    DocumentSnapshot<Object?> snapshot,
  ){
    final data = snapshot.data() as Map<String,dynamic>

  }*/
}
