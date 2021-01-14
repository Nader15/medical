import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medical/utils/colors_file.dart';
import 'package:medical/utils/custom_widgets/events.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarView extends StatefulWidget {
  @override
  _CalendarViewState createState() => _CalendarViewState();
}

class _CalendarViewState extends State<CalendarView> {
  CalendarController _calendarController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _calendarController = CalendarController();
  }

  final Map<DateTime, List> _events = {
    DateTime(2021, 1, 4): ['New Year'],
    DateTime(2021, 1, 9): ['New Year'],
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "My Calendar",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 50,
          ),
          Text(
            "Jumada al-Ula",
            style: TextStyle(color: greyColor, fontSize: 15),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: calendarView(),
          ),
//           Expanded(
//             child: Align(
//               alignment: FractionalOffset.bottomCenter,
//               child: InkWell(
//                 onTap: (){
//                   print("selectedDayselectedDay ${_calendarController.selectedDay}");
//                 },
//                 child: Container(
//                   margin: EdgeInsets.only(bottom: 20),
//                   height: MediaQuery.of(context).size.height * .065,
//                   width: MediaQuery.of(context).size.width * 0.9,
// //            color: white,
//                   decoration: BoxDecoration(
//                       color: greenColor, borderRadius: BorderRadius.circular(10)),
//                   child: Center(
//                     child: Text(
//                      "DONE",
//                      style: TextStyle(fontSize: 16, color: Colors.white),
//                       ),
//                   ),
//                 ),
//               ),
//             ),
//           )
        ],
      ),
    );
  }

  Widget calendarView() {
    return TableCalendar(
      builders: CalendarBuilders(
          selectedDayBuilder: (context, date, event) => Container(
            alignment: Alignment.center,
                margin: EdgeInsets.all(2),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                    color: dustyOrangeTwo),
                child: Text(
                  date.day.toString(),
                ),
              ),
        holidayDayBuilder: (context, date, event) => Container(
          alignment: Alignment.center,
          margin: EdgeInsets.all(2),
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: dustyOrangeTwo),
          child: Text(
            date.day.toString(),
          ),
        ),
      ),
      calendarController: _calendarController,
      startingDayOfWeek: StartingDayOfWeek.monday,
      holidays: _events,
      rowHeight: 80,
      headerVisible: true,
      weekendDays: [],
      calendarStyle: CalendarStyle(
        holidayStyle: TextStyle(
          color: Colors.black,
        ),
        weekdayStyle: TextStyle(
          fontSize: 15,
          color: Colors.black,
        ),
        eventDayStyle: TextStyle(color: Colors.green),
        selectedColor: dustyOrangeTwo,
        todayColor: dustyOrangeTwo.withOpacity(.6),
        markersColor: Colors.black,
        outsideDaysVisible: true,
      ),
      daysOfWeekStyle: DaysOfWeekStyle(
          weekendStyle: TextStyle(
            color: Colors.blue,
          ),
          weekdayStyle: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold
          ),
      ),
      headerStyle: HeaderStyle(
        titleTextStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        formatButtonVisible: false,
        centerHeaderTitle: true,
      ),
    );
  }
}
