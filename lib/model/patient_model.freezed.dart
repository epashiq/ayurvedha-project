// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patient_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PatientModel _$PatientModelFromJson(Map<String, dynamic> json) {
  return _PatientModel.fromJson(json);
}

/// @nodoc
mixin _$PatientModel {
  @JsonKey(name: "status")
  bool get status => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: "patient")
  List<Patient> get patient => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PatientModelCopyWith<PatientModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatientModelCopyWith<$Res> {
  factory $PatientModelCopyWith(
          PatientModel value, $Res Function(PatientModel) then) =
      _$PatientModelCopyWithImpl<$Res, PatientModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "status") bool status,
      @JsonKey(name: "message") String message,
      @JsonKey(name: "patient") List<Patient> patient});
}

/// @nodoc
class _$PatientModelCopyWithImpl<$Res, $Val extends PatientModel>
    implements $PatientModelCopyWith<$Res> {
  _$PatientModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? patient = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      patient: null == patient
          ? _value.patient
          : patient // ignore: cast_nullable_to_non_nullable
              as List<Patient>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PatientModelImplCopyWith<$Res>
    implements $PatientModelCopyWith<$Res> {
  factory _$$PatientModelImplCopyWith(
          _$PatientModelImpl value, $Res Function(_$PatientModelImpl) then) =
      __$$PatientModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "status") bool status,
      @JsonKey(name: "message") String message,
      @JsonKey(name: "patient") List<Patient> patient});
}

/// @nodoc
class __$$PatientModelImplCopyWithImpl<$Res>
    extends _$PatientModelCopyWithImpl<$Res, _$PatientModelImpl>
    implements _$$PatientModelImplCopyWith<$Res> {
  __$$PatientModelImplCopyWithImpl(
      _$PatientModelImpl _value, $Res Function(_$PatientModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? patient = null,
  }) {
    return _then(_$PatientModelImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      patient: null == patient
          ? _value._patient
          : patient // ignore: cast_nullable_to_non_nullable
              as List<Patient>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PatientModelImpl implements _PatientModel {
  const _$PatientModelImpl(
      {@JsonKey(name: "status") required this.status,
      @JsonKey(name: "message") required this.message,
      @JsonKey(name: "patient") required final List<Patient> patient})
      : _patient = patient;

  factory _$PatientModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PatientModelImplFromJson(json);

  @override
  @JsonKey(name: "status")
  final bool status;
  @override
  @JsonKey(name: "message")
  final String message;
  final List<Patient> _patient;
  @override
  @JsonKey(name: "patient")
  List<Patient> get patient {
    if (_patient is EqualUnmodifiableListView) return _patient;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_patient);
  }

  @override
  String toString() {
    return 'PatientModel(status: $status, message: $message, patient: $patient)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PatientModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._patient, _patient));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, message,
      const DeepCollectionEquality().hash(_patient));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PatientModelImplCopyWith<_$PatientModelImpl> get copyWith =>
      __$$PatientModelImplCopyWithImpl<_$PatientModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PatientModelImplToJson(
      this,
    );
  }
}

abstract class _PatientModel implements PatientModel {
  const factory _PatientModel(
          {@JsonKey(name: "status") required final bool status,
          @JsonKey(name: "message") required final String message,
          @JsonKey(name: "patient") required final List<Patient> patient}) =
      _$PatientModelImpl;

  factory _PatientModel.fromJson(Map<String, dynamic> json) =
      _$PatientModelImpl.fromJson;

  @override
  @JsonKey(name: "status")
  bool get status;
  @override
  @JsonKey(name: "message")
  String get message;
  @override
  @JsonKey(name: "patient")
  List<Patient> get patient;
  @override
  @JsonKey(ignore: true)
  _$$PatientModelImplCopyWith<_$PatientModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Patient _$PatientFromJson(Map<String, dynamic> json) {
  return _Patient.fromJson(json);
}

/// @nodoc
mixin _$Patient {
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "patientdetails_set")
  List<PatientdetailsSet> get patientdetailsSet =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "branch")
  Branch? get branch => throw _privateConstructorUsedError;
  @JsonKey(name: "user")
  String get user => throw _privateConstructorUsedError;
  @JsonKey(name: "payment")
  String get payment => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "phone")
  String get phone => throw _privateConstructorUsedError;
  @JsonKey(name: "address")
  String get address => throw _privateConstructorUsedError;
  @JsonKey(name: "price")
  dynamic get price => throw _privateConstructorUsedError;
  @JsonKey(name: "total_amount")
  int get totalAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "discount_amount")
  int get discountAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "advance_amount")
  int get advanceAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "balance_amount")
  int get balanceAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "date_nd_time")
  DateTime? get dateNdTime => throw _privateConstructorUsedError;
  @JsonKey(name: "is_active")
  bool get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  DateTime get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PatientCopyWith<Patient> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatientCopyWith<$Res> {
  factory $PatientCopyWith(Patient value, $Res Function(Patient) then) =
      _$PatientCopyWithImpl<$Res, Patient>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "patientdetails_set")
      List<PatientdetailsSet> patientdetailsSet,
      @JsonKey(name: "branch") Branch? branch,
      @JsonKey(name: "user") String user,
      @JsonKey(name: "payment") String payment,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "phone") String phone,
      @JsonKey(name: "address") String address,
      @JsonKey(name: "price") dynamic price,
      @JsonKey(name: "total_amount") int totalAmount,
      @JsonKey(name: "discount_amount") int discountAmount,
      @JsonKey(name: "advance_amount") int advanceAmount,
      @JsonKey(name: "balance_amount") int balanceAmount,
      @JsonKey(name: "date_nd_time") DateTime? dateNdTime,
      @JsonKey(name: "is_active") bool isActive,
      @JsonKey(name: "created_at") DateTime createdAt,
      @JsonKey(name: "updated_at") DateTime updatedAt});

  $BranchCopyWith<$Res>? get branch;
}

/// @nodoc
class _$PatientCopyWithImpl<$Res, $Val extends Patient>
    implements $PatientCopyWith<$Res> {
  _$PatientCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? patientdetailsSet = null,
    Object? branch = freezed,
    Object? user = null,
    Object? payment = null,
    Object? name = null,
    Object? phone = null,
    Object? address = null,
    Object? price = freezed,
    Object? totalAmount = null,
    Object? discountAmount = null,
    Object? advanceAmount = null,
    Object? balanceAmount = null,
    Object? dateNdTime = freezed,
    Object? isActive = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      patientdetailsSet: null == patientdetailsSet
          ? _value.patientdetailsSet
          : patientdetailsSet // ignore: cast_nullable_to_non_nullable
              as List<PatientdetailsSet>,
      branch: freezed == branch
          ? _value.branch
          : branch // ignore: cast_nullable_to_non_nullable
              as Branch?,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String,
      payment: null == payment
          ? _value.payment
          : payment // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as dynamic,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as int,
      discountAmount: null == discountAmount
          ? _value.discountAmount
          : discountAmount // ignore: cast_nullable_to_non_nullable
              as int,
      advanceAmount: null == advanceAmount
          ? _value.advanceAmount
          : advanceAmount // ignore: cast_nullable_to_non_nullable
              as int,
      balanceAmount: null == balanceAmount
          ? _value.balanceAmount
          : balanceAmount // ignore: cast_nullable_to_non_nullable
              as int,
      dateNdTime: freezed == dateNdTime
          ? _value.dateNdTime
          : dateNdTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BranchCopyWith<$Res>? get branch {
    if (_value.branch == null) {
      return null;
    }

    return $BranchCopyWith<$Res>(_value.branch!, (value) {
      return _then(_value.copyWith(branch: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PatientImplCopyWith<$Res> implements $PatientCopyWith<$Res> {
  factory _$$PatientImplCopyWith(
          _$PatientImpl value, $Res Function(_$PatientImpl) then) =
      __$$PatientImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "patientdetails_set")
      List<PatientdetailsSet> patientdetailsSet,
      @JsonKey(name: "branch") Branch? branch,
      @JsonKey(name: "user") String user,
      @JsonKey(name: "payment") String payment,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "phone") String phone,
      @JsonKey(name: "address") String address,
      @JsonKey(name: "price") dynamic price,
      @JsonKey(name: "total_amount") int totalAmount,
      @JsonKey(name: "discount_amount") int discountAmount,
      @JsonKey(name: "advance_amount") int advanceAmount,
      @JsonKey(name: "balance_amount") int balanceAmount,
      @JsonKey(name: "date_nd_time") DateTime? dateNdTime,
      @JsonKey(name: "is_active") bool isActive,
      @JsonKey(name: "created_at") DateTime createdAt,
      @JsonKey(name: "updated_at") DateTime updatedAt});

  @override
  $BranchCopyWith<$Res>? get branch;
}

/// @nodoc
class __$$PatientImplCopyWithImpl<$Res>
    extends _$PatientCopyWithImpl<$Res, _$PatientImpl>
    implements _$$PatientImplCopyWith<$Res> {
  __$$PatientImplCopyWithImpl(
      _$PatientImpl _value, $Res Function(_$PatientImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? patientdetailsSet = null,
    Object? branch = freezed,
    Object? user = null,
    Object? payment = null,
    Object? name = null,
    Object? phone = null,
    Object? address = null,
    Object? price = freezed,
    Object? totalAmount = null,
    Object? discountAmount = null,
    Object? advanceAmount = null,
    Object? balanceAmount = null,
    Object? dateNdTime = freezed,
    Object? isActive = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$PatientImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      patientdetailsSet: null == patientdetailsSet
          ? _value._patientdetailsSet
          : patientdetailsSet // ignore: cast_nullable_to_non_nullable
              as List<PatientdetailsSet>,
      branch: freezed == branch
          ? _value.branch
          : branch // ignore: cast_nullable_to_non_nullable
              as Branch?,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String,
      payment: null == payment
          ? _value.payment
          : payment // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as dynamic,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as int,
      discountAmount: null == discountAmount
          ? _value.discountAmount
          : discountAmount // ignore: cast_nullable_to_non_nullable
              as int,
      advanceAmount: null == advanceAmount
          ? _value.advanceAmount
          : advanceAmount // ignore: cast_nullable_to_non_nullable
              as int,
      balanceAmount: null == balanceAmount
          ? _value.balanceAmount
          : balanceAmount // ignore: cast_nullable_to_non_nullable
              as int,
      dateNdTime: freezed == dateNdTime
          ? _value.dateNdTime
          : dateNdTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PatientImpl implements _Patient {
  const _$PatientImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "patientdetails_set")
      required final List<PatientdetailsSet> patientdetailsSet,
      @JsonKey(name: "branch") required this.branch,
      @JsonKey(name: "user") required this.user,
      @JsonKey(name: "payment") required this.payment,
      @JsonKey(name: "name") required this.name,
      @JsonKey(name: "phone") required this.phone,
      @JsonKey(name: "address") required this.address,
      @JsonKey(name: "price") required this.price,
      @JsonKey(name: "total_amount") required this.totalAmount,
      @JsonKey(name: "discount_amount") required this.discountAmount,
      @JsonKey(name: "advance_amount") required this.advanceAmount,
      @JsonKey(name: "balance_amount") required this.balanceAmount,
      @JsonKey(name: "date_nd_time") required this.dateNdTime,
      @JsonKey(name: "is_active") required this.isActive,
      @JsonKey(name: "created_at") required this.createdAt,
      @JsonKey(name: "updated_at") required this.updatedAt})
      : _patientdetailsSet = patientdetailsSet;

  factory _$PatientImpl.fromJson(Map<String, dynamic> json) =>
      _$$PatientImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int id;
  final List<PatientdetailsSet> _patientdetailsSet;
  @override
  @JsonKey(name: "patientdetails_set")
  List<PatientdetailsSet> get patientdetailsSet {
    if (_patientdetailsSet is EqualUnmodifiableListView)
      return _patientdetailsSet;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_patientdetailsSet);
  }

  @override
  @JsonKey(name: "branch")
  final Branch? branch;
  @override
  @JsonKey(name: "user")
  final String user;
  @override
  @JsonKey(name: "payment")
  final String payment;
  @override
  @JsonKey(name: "name")
  final String name;
  @override
  @JsonKey(name: "phone")
  final String phone;
  @override
  @JsonKey(name: "address")
  final String address;
  @override
  @JsonKey(name: "price")
  final dynamic price;
  @override
  @JsonKey(name: "total_amount")
  final int totalAmount;
  @override
  @JsonKey(name: "discount_amount")
  final int discountAmount;
  @override
  @JsonKey(name: "advance_amount")
  final int advanceAmount;
  @override
  @JsonKey(name: "balance_amount")
  final int balanceAmount;
  @override
  @JsonKey(name: "date_nd_time")
  final DateTime? dateNdTime;
  @override
  @JsonKey(name: "is_active")
  final bool isActive;
  @override
  @JsonKey(name: "created_at")
  final DateTime createdAt;
  @override
  @JsonKey(name: "updated_at")
  final DateTime updatedAt;

  @override
  String toString() {
    return 'Patient(id: $id, patientdetailsSet: $patientdetailsSet, branch: $branch, user: $user, payment: $payment, name: $name, phone: $phone, address: $address, price: $price, totalAmount: $totalAmount, discountAmount: $discountAmount, advanceAmount: $advanceAmount, balanceAmount: $balanceAmount, dateNdTime: $dateNdTime, isActive: $isActive, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PatientImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._patientdetailsSet, _patientdetailsSet) &&
            (identical(other.branch, branch) || other.branch == branch) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.payment, payment) || other.payment == payment) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.address, address) || other.address == address) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount) &&
            (identical(other.discountAmount, discountAmount) ||
                other.discountAmount == discountAmount) &&
            (identical(other.advanceAmount, advanceAmount) ||
                other.advanceAmount == advanceAmount) &&
            (identical(other.balanceAmount, balanceAmount) ||
                other.balanceAmount == balanceAmount) &&
            (identical(other.dateNdTime, dateNdTime) ||
                other.dateNdTime == dateNdTime) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_patientdetailsSet),
      branch,
      user,
      payment,
      name,
      phone,
      address,
      const DeepCollectionEquality().hash(price),
      totalAmount,
      discountAmount,
      advanceAmount,
      balanceAmount,
      dateNdTime,
      isActive,
      createdAt,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PatientImplCopyWith<_$PatientImpl> get copyWith =>
      __$$PatientImplCopyWithImpl<_$PatientImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PatientImplToJson(
      this,
    );
  }
}

abstract class _Patient implements Patient {
  const factory _Patient(
          {@JsonKey(name: "id") required final int id,
          @JsonKey(name: "patientdetails_set")
          required final List<PatientdetailsSet> patientdetailsSet,
          @JsonKey(name: "branch") required final Branch? branch,
          @JsonKey(name: "user") required final String user,
          @JsonKey(name: "payment") required final String payment,
          @JsonKey(name: "name") required final String name,
          @JsonKey(name: "phone") required final String phone,
          @JsonKey(name: "address") required final String address,
          @JsonKey(name: "price") required final dynamic price,
          @JsonKey(name: "total_amount") required final int totalAmount,
          @JsonKey(name: "discount_amount") required final int discountAmount,
          @JsonKey(name: "advance_amount") required final int advanceAmount,
          @JsonKey(name: "balance_amount") required final int balanceAmount,
          @JsonKey(name: "date_nd_time") required final DateTime? dateNdTime,
          @JsonKey(name: "is_active") required final bool isActive,
          @JsonKey(name: "created_at") required final DateTime createdAt,
          @JsonKey(name: "updated_at") required final DateTime updatedAt}) =
      _$PatientImpl;

  factory _Patient.fromJson(Map<String, dynamic> json) = _$PatientImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int get id;
  @override
  @JsonKey(name: "patientdetails_set")
  List<PatientdetailsSet> get patientdetailsSet;
  @override
  @JsonKey(name: "branch")
  Branch? get branch;
  @override
  @JsonKey(name: "user")
  String get user;
  @override
  @JsonKey(name: "payment")
  String get payment;
  @override
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(name: "phone")
  String get phone;
  @override
  @JsonKey(name: "address")
  String get address;
  @override
  @JsonKey(name: "price")
  dynamic get price;
  @override
  @JsonKey(name: "total_amount")
  int get totalAmount;
  @override
  @JsonKey(name: "discount_amount")
  int get discountAmount;
  @override
  @JsonKey(name: "advance_amount")
  int get advanceAmount;
  @override
  @JsonKey(name: "balance_amount")
  int get balanceAmount;
  @override
  @JsonKey(name: "date_nd_time")
  DateTime? get dateNdTime;
  @override
  @JsonKey(name: "is_active")
  bool get isActive;
  @override
  @JsonKey(name: "created_at")
  DateTime get createdAt;
  @override
  @JsonKey(name: "updated_at")
  DateTime get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$PatientImplCopyWith<_$PatientImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Branch _$BranchFromJson(Map<String, dynamic> json) {
  return _Branch.fromJson(json);
}

/// @nodoc
mixin _$Branch {
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "patients_count")
  int get patientsCount => throw _privateConstructorUsedError;
  @JsonKey(name: "location")
  String get location => throw _privateConstructorUsedError;
  @JsonKey(name: "phone")
  String get phone => throw _privateConstructorUsedError;
  @JsonKey(name: "mail")
  String get mail => throw _privateConstructorUsedError;
  @JsonKey(name: "address")
  String get address => throw _privateConstructorUsedError;
  @JsonKey(name: "gst")
  String get gst => throw _privateConstructorUsedError;
  @JsonKey(name: "is_active")
  bool get isActive => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BranchCopyWith<Branch> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BranchCopyWith<$Res> {
  factory $BranchCopyWith(Branch value, $Res Function(Branch) then) =
      _$BranchCopyWithImpl<$Res, Branch>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "patients_count") int patientsCount,
      @JsonKey(name: "location") String location,
      @JsonKey(name: "phone") String phone,
      @JsonKey(name: "mail") String mail,
      @JsonKey(name: "address") String address,
      @JsonKey(name: "gst") String gst,
      @JsonKey(name: "is_active") bool isActive});
}

/// @nodoc
class _$BranchCopyWithImpl<$Res, $Val extends Branch>
    implements $BranchCopyWith<$Res> {
  _$BranchCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? patientsCount = null,
    Object? location = null,
    Object? phone = null,
    Object? mail = null,
    Object? address = null,
    Object? gst = null,
    Object? isActive = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      patientsCount: null == patientsCount
          ? _value.patientsCount
          : patientsCount // ignore: cast_nullable_to_non_nullable
              as int,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      mail: null == mail
          ? _value.mail
          : mail // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      gst: null == gst
          ? _value.gst
          : gst // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BranchImplCopyWith<$Res> implements $BranchCopyWith<$Res> {
  factory _$$BranchImplCopyWith(
          _$BranchImpl value, $Res Function(_$BranchImpl) then) =
      __$$BranchImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "patients_count") int patientsCount,
      @JsonKey(name: "location") String location,
      @JsonKey(name: "phone") String phone,
      @JsonKey(name: "mail") String mail,
      @JsonKey(name: "address") String address,
      @JsonKey(name: "gst") String gst,
      @JsonKey(name: "is_active") bool isActive});
}

/// @nodoc
class __$$BranchImplCopyWithImpl<$Res>
    extends _$BranchCopyWithImpl<$Res, _$BranchImpl>
    implements _$$BranchImplCopyWith<$Res> {
  __$$BranchImplCopyWithImpl(
      _$BranchImpl _value, $Res Function(_$BranchImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? patientsCount = null,
    Object? location = null,
    Object? phone = null,
    Object? mail = null,
    Object? address = null,
    Object? gst = null,
    Object? isActive = null,
  }) {
    return _then(_$BranchImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      patientsCount: null == patientsCount
          ? _value.patientsCount
          : patientsCount // ignore: cast_nullable_to_non_nullable
              as int,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      mail: null == mail
          ? _value.mail
          : mail // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      gst: null == gst
          ? _value.gst
          : gst // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BranchImpl implements _Branch {
  const _$BranchImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "name") required this.name,
      @JsonKey(name: "patients_count") required this.patientsCount,
      @JsonKey(name: "location") required this.location,
      @JsonKey(name: "phone") required this.phone,
      @JsonKey(name: "mail") required this.mail,
      @JsonKey(name: "address") required this.address,
      @JsonKey(name: "gst") required this.gst,
      @JsonKey(name: "is_active") required this.isActive});

  factory _$BranchImpl.fromJson(Map<String, dynamic> json) =>
      _$$BranchImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int id;
  @override
  @JsonKey(name: "name")
  final String name;
  @override
  @JsonKey(name: "patients_count")
  final int patientsCount;
  @override
  @JsonKey(name: "location")
  final String location;
  @override
  @JsonKey(name: "phone")
  final String phone;
  @override
  @JsonKey(name: "mail")
  final String mail;
  @override
  @JsonKey(name: "address")
  final String address;
  @override
  @JsonKey(name: "gst")
  final String gst;
  @override
  @JsonKey(name: "is_active")
  final bool isActive;

  @override
  String toString() {
    return 'Branch(id: $id, name: $name, patientsCount: $patientsCount, location: $location, phone: $phone, mail: $mail, address: $address, gst: $gst, isActive: $isActive)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BranchImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.patientsCount, patientsCount) ||
                other.patientsCount == patientsCount) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.mail, mail) || other.mail == mail) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.gst, gst) || other.gst == gst) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, patientsCount,
      location, phone, mail, address, gst, isActive);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BranchImplCopyWith<_$BranchImpl> get copyWith =>
      __$$BranchImplCopyWithImpl<_$BranchImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BranchImplToJson(
      this,
    );
  }
}

abstract class _Branch implements Branch {
  const factory _Branch(
      {@JsonKey(name: "id") required final int id,
      @JsonKey(name: "name") required final String name,
      @JsonKey(name: "patients_count") required final int patientsCount,
      @JsonKey(name: "location") required final String location,
      @JsonKey(name: "phone") required final String phone,
      @JsonKey(name: "mail") required final String mail,
      @JsonKey(name: "address") required final String address,
      @JsonKey(name: "gst") required final String gst,
      @JsonKey(name: "is_active") required final bool isActive}) = _$BranchImpl;

  factory _Branch.fromJson(Map<String, dynamic> json) = _$BranchImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int get id;
  @override
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(name: "patients_count")
  int get patientsCount;
  @override
  @JsonKey(name: "location")
  String get location;
  @override
  @JsonKey(name: "phone")
  String get phone;
  @override
  @JsonKey(name: "mail")
  String get mail;
  @override
  @JsonKey(name: "address")
  String get address;
  @override
  @JsonKey(name: "gst")
  String get gst;
  @override
  @JsonKey(name: "is_active")
  bool get isActive;
  @override
  @JsonKey(ignore: true)
  _$$BranchImplCopyWith<_$BranchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PatientdetailsSet _$PatientdetailsSetFromJson(Map<String, dynamic> json) {
  return _PatientdetailsSet.fromJson(json);
}

/// @nodoc
mixin _$PatientdetailsSet {
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "male")
  String get male => throw _privateConstructorUsedError;
  @JsonKey(name: "female")
  String get female => throw _privateConstructorUsedError;
  @JsonKey(name: "patient")
  int get patient => throw _privateConstructorUsedError;
  @JsonKey(name: "treatment")
  int? get treatment => throw _privateConstructorUsedError;
  @JsonKey(name: "treatment_name")
  String? get treatmentName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PatientdetailsSetCopyWith<PatientdetailsSet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatientdetailsSetCopyWith<$Res> {
  factory $PatientdetailsSetCopyWith(
          PatientdetailsSet value, $Res Function(PatientdetailsSet) then) =
      _$PatientdetailsSetCopyWithImpl<$Res, PatientdetailsSet>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "male") String male,
      @JsonKey(name: "female") String female,
      @JsonKey(name: "patient") int patient,
      @JsonKey(name: "treatment") int? treatment,
      @JsonKey(name: "treatment_name") String? treatmentName});
}

/// @nodoc
class _$PatientdetailsSetCopyWithImpl<$Res, $Val extends PatientdetailsSet>
    implements $PatientdetailsSetCopyWith<$Res> {
  _$PatientdetailsSetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? male = null,
    Object? female = null,
    Object? patient = null,
    Object? treatment = freezed,
    Object? treatmentName = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      male: null == male
          ? _value.male
          : male // ignore: cast_nullable_to_non_nullable
              as String,
      female: null == female
          ? _value.female
          : female // ignore: cast_nullable_to_non_nullable
              as String,
      patient: null == patient
          ? _value.patient
          : patient // ignore: cast_nullable_to_non_nullable
              as int,
      treatment: freezed == treatment
          ? _value.treatment
          : treatment // ignore: cast_nullable_to_non_nullable
              as int?,
      treatmentName: freezed == treatmentName
          ? _value.treatmentName
          : treatmentName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PatientdetailsSetImplCopyWith<$Res>
    implements $PatientdetailsSetCopyWith<$Res> {
  factory _$$PatientdetailsSetImplCopyWith(_$PatientdetailsSetImpl value,
          $Res Function(_$PatientdetailsSetImpl) then) =
      __$$PatientdetailsSetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "male") String male,
      @JsonKey(name: "female") String female,
      @JsonKey(name: "patient") int patient,
      @JsonKey(name: "treatment") int? treatment,
      @JsonKey(name: "treatment_name") String? treatmentName});
}

/// @nodoc
class __$$PatientdetailsSetImplCopyWithImpl<$Res>
    extends _$PatientdetailsSetCopyWithImpl<$Res, _$PatientdetailsSetImpl>
    implements _$$PatientdetailsSetImplCopyWith<$Res> {
  __$$PatientdetailsSetImplCopyWithImpl(_$PatientdetailsSetImpl _value,
      $Res Function(_$PatientdetailsSetImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? male = null,
    Object? female = null,
    Object? patient = null,
    Object? treatment = freezed,
    Object? treatmentName = freezed,
  }) {
    return _then(_$PatientdetailsSetImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      male: null == male
          ? _value.male
          : male // ignore: cast_nullable_to_non_nullable
              as String,
      female: null == female
          ? _value.female
          : female // ignore: cast_nullable_to_non_nullable
              as String,
      patient: null == patient
          ? _value.patient
          : patient // ignore: cast_nullable_to_non_nullable
              as int,
      treatment: freezed == treatment
          ? _value.treatment
          : treatment // ignore: cast_nullable_to_non_nullable
              as int?,
      treatmentName: freezed == treatmentName
          ? _value.treatmentName
          : treatmentName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PatientdetailsSetImpl implements _PatientdetailsSet {
  const _$PatientdetailsSetImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "male") required this.male,
      @JsonKey(name: "female") required this.female,
      @JsonKey(name: "patient") required this.patient,
      @JsonKey(name: "treatment") required this.treatment,
      @JsonKey(name: "treatment_name") this.treatmentName});

  factory _$PatientdetailsSetImpl.fromJson(Map<String, dynamic> json) =>
      _$$PatientdetailsSetImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int id;
  @override
  @JsonKey(name: "male")
  final String male;
  @override
  @JsonKey(name: "female")
  final String female;
  @override
  @JsonKey(name: "patient")
  final int patient;
  @override
  @JsonKey(name: "treatment")
  final int? treatment;
  @override
  @JsonKey(name: "treatment_name")
  final String? treatmentName;

  @override
  String toString() {
    return 'PatientdetailsSet(id: $id, male: $male, female: $female, patient: $patient, treatment: $treatment, treatmentName: $treatmentName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PatientdetailsSetImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.male, male) || other.male == male) &&
            (identical(other.female, female) || other.female == female) &&
            (identical(other.patient, patient) || other.patient == patient) &&
            (identical(other.treatment, treatment) ||
                other.treatment == treatment) &&
            (identical(other.treatmentName, treatmentName) ||
                other.treatmentName == treatmentName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, male, female, patient, treatment, treatmentName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PatientdetailsSetImplCopyWith<_$PatientdetailsSetImpl> get copyWith =>
      __$$PatientdetailsSetImplCopyWithImpl<_$PatientdetailsSetImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PatientdetailsSetImplToJson(
      this,
    );
  }
}

abstract class _PatientdetailsSet implements PatientdetailsSet {
  const factory _PatientdetailsSet(
          {@JsonKey(name: "id") required final int id,
          @JsonKey(name: "male") required final String male,
          @JsonKey(name: "female") required final String female,
          @JsonKey(name: "patient") required final int patient,
          @JsonKey(name: "treatment") required final int? treatment,
          @JsonKey(name: "treatment_name") final String? treatmentName}) =
      _$PatientdetailsSetImpl;

  factory _PatientdetailsSet.fromJson(Map<String, dynamic> json) =
      _$PatientdetailsSetImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int get id;
  @override
  @JsonKey(name: "male")
  String get male;
  @override
  @JsonKey(name: "female")
  String get female;
  @override
  @JsonKey(name: "patient")
  int get patient;
  @override
  @JsonKey(name: "treatment")
  int? get treatment;
  @override
  @JsonKey(name: "treatment_name")
  String? get treatmentName;
  @override
  @JsonKey(ignore: true)
  _$$PatientdetailsSetImplCopyWith<_$PatientdetailsSetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
