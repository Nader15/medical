import 'package:flutter/material.dart';
import 'package:medical/ui/home_page.dart';
import 'package:medical/ui/jummah_details.dart';
import 'package:medical/ui/my_calender.dart';
import 'package:medical/ui/notifications.dart';
import 'package:medical/utils/custom_widgets/calendar_view.dart';
import 'package:medical/utils/custom_widgets/events.dart';
import 'package:medical/utils/custom_widgets/jummah%20booking.dart';
import 'package:medical/utils/custom_widgets/jummah.dart';

void main()=>runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  title: 'Medical-test',
  home: CalendarView(),
));