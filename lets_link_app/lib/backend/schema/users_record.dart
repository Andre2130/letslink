import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'schema_util.dart';
import 'serializers.dart';

part 'users_record.g.dart';

abstract class UsersRecord implements Built<UsersRecord, UsersRecordBuilder> {
  static Serializer<UsersRecord> get serializer => _$usersRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'Name')
  String get name;

  @nullable
  @BuiltValueField(wireName: 'last_name')
  String get lastName;

  @nullable
  String get username;

  @nullable
  String get email;

  @nullable
  String get phone;

  @nullable
  double get age;

  @nullable
  @BuiltValueField(wireName: 'State')
  String get state;

  @nullable
  @BuiltValueField(wireName: 'profile_pic')
  String get profilePic;

  @nullable
  @BuiltValueField(wireName: 'Host')
  bool get host;

  @nullable
  @BuiltValueField(wireName: 'display_name')
  String get displayName;

  @nullable
  @BuiltValueField(wireName: 'photo_url')
  String get photoUrl;

  @nullable
  String get uid;

  @nullable
  @BuiltValueField(wireName: 'created_time')
  Timestamp get createdTime;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(UsersRecordBuilder builder) => builder
    ..name = ''
    ..lastName = ''
    ..username = ''
    ..email = ''
    ..phone = ''
    ..age = 0.0
    ..state = ''
    ..profilePic = ''
    ..host = false
    ..displayName = ''
    ..photoUrl = ''
    ..uid = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  UsersRecord._();
  factory UsersRecord([void Function(UsersRecordBuilder) updates]) =
      _$UsersRecord;
}

Map<String, dynamic> createUsersRecordData({
  String name,
  String lastName,
  String username,
  String email,
  String phone,
  double age,
  String state,
  String profilePic,
  bool host,
  String displayName,
  String photoUrl,
  String uid,
  Timestamp createdTime,
}) =>
    serializers.serializeWith(
        UsersRecord.serializer,
        UsersRecord((u) => u
          ..name = name
          ..lastName = lastName
          ..username = username
          ..email = email
          ..phone = phone
          ..age = age
          ..state = state
          ..profilePic = profilePic
          ..host = host
          ..displayName = displayName
          ..photoUrl = photoUrl
          ..uid = uid
          ..createdTime = createdTime));

UsersRecord get dummyUsersRecord {
  final builder = UsersRecordBuilder()
    ..name = dummyString
    ..lastName = dummyString
    ..username = dummyString
    ..email = dummyString
    ..phone = dummyString
    ..age = dummyDouble
    ..state = dummyString
    ..profilePic = dummyImagePath
    ..host = dummyBoolean
    ..displayName = dummyString
    ..photoUrl = dummyImagePath
    ..uid = dummyString
    ..createdTime = dummyTimestamp;
  return builder.build();
}

List<UsersRecord> createDummyUsersRecord({int count}) =>
    List.generate(count, (_) => dummyUsersRecord);
