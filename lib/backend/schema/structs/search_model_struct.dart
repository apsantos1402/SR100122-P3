// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class SearchModelStruct extends FFFirebaseStruct {
  SearchModelStruct({
    String? name,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _name = name,
        super(firestoreUtilData);

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  static SearchModelStruct fromMap(Map<String, dynamic> data) =>
      SearchModelStruct(
        name: data['name'] as String?,
      );

  static SearchModelStruct? maybeFromMap(dynamic data) => data is Map
      ? SearchModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
      }.withoutNulls;

  static SearchModelStruct fromSerializableMap(Map<String, dynamic> data) =>
      SearchModelStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'SearchModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SearchModelStruct && name == other.name;
  }

  @override
  int get hashCode => const ListEquality().hash([name]);
}

SearchModelStruct createSearchModelStruct({
  String? name,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    SearchModelStruct(
      name: name,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

SearchModelStruct? updateSearchModelStruct(
  SearchModelStruct? searchModel, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    searchModel
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addSearchModelStructData(
  Map<String, dynamic> firestoreData,
  SearchModelStruct? searchModel,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (searchModel == null) {
    return;
  }
  if (searchModel.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && searchModel.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final searchModelData =
      getSearchModelFirestoreData(searchModel, forFieldValue);
  final nestedData =
      searchModelData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = searchModel.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getSearchModelFirestoreData(
  SearchModelStruct? searchModel, [
  bool forFieldValue = false,
]) {
  if (searchModel == null) {
    return {};
  }
  final firestoreData = mapToFirestore(searchModel.toMap());

  // Add any Firestore field values
  searchModel.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getSearchModelListFirestoreData(
  List<SearchModelStruct>? searchModels,
) =>
    searchModels?.map((e) => getSearchModelFirestoreData(e, true)).toList() ??
    [];
