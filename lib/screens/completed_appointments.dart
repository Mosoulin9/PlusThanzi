import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:thanzi_langa/utils/colors.dart';
import 'package:thanzi_langa/utils/widgets/appointment_card.dart';

class CompletedAppointments extends StatefulWidget {
  const CompletedAppointments({super.key});

  @override
  State<CompletedAppointments> createState() => _CompletedAppointmentsState();
}

class _CompletedAppointmentsState extends State<CompletedAppointments> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: 7,
            itemBuilder: (Context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: AppointmentCard(
                  bgColor: Color(0xff0f7139),
                ),
              );
            }),
      ),
    );
  }
}
