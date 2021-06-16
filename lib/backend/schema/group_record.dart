import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:latlong/latlong.dart';

import 'schema_util.dart';
import 'serializers.dart';

part 'group_record.g.dart';

abstract class GroupRecord implements Built<GroupRecord, GroupRecordBuilder> {
  static Serializer<GroupRecord> get serializer => _$groupRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'Name')
  String get name;

  @nullable
  @BuiltValueField(wireName: 'Host')
  DocumentReference get host;

  @nullable
  @BuiltValueField(wireName: 'Profile_pic')
  String get profilePic;

  @nullable
  bool get public;

  @nullable
  @BuiltValueField(wireName: 'date_created')
  DateTime get dateCreated;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(GroupRecordBuilder builder) => builder
    ..name = ''
    ..profilePic = ''
    ..public = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Group');

  static Stream<GroupRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  GroupRecord._();
  factory GroupRecord([void Function(GroupRecordBuilder) updates]) =
      _$GroupRecord;
}

Map<String, dynamic> createGroupRecordData({
  String name,
  DocumentReference host,
  String profilePic,
  bool public,
  DateTime dateCreated,
}) =>
    serializers.toFirestore(
        GroupRecord.serializer,
        GroupRecord((g) => g
          ..name = name
          ..host = host
          ..profilePic = profilePic
          ..public = public
          ..dateCreated = dateCreated));

GroupRecord get dummyGroupRecord {
  final builder = GroupRecordBuilder()
    ..name = dummyString
    ..profilePic = dummyImagePath
    ..public = dummyBoolean
    ..dateCreated = dummyTimestamp;
  return builder.build();
}

List<GroupRecord> createDummyGroupRecord({int count}) =>
    List.generate(count, (_) => dummyGroupRecord);
