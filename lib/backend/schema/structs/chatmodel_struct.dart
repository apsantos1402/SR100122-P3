// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class ChatmodelStruct extends FFFirebaseStruct {
  ChatmodelStruct({
    String? image,
    String? title,
    String? description,
    String? time,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _image = image,
        _title = title,
        _description = description,
        _time = time,
        super(firestoreUtilData);

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  set image(String? val) => _image = val;

  bool hasImage() => _image != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "time" field.
  String? _time;
  String get time => _time ?? '';
  set time(String? val) => _time = val;

  bool hasTime() => _time != null;

  static ChatmodelStruct fromMap(Map<String, dynamic> data) => ChatmodelStruct(
        image: data['image'] as String?,
        title: data['title'] as String?,
        description: data['description'] as String?,
        time: data['time'] as String?,
      );

  static ChatmodelStruct? maybeFromMap(dynamic data) => data is Map
      ? ChatmodelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'image': _image,
        'title': _title,
        'description': _description,
        'time': _time,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'image': serializeParam(
          _image,
          ParamType.String,
        ),
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'time': serializeParam(
          _time,
          ParamType.String,
        ),
      }.withoutNulls;

  static ChatmodelStruct fromSerializableMap(Map<String, dynamic> data) =>
      ChatmodelStruct(
        image: deserializeParam(
          data['image'],
          ParamType.String,
          false,
        ),
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
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
  String toString() => 'ChatmodelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ChatmodelStruct &&
        image == other.image &&
        title == other.title &&
        description == other.description &&
        time == other.time;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([image, title, description, time]);
}

ChatmodelStruct createChatmodelStruct({
  String? image,
  String? title,
  String? description,
  String? time,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ChatmodelStruct(
      image: image,
      title: title,
      description: description,
      time: time,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ChatmodelStruct? updateChatmodelStruct(
  ChatmodelStruct? chatmodel, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    chatmodel
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addChatmodelStructData(
  Map<String, dynamic> firestoreData,
  ChatmodelStruct? chatmodel,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (chatmodel == null) {
    return;
  }
  if (chatmodel.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && chatmodel.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final chatmodelData = getChatmodelFirestoreData(chatmodel, forFieldValue);
  final nestedData = chatmodelData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = chatmodel.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getChatmodelFirestoreData(
  ChatmodelStruct? chatmodel, [
  bool forFieldValue = false,
]) {
  if (chatmodel == null) {
    return {};
  }
  final firestoreData = mapToFirestore(chatmodel.toMap());

  // Add any Firestore field values
  chatmodel.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getChatmodelListFirestoreData(
  List<ChatmodelStruct>? chatmodels,
) =>
    chatmodels?.map((e) => getChatmodelFirestoreData(e, true)).toList() ?? [];
