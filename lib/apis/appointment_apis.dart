import 'dart:convert';
import 'dart:io';

import 'package:aartas_design_system/const.dart';
import 'package:aartas_design_system/models/appointment_model.dart';
import 'package:aartas_design_system/models/doctor_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';

class AppointmentProvider extends ChangeNotifier {
  AppointmentResponse _appointmentResponse = AppointmentResponse();
  AppointmentResponse get appointmentResponse => _appointmentResponse;

  Future<AppointmentResponse> appointmentResponseFuture() {
    return Future<AppointmentResponse>.value(_appointmentResponse);
  }

  Future<AppointmentResponse> getAppointments() async {
    var _url = Uri.parse("$baseURL/clinishare/doctor/appointment/list");
    var dir = await getTemporaryDirectory();
    File _file = File(dir.path + "/" + doctorDetailsFileName);

    final doctorID =
        DoctorResponse.fromJson(json.decode(_file.readAsStringSync()))
            .data![0]
            .id;

    final res = (await http.post(_url, body: {"doctor_id": "$doctorID"})).body;
    _appointmentResponse = AppointmentResponse.fromJson(json.decode(res));
    notifyListeners();
    return _appointmentResponse;
  }

  Future<AppointmentResponse> getPatientPreviousAppointment(
      String patientId) async {
    var dir = await getTemporaryDirectory();
    File _file = File(dir.path + "/" + doctorDetailsFileName);
    var _url = Uri.parse("$baseURL/clinishare/get/patient/past/visits");

    final doctorID =
        DoctorResponse.fromJson(json.decode(_file.readAsStringSync()))
            .data![0]
            .id;

    final res = (await http.post(_url, body: {
      "doctor_id": "$doctorID",
      "patient_id": patientId,
    }))
        .body;
    _appointmentResponse = AppointmentResponse.fromJson(json.decode(res));
    notifyListeners();
    return _appointmentResponse;
  }
}
