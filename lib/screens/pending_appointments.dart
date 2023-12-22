import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:thanzi_langa/utils/widgets/appointment_card.dart';

class PendingAppointments extends StatefulWidget {
  const PendingAppointments({super.key});

  @override
  State<PendingAppointments> createState() => _PendingAppointmentsState();
}

class _PendingAppointmentsState extends State<PendingAppointments> {
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
                  bgColor: Color(0xff201F0F).withOpacity(0.7),
                ),
              );
            }),
      ),
    );
  }
}
