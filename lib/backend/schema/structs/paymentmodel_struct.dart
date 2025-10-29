// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class PaymentmodelStruct extends FFFirebaseStruct {
  PaymentmodelStruct({
    String? image,
    String? title,
    String? description,
    String? image1,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _image = image,
        _title = title,
        _description = description,
        _image1 = image1,
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

  // "image1" field.
  String? _image1;
  String get image1 => _image1 ?? '';
  set image1(String? val) => _image1 = val;

  bool hasImage1() => _image1 != null;

  static PaymentmodelStruct fromMap(Map<String, dynamic> data) =>
      PaymentmodelStruct(
        image: data['image'] as String?,
        title: data['title'] as String?,
        description: data['description'] as String?,
        image1: data['image1'] as String?,
      );

  static PaymentmodelStruct? maybeFromMap(dynamic data) => data is Map
      ? PaymentmodelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'image': _image,
        'title': _title,
        'description': _description,
        'image1': _image1,
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
        'image1': serializeParam(
          _image1,
          ParamType.String,
        ),
      }.withoutNulls;

  static PaymentmodelStruct fromSerializableMap(Map<String, dynamic> data) =>
      PaymentmodelStruct(
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
        image1: deserializeParam(
          data['image1'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'PaymentmodelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PaymentmodelStruct &&
        image == other.image &&
        title == other.title &&
        description == other.description &&
        image1 == other.image1;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([image, title, description, image1]);
}

PaymentmodelStruct createPaymentmodelStruct({
  String? image,
  String? title,
  String? description,
  String? image1,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    PaymentmodelStruct(
      image: image,
      title: title,
      description: description,
      image1: image1,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

PaymentmodelStruct? updatePaymentmodelStruct(
  PaymentmodelStruct? paymentmodel, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    paymentmodel
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addPaymentmodelStructData(
  Map<String, dynamic> firestoreData,
  PaymentmodelStruct? paymentmodel,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (paymentmodel == null) {
    return;
  }
  if (paymentmodel.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && paymentmodel.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final paymentmodelData =
      getPaymentmodelFirestoreData(paymentmodel, forFieldValue);
  final nestedData =
      paymentmodelData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = paymentmodel.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getPaymentmodelFirestoreData(
  PaymentmodelStruct? paymentmodel, [
  bool forFieldValue = false,
]) {
  if (paymentmodel == null) {
    return {};
  }
  final firestoreData = mapToFirestore(paymentmodel.toMap());

  // Add any Firestore field values
  paymentmodel.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getPaymentmodelListFirestoreData(
  List<PaymentmodelStruct>? paymentmodels,
) =>
    paymentmodels?.map((e) => getPaymentmodelFirestoreData(e, true)).toList() ??
    [];
