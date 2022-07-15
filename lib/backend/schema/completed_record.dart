import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'completed_record.g.dart';

abstract class CompletedRecord
    implements Built<CompletedRecord, CompletedRecordBuilder> {
  static Serializer<CompletedRecord> get serializer =>
      _$completedRecordSerializer;

  @nullable
  DateTime get toDoDate;

  @nullable
  String get toDoName;

  @nullable
  String get toDoDescription;

  @nullable
  bool get toDoState;

  @nullable
  DocumentReference get user;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(CompletedRecordBuilder builder) => builder
    ..toDoName = ''
    ..toDoDescription = ''
    ..toDoState = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Completed');

  static Stream<CompletedRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<CompletedRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  CompletedRecord._();
  factory CompletedRecord([void Function(CompletedRecordBuilder) updates]) =
      _$CompletedRecord;

  static CompletedRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createCompletedRecordData({
  DateTime toDoDate,
  String toDoName,
  String toDoDescription,
  bool toDoState,
  DocumentReference user,
}) =>
    serializers.toFirestore(
        CompletedRecord.serializer,
        CompletedRecord((c) => c
          ..toDoDate = toDoDate
          ..toDoName = toDoName
          ..toDoDescription = toDoDescription
          ..toDoState = toDoState
          ..user = user));
