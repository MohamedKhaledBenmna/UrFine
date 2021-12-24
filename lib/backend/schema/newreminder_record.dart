import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'newreminder_record.g.dart';

abstract class NewreminderRecord
    implements Built<NewreminderRecord, NewreminderRecordBuilder> {
  static Serializer<NewreminderRecord> get serializer =>
      _$newreminderRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'TreatementName')
  String get treatementName;

  @nullable
  @BuiltValueField(wireName: 'TreatementTime1')
  DateTime get treatementTime1;

  @nullable
  @BuiltValueField(wireName: 'TreatementTime2')
  DateTime get treatementTime2;

  @nullable
  @BuiltValueField(wireName: 'DurationTreatement')
  int get durationTreatement;

  @nullable
  @BuiltValueField(wireName: 'TreatementStatus')
  bool get treatementStatus;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(NewreminderRecordBuilder builder) => builder
    ..treatementName = ''
    ..durationTreatement = 0
    ..treatementStatus = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Newreminder');

  static Stream<NewreminderRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  NewreminderRecord._();
  factory NewreminderRecord([void Function(NewreminderRecordBuilder) updates]) =
      _$NewreminderRecord;

  static NewreminderRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createNewreminderRecordData({
  String treatementName,
  DateTime treatementTime1,
  DateTime treatementTime2,
  int durationTreatement,
  bool treatementStatus,
}) =>
    serializers.toFirestore(
        NewreminderRecord.serializer,
        NewreminderRecord((n) => n
          ..treatementName = treatementName
          ..treatementTime1 = treatementTime1
          ..treatementTime2 = treatementTime2
          ..durationTreatement = durationTreatement
          ..treatementStatus = treatementStatus));
