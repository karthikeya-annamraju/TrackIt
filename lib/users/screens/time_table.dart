import 'package:flutter/material.dart';
import 'package:line_icons/line_icon.dart';
import 'package:line_icons/line_icons.dart';
import 'package:table_calendar/table_calendar.dart';

class TimeTable extends StatelessWidget {
  TimeTable({super.key});

  final timeTable = [
    {
      'day': 'Monday',
      'c1': 'System Design',
      't1': '10:30 am',
      'c2': 'Data Structures and Algorithms',
      't2': '2:00 pm',
      'c3': 'Business Analytics',
      't3': '3:00 pm',
    },
    {
      'day': 'Tuesday',
      'c1': 'Data Structures and Algorithms',
      't1': '10:30 am',
      'c2': 'System Design',
      't2': '2:00 pm',
      'c3': 'Business Analytics',
      't3': '3:00 pm',
    },
    {
      'day': 'Wednesday',
      'c1': 'Business Analytics',
      't1': '10:30 am',
      'c2': 'Data Structures and Algorithms',
      't2': '2:00 pm',
      'c3': 'System Design',
      't3': '3:00 pm',
    },
    {
      'day': 'Thursday',
      'c1': 'Data Structures and Algorithms',
      't1': '10:30 am',
      'c2': 'Business Analytics',
      't2': '2:00 pm',
      'c3': 'System Design',
      't3': '3:00 pm',
    },
    {
      'day': 'Friday',
      'c1': 'Data Structures and Algorithms',
      't1': '10:30 am',
      'c2': 'System Design',
      't2': '2:00 pm',
      'c3': 'Business Analytics',
      't3': '3:00 pm',
    },
  ];

  DateTime today = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 0),
        child: Column(
          children: [
            const Divider(thickness: 0.5,),
            const Text('Registered Courses'),
            const Divider(thickness: 0.5,),
            SizedBox(height: 5,),

            Padding(
              padding: const EdgeInsets.only(bottom: 3),
              child: ListTile(
                title: Text('System Desgin'),
                subtitle: Row(
                  children: [
                    Text('Credits: 3   '),
                    Text('Course Code: 123'),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 3),
              child: ListTile(
                title: Text('DSA'),
                subtitle: Row(
                  children: [
                    Text('Credits: 3   '),
                    Text('Course Code: 123'),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 3),
              child: ListTile(
                title: Text('Business Analytics'),
                subtitle: Row(
                  children: [
                    Text('Credits: 3   '),
                    Text('Course Code: 123'),
                  ],
                ),
              ),
            ),

            Expanded(
              child: ListView.builder(
                  itemCount: timeTable.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [

                        const Divider(thickness: 0.5,),
                        Theme(
                          data: ThemeData().copyWith(dividerColor: Colors.transparent,
                          splashColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                        ),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              // border: Border.all(width: 0.3),
                              color: const Color(0xffF0F8FF),
                            ),
                            child: ExpansionTile(
                              initiallyExpanded: false,
                              title: Text(timeTable[index]['day'].toString().toUpperCase()),
                              children: [
                                ListTile(
                                  leading : Icon(LineIcons.diceOne),
                                  title: Text(timeTable[index]['c1'].toString()),
                                  trailing: Text(timeTable[index]['t1'].toString()),
                                ),
                                ListTile(
                                  leading : Icon(LineIcons.diceTwo),
                                  title: Text(timeTable[index]['c2'].toString()),
                                  trailing: Text(timeTable[index]['t2'].toString()),
                                ),
                                ListTile(
                                  leading : Icon(LineIcons.diceThree),
                                  title: Text(timeTable[index]['c3'].toString()),
                                  trailing: Text(timeTable[index]['t3'].toString()),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 3,),
                      ],
                    );
                  }),
            ),

            /* Calendar Starts */
            // Container(
            //     padding: const EdgeInsets.only(bottom: 10),
            //     child: TableCalendar(
            //       locale: 'en_US',
            //       rowHeight: 44,
            //       headerStyle: const HeaderStyle(formatButtonVisible: false, titleCentered: true,),
            //       availableGestures: AvailableGestures.all,
            //       focusedDay: today,
            //       firstDay: DateTime.utc(2010, 10, 16),
            //       lastDay: DateTime.utc(2030, 3, 14),)
            // ),
            /* Calendar Ends */
          ],
        ),
      ),
    );
  }
}
