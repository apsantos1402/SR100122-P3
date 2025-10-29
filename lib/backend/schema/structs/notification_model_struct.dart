// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class NotificationModelStruct extends FFFirebaseStruct {
  NotificationModelStruct({
    String? name,
    String? time,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _name = name,
        _time = time,
        super(firestoreUtilData);

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "time" field.
  String? _time;
  String get time => _time ?? '';
  set time(String? val) => _time = val;

  bool hasTime() => _time != null;

  static NotificationModelStruct fromMap(Map<String, dynamic> data) =>
      NotificationModelStruct(
        name: data['name'] as String?,
        time: data['time'] as String?,
      );

  static NotificationModelStruct? maybeFromMap(dynamic data) => data is Map
      ? NotificationModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'time': _time,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'time': serializeParam(
          _time,
          ParamType.String,
        ),
      }.withoutNulls;

  static NotificationModelStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      NotificationModelStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        time: deserializeParam(
          data['time'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'NotificationModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is NotificationModelStruct &&
        name == other.name &&
        time == other.time;
  }

  @override
  int get hashCode => const ListEquality().hash([name, time]);
}

NotificationModelStruct createNotificationModelStruct({
  String? name,
  String? time,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    NotificationModelStruct(
      name: name,
      time: time,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

NotificationModelStruct? updateNotificationModelStruct(
  NotificationModelStruct? notificationModel, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    notificationModel
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addNotificationModelStructData(
  Map<String, dynamic> firestoreData,
  NotificationModelStruct? notificationModel,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (notificationModel == null) {
    return;
  }
  if (notificationModel.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && notificationModel.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final notificationModelData =
      getNotificationModelFirestoreData(notificationModel, forFieldValue);
  final nestedData =
      notificationModelData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = notificationModel.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getNotificationModelFirestoreData(
  NotificationModelStruct? notificationModel, [
  bool forFieldValue = false,
]) {
  if (notificationModel == null) {
    return {};
  }
  final firestoreData = mapToFirestore(notificationModel.toMap());

  // Add any Firestore field values
  notificationModel.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getNotificationModelListFirestoreData(
  List<NotificationModelStruct>? notificationModels,
) =>
    notificationModels
        ?.map((e) => getNotificationModelFirestoreData(e, true))
        .toList() ??
    [];
