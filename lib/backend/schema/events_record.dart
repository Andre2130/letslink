import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:latlong/latlong.dart';

import 'schema_util.dart';
import 'serializers.dart';

part 'events_record.g.dart';

abstract class EventsRecord
    implements Built<EventsRecord, EventsRecordBuilder> {
  static Serializer<EventsRecord> get serializer => _$eventsRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'Name')
  String get name;

  @nullable
  @BuiltValueField(wireName: 'Date')
  DateTime get date;

  @nullable
  DocumentReference get host;

  @nullable
  @BuiltValueField(wireName: 'Location')
  String get location;

  @nullable
  @BuiltValueField(wireName: 'Rating')
  int get rating;

  @nullable
  @BuiltValueField(wireName: 'UUID')
  int get uuid;

  @nullable
  String get description;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(EventsRecordBuilder builder) => builder
    ..name = ''
    ..location = ''
    ..rating = 0
    ..uuid = 0
    ..description = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Events');

  static Stream<EventsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  EventsRecord._();
  factory EventsRecord([void Function(EventsRecordBuilder) updates]) =
      _$EventsRecord;
}

Map<String, dynamic> createEventsRecordData({
  String name,
  DateTime date,
  DocumentReference host,
  String location,
  int rating,
  int uuid,
  String description,
}) =>
    serializers.toFirestore(
        EventsRecord.serializer,
        EventsRecord((e) => e
          ..name = name
          ..date = date
          ..host = host
          ..location = location
          ..rating = rating
          ..uuid = uuid
          ..description = description));

EventsRecord get dummyEventsRecord {
  final builder = EventsRecordBuilder()
    ..name = dummyString
    ..date = dummyTimestamp
    ..location = dummyString
    ..rating = dummyInteger
    ..uuid = dummyInteger
    ..description = dummyString;
  return builder.build();
}

List<EventsRecord> createDummyEventsRecord({int count}) =>
    List.generate(count, (_) => dummyEventsRecord);
