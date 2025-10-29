// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class SearchResultModelStruct extends FFFirebaseStruct {
  SearchResultModelStruct({
    String? image,
    String? name,
    String? price,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _image = image,
        _name = name,
        _price = price,
        super(firestoreUtilData);

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  set image(String? val) => _image = val;

  bool hasImage() => _image != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "price" field.
  String? _price;
  String get price => _price ?? '';
  set price(String? val) => _price = val;

  bool hasPrice() => _price != null;

  static SearchResultModelStruct fromMap(Map<String, dynamic> data) =>
      SearchResultModelStruct(
        image: data['image'] as String?,
        name: data['name'] as String?,
        price: data['price'] as String?,
      );

  static SearchResultModelStruct? maybeFromMap(dynamic data) => data is Map
      ? SearchResultModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'image': _image,
        'name': _name,
        'price': _price,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'image': serializeParam(
          _image,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'price': serializeParam(
          _price,
          ParamType.String,
        ),
      }.withoutNulls;

  static SearchResultModelStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      SearchResultModelStruct(
        image: deserializeParam(
          data['image'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['name'],
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
  String toString() => 'SearchResultModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SearchResultModelStruct &&
        image == other.image &&
        name == other.name &&
        price == other.price;
  }

  @override
  int get hashCode => const ListEquality().hash([image, name, price]);
}

SearchResultModelStruct createSearchResultModelStruct({
  String? image,
  String? name,
  String? price,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    SearchResultModelStruct(
      image: image,
      name: name,
      price: price,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

SearchResultModelStruct? updateSearchResultModelStruct(
  SearchResultModelStruct? searchResultModel, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    searchResultModel
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addSearchResultModelStructData(
  Map<String, dynamic> firestoreData,
  SearchResultModelStruct? searchResultModel,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (searchResultModel == null) {
    return;
  }
  if (searchResultModel.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && searchResultModel.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final searchResultModelData =
      getSearchResultModelFirestoreData(searchResultModel, forFieldValue);
  final nestedData =
      searchResultModelData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = searchResultModel.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getSearchResultModelFirestoreData(
  SearchResultModelStruct? searchResultModel, [
  bool forFieldValue = false,
]) {
  if (searchResultModel == null) {
    return {};
  }
  final firestoreData = mapToFirestore(searchResultModel.toMap());

  // Add any Firestore field values
  searchResultModel.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getSearchResultModelListFirestoreData(
  List<SearchResultModelStruct>? searchResultModels,
) =>
    searchResultModels
        ?.map((e) => getSearchResultModelFirestoreData(e, true))
        .toList() ??
    [];
