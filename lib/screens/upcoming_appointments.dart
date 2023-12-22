import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:thanzi_langa/utils/colors.dart';
import 'package:thanzi_langa/utils/widgets/appointment_card.dart';

class UpcomingAppointments extends StatefulWidget {
  const UpcomingAppointments({super.key});

  @override
  State<UpcomingAppointments> createState() => _UpcomingAppointmentsState();
}

class _UpcomingAppointmentsState extends State<UpcomingAppointments> {
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
                  bgColor: thanziBlue,
                ),
              );
            }),
      ),
    );
  }
}
