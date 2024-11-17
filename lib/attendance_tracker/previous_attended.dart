import 'dart:math';

import 'package:flutter/material.dart';

class PreviousAttended extends StatelessWidget {
  const PreviousAttended({super.key, this.courseName});



  final courseName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title:  Text(courseName),
        centerTitle: true,
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back_ios_rounded)),
      ),
      body: AttendanceTable(),
    );
  }
}

class AttendanceTable extends StatelessWidget {
  final List<Map<String, String>> data = List.generate(20, (index) {
    final random = Random();
    final date = DateTime.now()
        .subtract(Duration(days: index))
        .toLocal()
        .toString()
        .split(' ')[0];
    final time =
        '${random.nextInt(24).toString().padLeft(2, '0')}:${random.nextInt(60).toString().padLeft(2, '0')}';
    final status = random.nextBool() ? 'Present' : 'Absent';

    return {
      'date': date,
      'time': time,
      'status': status,
    };
  });

  AttendanceTable({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding:
            const EdgeInsets.only(left: 37, right: 27, top: 27, bottom: 27),
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(width: 2),
              borderRadius: BorderRadius.circular(20)),
          child: DataTable(
            columns: const [
              DataColumn(label: Text('Date')),
              DataColumn(label: Text('Time')),
              DataColumn(label: Text('Status')),
            ],
            rows: data.map((row) {
              return DataRow(cells: [
                DataCell(Text(row['date']!)),
                DataCell(Text(row['time']!)),
                DataCell(Text(
                  row['status']!,
                  style: TextStyle(
                    color:
                        row['status'] == 'Absent' ? Colors.red : Colors.green,
                  ),
                )),
              ]);
            }).toList(),
          ),
        ),
      ),
    );
  }
}
