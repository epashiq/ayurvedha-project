// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patient_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PatientModelImpl _$$PatientModelImplFromJson(Map<String, dynamic> json) =>
    _$PatientModelImpl(
      status: json['status'] as bool,
      message: json['message'] as String,
      patient: (json['patient'] as List<dynamic>)
          .map((e) => Patient.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PatientModelImplToJson(_$PatientModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'patient': instance.patient,
    };

_$PatientImpl _$$PatientImplFromJson(Map<String, dynamic> json) =>
    _$PatientImpl(
      id: (json['id'] as num).toInt(),
      patientdetailsSet: (json['patientdetails_set'] as List<dynamic>)
          .map((e) => PatientdetailsSet.fromJson(e as Map<String, dynamic>))
          .toList(),
      branch: json['branch'] == null
          ? null
          : Branch.fromJson(json['branch'] as Map<String, dynamic>),
      user: json['user'] as String,
      payment: json['payment'] as String,
      name: json['name'] as String,
      phone: json['phone'] as String,
      address: json['address'] as String,
      price: json['price'],
      totalAmount: (json['total_amount'] as num).toInt(),
      discountAmount: (json['discount_amount'] as num).toInt(),
      advanceAmount: (json['advance_amount'] as num).toInt(),
      balanceAmount: (json['balance_amount'] as num).toInt(),
      dateNdTime: json['date_nd_time'] == null
          ? null
          : DateTime.parse(json['date_nd_time'] as String),
      isActive: json['is_active'] as bool,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$PatientImplToJson(_$PatientImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'patientdetails_set': instance.patientdetailsSet,
      'branch': instance.branch,
      'user': instance.user,
      'payment': instance.payment,
      'name': instance.name,
      'phone': instance.phone,
      'address': instance.address,
      'price': instance.price,
      'total_amount': instance.totalAmount,
      'discount_amount': instance.discountAmount,
      'advance_amount': instance.advanceAmount,
      'balance_amount': instance.balanceAmount,
      'date_nd_time': instance.dateNdTime?.toIso8601String(),
      'is_active': instance.isActive,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };

_$BranchImpl _$$BranchImplFromJson(Map<String, dynamic> json) => _$BranchImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      patientsCount: (json['patients_count'] as num).toInt(),
      location: json['location'] as String,
      phone: json['phone'] as String,
      mail: json['mail'] as String,
      address: json['address'] as String,
      gst: json['gst'] as String,
      isActive: json['is_active'] as bool,
    );

Map<String, dynamic> _$$BranchImplToJson(_$BranchImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'patients_count': instance.patientsCount,
      'location': instance.location,
      'phone': instance.phone,
      'mail': instance.mail,
      'address': instance.address,
      'gst': instance.gst,
      'is_active': instance.isActive,
    };

_$PatientdetailsSetImpl _$$PatientdetailsSetImplFromJson(
        Map<String, dynamic> json) =>
    _$PatientdetailsSetImpl(
      id: (json['id'] as num).toInt(),
      male: json['male'] as String,
      female: json['female'] as String,
      patient: (json['patient'] as num).toInt(),
      treatment: (json['treatment'] as num?)?.toInt(),
      treatmentName: json['treatment_name'] as String?,
    );

Map<String, dynamic> _$$PatientdetailsSetImplToJson(
        _$PatientdetailsSetImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'male': instance.male,
      'female': instance.female,
      'patient': instance.patient,
      'treatment': instance.treatment,
      'treatment_name': instance.treatmentName,
    };
