import 'package:flutter/material.dart';
import '../Data/physices_data.dart';
import '../Model/class.dart';

class Physices extends StatelessWidget {
  const Physices({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ClassModel(
      className: physicesData,
      classId: 'PhysicesId',
      classSubject: 'PhysicesSubject',
    );
  }
}
