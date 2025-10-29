// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class ExploreModelStruct extends FFFirebaseStruct {
  ExploreModelStruct({
    String? name,
    String? image,
    String? price,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _name = name,
        _image = image,
        _price = price,
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

  // "price" field.
  String? _price;
  String get price => _price ?? '';
  set price(String? val) => _price = val;

  bool hasPrice() => _price != null;

  static ExploreModelStruct fromMap(Map<String, dynamic> data) =>
      ExploreModelStruct(
        name: data['name'] as String?,
        image: data['image'] as String?,
        price: data['price'] as String?,
      );

  static ExploreModelStruct? maybeFromMap(dynamic data) => data is Map
      ? ExploreModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'image': _image,
        'price': _price,
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
        'price': serializeParam(
          _price,
          ParamType.String,
        ),
      }.withoutNulls;

  static ExploreModelStruct fromSerializableMap(Map<String, dynamic> data) =>
      ExploreModelStruct(
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
        price: deserializeParam(
          data['price'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ExploreModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ExploreModelStruct &&
        name == other.name &&
        image == other.image &&
        price == other.price;
  }

  @override
  int get hashCode => const ListEquality().hash([name, image, price]);
}

ExploreModelStruct createExploreModelStruct({
  String? name,
  String? image,
  String? price,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ExploreModelStruct(
      name: name,
      image: image,
      price: price,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ExploreModelStruct? updateExploreModelStruct(
  ExploreModelStruct? exploreModel, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    exploreModel
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addExploreModelStructData(
  Map<String, dynamic> firestoreData,
  ExploreModelStruct? exploreModel,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (exploreModel == null) {
    return;
  }
  if (exploreModel.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && exploreModel.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final exploreModelData =
      getExploreModelFirestoreData(exploreModel, forFieldValue);
  final nestedData =
      exploreModelData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = exploreModel.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getExploreModelFirestoreData(
  ExploreModelStruct? exploreModel, [
  bool forFieldValue = false,
]) {
  if (exploreModel == null) {
    return {};
  }
  final firestoreData = mapToFirestore(exploreModel.toMap());

  // Add any Firestore field values
  exploreModel.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getExploreModelListFirestoreData(
  List<ExploreModelStruct>? exploreModels,
) =>
    exploreModels?.map((e) => getExploreModelFirestoreData(e, true)).toList() ??
    [];
