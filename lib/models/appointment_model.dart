import 'package:aartas_design_system/models/medicine_model.dart';
import 'package:aartas_design_system/models/patient_response_model.dart';
import 'package:aartas_design_system/models/procedure_model.dart';
import 'package:aartas_design_system/models/timeslot_model.dart';
import 'package:aartas_design_system/models/patient_vitals_model.dart';
import 'package:flutter/material.dart';

class AppointmentResponse {
  String? message;
  bool? status;
  List<AppointmentData>? data;

  AppointmentResponse({this.message, this.status, this.data});

  AppointmentResponse.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    status = json['status'];
    if (json['data'] != null) {
      data = <AppointmentData>[];
      json['data'].forEach((v) {
        data!.add(AppointmentData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['message'] = message;
    data['status'] = status;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class AppointmentData {
  int? id;
  dynamic billId;
  int? doctorId;
  int? patientId;
  int? timeslotId;
  int? clinicId;
  String? paymentMethod;
  String? paymentMethodDetails;
  String? payId;
  int? appointmentStatus;
  int? paymentStatus;
  String? consFee;
  int? showConsFee;
  String? consText;
  String? docDiscount;
  String? discount;
  String? couponId;
  int? appointmentType;
  String? campId;
  String? campDoctorId;
  String? procedureId;
  String? procedureCost;
  String? patientBundlesId;
  String? appointmentDate;
  String? sGST;
  String? cGST;
  String? totalAmount;
  String? patientRewardsHistoryId;
  int? whatsappSent;
  int? isConfirmed;
  String? prescriptionFile;
  Patient? patient;
  Timeslot? timeslot;
  List<Vitals>? vitals;
  List<AppointmentsComplaints>? appointmentsComplaints;
  List<AppointmentsDiagnosis>? appointmentsDiagnosis;
  List<AppointmentsInvestigations>? appointmentsInvestigations;
  List<AppointmentsNotes>? appointmentsNotes;
  List<AppointmentsSuggestedProcedures>? appointmentsSuggestedProcedures;
  List<AppointmentsMedicines>? appointmentsMedicines;

  AppointmentData(
      {this.id,
      this.billId,
      this.doctorId,
      this.patientId,
      this.timeslotId,
      this.clinicId,
      this.paymentMethod,
      this.paymentMethodDetails,
      this.payId,
      this.appointmentStatus,
      this.paymentStatus,
      this.consFee,
      this.showConsFee,
      this.consText,
      this.docDiscount,
      this.discount,
      this.couponId,
      this.appointmentType,
      this.campId,
      this.campDoctorId,
      this.procedureId,
      this.procedureCost,
      this.patientBundlesId,
      this.appointmentDate,
      this.sGST,
      this.cGST,
      this.totalAmount,
      this.patientRewardsHistoryId,
      this.whatsappSent,
      this.isConfirmed,
      this.prescriptionFile,
      this.patient,
      this.timeslot,
      this.vitals,
      this.appointmentsComplaints,
      this.appointmentsDiagnosis,
      this.appointmentsInvestigations,
      this.appointmentsNotes,
      this.appointmentsSuggestedProcedures,
      this.appointmentsMedicines});

  AppointmentData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    billId = json['bill_id'];
    doctorId = json['doctor_id'];
    patientId = json['patient_id'];
    timeslotId = json['timeslot_id'];
    clinicId = json['clinic_id'];
    paymentMethod = json['payment_method'];
    paymentMethodDetails = json['payment_method_details'];
    payId = json['pay_id'];
    appointmentStatus = json['appointment_status'];
    paymentStatus = json['payment_status'];
    consFee = json['cons_fee'];
    showConsFee = json['show_cons_fee'];
    consText = json['cons_text'];
    docDiscount = json['doc_discount'];
    discount = json['discount'];
    couponId = json['coupon_id'];
    appointmentType = json['appointment_type'];
    campId = json['camp_id'];
    campDoctorId = json['camp_doctor_id'];
    procedureId = json['procedure_id'];
    procedureCost = json['procedure_cost'];
    patientBundlesId = json['patient_bundles_id'];
    appointmentDate = json['appointment_date'];
    sGST = json['SGST'];
    cGST = json['CGST'];
    totalAmount = json['total_amount'];
    patientRewardsHistoryId = json['patient_rewards_history_id'];
    whatsappSent = json['whatsapp_sent'];
    isConfirmed = json['is_confirmed'];
    prescriptionFile = json['prescription_file'];
    patient =
        json['patient'] != null ? Patient.fromJson(json['patient']) : null;
    timeslot =
        json['timeslot'] != null ? Timeslot.fromJson(json['timeslot']) : null;
    if (json['vitals'] != null) {
      vitals = <Vitals>[];
      json['vitals'].forEach((v) {
        vitals!.add(Vitals.fromJson(v));
      });
    }
    if (json['appointments_complaints'] != null) {
      appointmentsComplaints = <AppointmentsComplaints>[];
      json['appointments_complaints'].forEach((v) {
        appointmentsComplaints!.add(AppointmentsComplaints.fromJson(v));
      });
    }
    if (json['appointments_diagnosis'] != null) {
      appointmentsDiagnosis = <AppointmentsDiagnosis>[];
      json['appointments_diagnosis'].forEach((v) {
        appointmentsDiagnosis!.add(AppointmentsDiagnosis.fromJson(v));
      });
    }
    if (json['appointments_investigations'] != null) {
      appointmentsInvestigations = <AppointmentsInvestigations>[];
      json['appointments_investigations'].forEach((v) {
        appointmentsInvestigations!.add(AppointmentsInvestigations.fromJson(v));
      });
    }
    if (json['appointments_notes'] != null) {
      appointmentsNotes = <AppointmentsNotes>[];
      json['appointments_notes'].forEach((v) {
        appointmentsNotes!.add(AppointmentsNotes.fromJson(v));
      });
    }
    if (json['appointments_suggested_procedures'] != null) {
      appointmentsSuggestedProcedures = <AppointmentsSuggestedProcedures>[];
      json['appointments_suggested_procedures'].forEach((v) {
        appointmentsSuggestedProcedures!
            .add(AppointmentsSuggestedProcedures.fromJson(v));
      });
    }
    if (json['appointments_medicines'] != null) {
      appointmentsMedicines = <AppointmentsMedicines>[];
      json['appointments_medicines'].forEach((v) {
        appointmentsMedicines!.add(AppointmentsMedicines.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['bill_id'] = billId;
    data['doctor_id'] = doctorId;
    data['patient_id'] = patientId;
    data['timeslot_id'] = timeslotId;
    data['clinic_id'] = clinicId;
    data['payment_method'] = paymentMethod;
    data['payment_method_details'] = paymentMethodDetails;
    data['pay_id'] = payId;
    data['appointment_status'] = appointmentStatus;
    data['payment_status'] = paymentStatus;
    data['cons_fee'] = consFee;
    data['show_cons_fee'] = showConsFee;
    data['cons_text'] = consText;
    data['doc_discount'] = docDiscount;
    data['discount'] = discount;
    data['coupon_id'] = couponId;
    data['appointment_type'] = appointmentType;
    data['camp_id'] = campId;
    data['camp_doctor_id'] = campDoctorId;
    data['procedure_id'] = procedureId;
    data['procedure_cost'] = procedureCost;
    data['patient_bundles_id'] = patientBundlesId;
    data['appointment_date'] = appointmentDate;
    data['SGST'] = sGST;
    data['CGST'] = cGST;
    data['total_amount'] = totalAmount;
    data['patient_rewards_history_id'] = patientRewardsHistoryId;
    data['whatsapp_sent'] = whatsappSent;
    data['is_confirmed'] = isConfirmed;
    data['prescription_file'] = prescriptionFile;
    if (patient != null) {
      data['patient'] = patient!.toJson();
    }
    if (timeslot != null) {
      data['timeslot'] = timeslot!.toJson();
    }
    if (vitals != null) {
      data['vitals'] = vitals!.map((v) => v.toJson()).toList();
    }
    if (appointmentsComplaints != null) {
      data['appointments_complaints'] =
          appointmentsComplaints!.map((v) => v.toJson()).toList();
    }
    if (appointmentsDiagnosis != null) {
      data['appointments_diagnosis'] =
          appointmentsDiagnosis!.map((v) => v.toJson()).toList();
    }
    if (appointmentsInvestigations != null) {
      data['appointments_investigations'] =
          appointmentsInvestigations!.map((v) => v.toJson()).toList();
    }
    if (appointmentsNotes != null) {
      data['appointments_notes'] =
          appointmentsNotes!.map((v) => v.toJson()).toList();
    }
    if (appointmentsSuggestedProcedures != null) {
      data['appointments_suggested_procedures'] =
          appointmentsSuggestedProcedures!.map((v) => v.toJson()).toList();
    }
    if (appointmentsMedicines != null) {
      data['appointments_medicines'] =
          appointmentsMedicines!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Patient {
  int? id;
  String? fullName;
  String? phoneCountryCode;
  String? phoneNumber;
  String? email;
  String? gender;
  String? pinCode;
  String? fcmToken;
  String? dob;
  int? age;
  String? relation;
  String? linkId;
  String? location;
  String? latitude;
  String? longitude;
  int? membershipTypeId;

  Patient(
      {this.id,
      this.fullName,
      this.phoneCountryCode,
      this.phoneNumber,
      this.email,
      this.gender,
      this.pinCode,
      this.fcmToken,
      this.dob,
      this.age,
      this.relation,
      this.linkId,
      this.location,
      this.latitude,
      this.longitude,
      this.membershipTypeId});

  Patient.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    fullName = json['full_name'];
    phoneCountryCode = json['phone_country_code'];
    phoneNumber = json['phone_number'];
    email = json['email'];
    gender = json['gender'];
    pinCode = json['pin_code'];
    fcmToken = json['fcm_token'];
    dob = json['dob'];
    age = json['age'];
    relation = json['relation'];
    linkId = json['link_id'];
    location = json['location'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    membershipTypeId = json['membership_type_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['full_name'] = fullName;
    data['phone_country_code'] = phoneCountryCode;
    data['phone_number'] = phoneNumber;
    data['email'] = email;
    data['gender'] = gender;
    data['pin_code'] = pinCode;
    data['fcm_token'] = fcmToken;
    data['dob'] = dob;
    data['age'] = age;
    data['relation'] = relation;
    data['link_id'] = linkId;
    data['location'] = location;
    data['latitude'] = latitude;
    data['longitude'] = longitude;
    data['membership_type_id'] = membershipTypeId;
    return data;
  }
}

class Timeslot {
  int? id;
  int? doctorId;
  String? date;
  String? timeFrom;
  String? timeTo;
  int? clinicId;
  int? bookingStatus;

  Timeslot(
      {this.id,
      this.doctorId,
      this.date,
      this.timeFrom,
      this.timeTo,
      this.clinicId,
      this.bookingStatus});

  Timeslot.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    doctorId = json['doctor_id'];
    date = json['date'];
    timeFrom = json['time_from'];
    timeTo = json['time_to'];
    clinicId = json['clinic_id'];
    bookingStatus = json['booking_status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['doctor_id'] = doctorId;
    data['date'] = date;
    data['time_from'] = timeFrom;
    data['time_to'] = timeTo;
    data['clinic_id'] = clinicId;
    data['booking_status'] = bookingStatus;
    return data;
  }
}

class Vitals {
  int? id;
  int? appointmentId;
  int? patientId;
  int? vitalsId;
  String? value;
  Vital? vital;

  Vitals(
      {this.id,
      this.appointmentId,
      this.patientId,
      this.vitalsId,
      this.value,
      this.vital});

  Vitals.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    appointmentId = json['appointment_id'];
    patientId = json['patient_id'];
    vitalsId = json['vitals_id'];
    value = json['value'];
    vital = json['vital'] != null ? Vital.fromJson(json['vital']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['appointment_id'] = appointmentId;
    data['patient_id'] = patientId;
    data['vitals_id'] = vitalsId;
    data['value'] = value;
    if (vital != null) {
      data['vital'] = vital!.toJson();
    }
    return data;
  }
}

class Vital {
  int? id;
  String? title;
  String? unit;

  Vital({this.id, this.title, this.unit});

  Vital.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    unit = json['unit'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['title'] = title;
    data['unit'] = unit;
    return data;
  }
}

class AppointmentsComplaints {
  int? id;
  int? appointmentId;
  int? complaintsId;
  int? duration;
  int? durationType;
  int? severity;
  String? progress;
  String? notes;
  int? negativeSymptom;
  IdTitle? complaint;

  AppointmentsComplaints(
      {this.id,
      this.appointmentId,
      this.complaintsId,
      this.duration,
      this.durationType,
      this.severity,
      this.progress,
      this.notes,
      this.negativeSymptom,
      this.complaint});

  AppointmentsComplaints.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    appointmentId = json['appointment_id'];
    complaintsId = json['complaints_id'];
    duration = json['duration'];
    durationType = json['duration_type'];
    severity = json['severity'];
    progress = json['progress'];
    notes = json['notes'];
    negativeSymptom = json['negative_symptom'];
    complaint =
        json['complaint'] != null ? IdTitle.fromJson(json['complaint']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['appointment_id'] = appointmentId;
    data['complaints_id'] = complaintsId;
    data['duration'] = duration;
    data['duration_type'] = durationType;
    data['severity'] = severity;
    data['progress'] = progress;
    data['notes'] = notes;
    data['negative_symptom'] = negativeSymptom;
    if (complaint != null) {
      data['complaint'] = complaint!.toJson();
    }
    return data;
  }
}

class IdTitle {
  int? id;
  String? title;

  IdTitle({this.id, this.title});

  IdTitle.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['title'] = title;
    return data;
  }
}

class AppointmentsDiagnosis {
  int? id;
  int? appointmentId;
  int? diagnosisId;
  int? duration;
  int? durationType;
  String? diagnosisStatus;
  int? medication;
  IdTitle? diagnosis;

  AppointmentsDiagnosis(
      {this.id,
      this.appointmentId,
      this.diagnosisId,
      this.duration,
      this.durationType,
      this.diagnosisStatus,
      this.medication,
      this.diagnosis});

  AppointmentsDiagnosis.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    appointmentId = json['appointment_id'];
    diagnosisId = json['diagnosis_id'];
    duration = json['duration'];
    durationType = json['duration_type'];
    diagnosisStatus = json['diagnosis_status'];
    medication = json['medication'];
    diagnosis =
        json['diagnosis'] != null ? IdTitle.fromJson(json['diagnosis']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['appointment_id'] = appointmentId;
    data['diagnosis_id'] = diagnosisId;
    data['duration'] = duration;
    data['duration_type'] = durationType;
    data['diagnosis_status'] = diagnosisStatus;
    data['medication'] = medication;
    if (diagnosis != null) {
      data['diagnosis'] = diagnosis!.toJson();
    }
    return data;
  }
}

class AppointmentsInvestigations {
  int? id;
  int? appointmentId;
  int? investigationsId;
  int? fastingState;
  int? duration;
  int? durationType;
  String? notes;
  String? results;
  IdTitle? investigation;

  AppointmentsInvestigations(
      {this.id,
      this.appointmentId,
      this.investigationsId,
      this.fastingState,
      this.duration,
      this.durationType,
      this.notes,
      this.results,
      this.investigation});

  AppointmentsInvestigations.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    appointmentId = json['appointment_id'];
    investigationsId = json['investigations_id'];
    fastingState = json['fasting_state'];
    duration = json['duration'];
    durationType = json['duration_type'];
    notes = json['notes'];
    results = json['results'];
    investigation = json['investigation'] != null
        ? IdTitle.fromJson(json['investigation'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['appointment_id'] = appointmentId;
    data['investigations_id'] = investigationsId;
    data['fasting_state'] = fastingState;
    data['duration'] = duration;
    data['duration_type'] = durationType;
    data['notes'] = notes;
    data['results'] = results;
    if (investigation != null) {
      data['investigation'] = investigation!.toJson();
    }
    return data;
  }
}

class AppointmentsNotes {
  int? id;
  int? appointmentId;
  String? note;

  AppointmentsNotes({this.id, this.appointmentId, this.note});

  AppointmentsNotes.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    appointmentId = json['appointment_id'];
    note = json['note'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['appointment_id'] = appointmentId;
    data['note'] = note;
    return data;
  }
}

class AppointmentsSuggestedProcedures {
  int? id;
  int? doctorProcedureId;
  int? appointmentId;
  Procedure? procedure;

  AppointmentsSuggestedProcedures(
      {this.id, this.doctorProcedureId, this.appointmentId, this.procedure});

  AppointmentsSuggestedProcedures.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    doctorProcedureId = json['doctor_procedure_id'];
    appointmentId = json['appointment_id'];
    procedure = json['procedure'] != null
        ? Procedure.fromJson(json['procedure'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['doctor_procedure_id'] = doctorProcedureId;
    data['appointment_id'] = appointmentId;
    if (procedure != null) {
      data['procedure'] = procedure!.toJson();
    }
    return data;
  }
}

class AppointmentsMedicines {
  int? id;
  int? medicineId;
  dynamic dose;
  int? unitId;
  int? qty;
  int? duration;
  int? durationType;
  String? startDate;
  String? instructions;
  int? appointmentId;
  int? frequency;
  String? mealTake;
  String? timeOfTheDayDefaults;
  String? timeRange;
  IdTitle? unit;
  Medicine? medicine;

  AppointmentsMedicines({
    this.id,
    this.medicineId,
    this.dose,
    this.unitId,
    this.qty,
    this.duration,
    this.durationType,
    this.startDate,
    this.instructions,
    this.appointmentId,
    this.frequency,
    this.mealTake,
    this.timeOfTheDayDefaults,
    this.timeRange,
    this.unit,
    this.medicine,
  });

  AppointmentsMedicines.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    medicineId = json['medicine_id'];
    dose = json['dose'];
    unitId = json['unit_id'];
    qty = json['qty'];
    duration = json['duration'];
    durationType = json['duration_type'];
    startDate = json['start_date'];
    instructions = json['instructions'];
    appointmentId = json['appointment_id'];
    frequency = json['frequency'];
    mealTake = json['meal_take'];
    timeOfTheDayDefaults = json['time_of_the_day_defaults'];
    timeRange = json['time_range'];
    unit = json['unit'] != null ? IdTitle.fromJson(json['unit']) : null;
    medicine =
        json['medicine'] != null ? Medicine.fromJson(json['medicine']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['medicine_id'] = medicineId;
    data['dose'] = dose;
    data['unit_id'] = unitId;
    data['qty'] = qty;
    data['duration'] = duration;
    data['duration_type'] = durationType;
    data['start_date'] = startDate;
    data['instructions'] = instructions;
    data['appointment_id'] = appointmentId;
    data['frequency'] = frequency;
    data['meal_take'] = mealTake;
    data['time_of_the_day_defaults'] = timeOfTheDayDefaults;
    data['time_range'] = timeRange;
    if (unit != null) {
      data['unit'] = unit!.toJson();
    }
    if (medicine != null) {
      data['medicine'] = medicine!.toJson();
    }
    return data;
  }
}
