library aartas_design_system;

import 'package:aartas_design_system/apis/authentication_apis.dart';

import 'package:aartas_design_system/providers/appointment_provider.dart';
import 'package:aartas_design_system/providers/authorisation_provider.dart';
import 'package:aartas_design_system/providers/category_provider.dart';
import 'package:aartas_design_system/providers/complaint_provider.dart';
import 'package:aartas_design_system/providers/diagnosis_provider.dart';
import 'package:aartas_design_system/providers/doctor_provider.dart';
import 'package:aartas_design_system/providers/investigation_provider.dart';
import 'package:aartas_design_system/providers/medicine_provider.dart';
import 'package:aartas_design_system/providers/patient_provider.dart';
import 'package:aartas_design_system/providers/vitals_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AartasApiProvider extends StatefulWidget {
  final Widget child;
  const AartasApiProvider({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  State<AartasApiProvider> createState() => _AartasApiProviderState();
}

class _AartasApiProviderState extends State<AartasApiProvider> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthenticationProvider()),
        ChangeNotifierProvider(create: (_) => AuthorisationProvider()),
        ChangeNotifierProvider(create: (_) => AppointmentProvider()),
        ChangeNotifierProvider(create: (_) => DoctorProvider()),
        ChangeNotifierProvider(create: (_) => PatientProvider()),
        ChangeNotifierProvider(create: (_) => VitalsProvider()),
        ChangeNotifierProvider(create: (_) => CategoryProvider()),
        ChangeNotifierProvider(create: (_) => ComplaintProvider()),
        ChangeNotifierProvider(create: (_) => DiagnosisProvder()),
        ChangeNotifierProvider(create: (_) => InvestigationProvider()),
        ChangeNotifierProvider(create: (_) => MedicineProvider()),
      ],
      builder: (_, child) {
        return widget.child;
      },
    );
  }
}
