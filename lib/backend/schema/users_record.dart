import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:latlong/latlong.dart';

import 'schema_util.dart';
import 'serializers.dart';

part 'users_record.g.dart';

abstract class UsersRecord implements Built<UsersRecord, UsersRecordBuilder> {
  static Serializer<UsersRecord> get serializer => _$usersRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'last_name')
  String get lastName;

  @nullable
  String get username;

  @nullable
  String get email;

  @nullable
  double get age;

  @nullable
  @BuiltValueField(wireName: 'profile_pic')
  String get profilePic;

  @nullable
  @BuiltValueField(wireName: 'display_name')
  String get displayName;

  @nullable
  String get uid;

  @nullable
  @BuiltValueField(wireName: 'created_time')
  DateTime get createdTime;

  @nullable
  @BuiltValueField(wireName: 'photo_url')
  String get photoUrl;

  @nullable
  bool get host;

  @nullable
  String get name;

  @nullable
  String get state;

  @nullable
  @BuiltValueField(wireName: 'phone_number')
  String get phoneNumber;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(UsersRecordBuilder builder) => builder
    ..lastName = ''
    ..username = ''
    ..email = ''
    ..age = 0.0
    ..profilePic = ''
    ..displayName = ''
    ..uid = ''
    ..photoUrl = ''
    ..host = false
    ..name = ''
    ..state = ''
    ..phoneNumber = '';

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
  String lastName,
  String username,
  String email,
  double age,
  String profilePic,
  String displayName,
  String uid,
  DateTime createdTime,
  String photoUrl,
  bool host,
  String name,
  String state,
  String phoneNumber,
}) =>
    serializers.toFirestore(
        UsersRecord.serializer,
        UsersRecord((u) => u
          ..lastName = lastName
          ..username = username
          ..email = email
          ..age = age
          ..profilePic = profilePic
          ..displayName = displayName
          ..uid = uid
          ..createdTime = createdTime
          ..photoUrl = photoUrl
          ..host = host
          ..name = name
          ..state = state
          ..phoneNumber = phoneNumber));

UsersRecord get dummyUsersRecord {
  final builder = UsersRecordBuilder()
    ..lastName = dummyString
    ..username = dummyString
    ..email = dummyString
    ..age = dummyDouble
    ..profilePic = dummyImagePath
    ..displayName = dummyString
    ..uid = dummyString
    ..createdTime = dummyTimestamp
    ..photoUrl = dummyString
    ..host = dummyBoolean
    ..name = dummyString
    ..state = dummyString
    ..phoneNumber = dummyString;
  return builder.build();
}

List<UsersRecord> createDummyUsersRecord({int count}) =>
    List.generate(count, (_) => dummyUsersRecord);
