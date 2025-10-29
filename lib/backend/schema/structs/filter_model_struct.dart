// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class FilterModelStruct extends FFFirebaseStruct {
  FilterModelStruct({
    String? name,
    String? image,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _name = name,
        _image = image,
        super(firestoreUtilData);

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  set image(String? val) => _image = val;

  bool hasImage() => _image != null;

  static FilterModelStruct fromMap(Map<String, dynamic> data) =>
      FilterModelStruct(
        name: data['name'] as String?,
        image: data['image'] as String?,
      );

  static FilterModelStruct? maybeFromMap(dynamic data) => data is Map
      ? FilterModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'image': _image,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'image': serializeParam(
          _image,
          ParamType.String,
        ),
      }.withoutNulls;

  static FilterModelStruct fromSerializableMap(Map<String, dynamic> data) =>
      FilterModelStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        image: deserializeParam(
          data['image'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'FilterModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is FilterModelStruct &&
        name == other.name &&
        image == other.image;
  }

  @override
  int get hashCode => const ListEquality().hash([name, image]);
}

FilterModelStruct createFilterModelStruct({
  String? name,
  String? image,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    FilterModelStruct(
      name: name,
      image: image,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

FilterModelStruct? updateFilterModelStruct(
  FilterModelStruct? filterModel, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    filterModel
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addFilterModelStructData(
  Map<String, dynamic> firestoreData,
  FilterModelStruct? filterModel,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (filterModel == null) {
    return;
  }
  if (filterModel.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && filterModel.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final filterModelData =
      getFilterModelFirestoreData(filterModel, forFieldValue);
  final nestedData =
      filterModelData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = filterModel.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getFilterModelFirestoreData(
  FilterModelStruct? filterModel, [
  bool forFieldValue = false,
]) {
  if (filterModel == null) {
    return {};
  }
  final firestoreData = mapToFirestore(filterModel.toMap());

  // Add any Firestore field values
  filterModel.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getFilterModelListFirestoreData(
  List<FilterModelStruct>? filterModels,
) =>
    filterModels?.map((e) => getFilterModelFirestoreData(e, true)).toList() ??
    [];
