import 'package:experiments/attendance_tracker/previous_attended.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class CourseTile extends StatefulWidget {
  final String courseName;
  final String sessionsAttended;
  final String sessionsHeld;
  // final double attendPercentage;
  const CourseTile({
    super.key,
    required this.courseName,
    required this.sessionsAttended,
    required this.sessionsHeld,
  });

  // final String courseName;
  // final int sessionsAttended;
  // final int sessionsHeld;
  // final double attendPercentage;

  @override
  State<CourseTile> createState() => _CourseTileState();
}

class _CourseTileState extends State<CourseTile> {
  double calculatePercentage() {
    double attended = double.parse(widget.sessionsAttended);
    double held = double.parse(widget.sessionsHeld);
    return (attended / held) * 100;
  }

  @override
  Widget build(BuildContext context) {
    double perc = calculatePercentage();
    String showperc = perc.toStringAsFixed(1);
    double percChecker = double.parse(showperc);

    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => PreviousAttended(courseName: widget.courseName,))
        );
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(13),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(width: 2, color: Colors.blue.shade900),
                color: Colors.transparent,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Container(
                  height: 150,
                  color: Colors.transparent,
                  child: Row(
                    children: [
                      Expanded(
                          flex: 5,
                          child: Container(
                            height: 150,
                            color: Colors.transparent,
                            child: Padding(
                              padding: EdgeInsets.only(top: 15),
                              child: Column(
                                children: [
                                  Text(
                                    widget.courseName,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                        color: Colors.deepOrangeAccent),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  // Sessions Attended
                                  Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Row(
                                      children: [
                                        Text(
                                          'Sessions Attended : ',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14,
                                          ),
                                        ),
                                        Text(
                                          widget.sessionsAttended,
                                          style: TextStyle(fontSize: 14),
                                        ),
                                      ],
                                    ),
                                  ),
                                  // Held Session
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 10,
                                      right: 10,
                                      bottom: 10,
                                    ),
                                    child: Row(
                                      children: [
                                        Text(
                                          'Sessions Held : ',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14),
                                        ),
                                        Text(
                                          widget.sessionsHeld,
                                          style: TextStyle(fontSize: 14),
                                        ),
                                      ],
                                    ),
                                  ),
                                  // Upcoming Session
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, right: 10, bottom: 3),
                                    child: Row(
                                      children: [
                                        Text(
                                          'Upcoming Sessions : ',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14),
                                        ),
                                        Text(
                                          '',
                                          style: TextStyle(fontSize: 14),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )),
                      Expanded(
                        flex: 3,
                        child: Container(
                          height: 150,
                          color: Colors.transparent,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 22),
                            child: CircularPercentIndicator(
                              radius: 55,
                              lineWidth: 10,
                              animation: true,
                              animationDuration: 2000,
                              percent: double.parse(widget.sessionsAttended) /
                                  double.parse(widget.sessionsHeld),
                              // progressColor: Colors.deepOrangeAccent,
                              progressColor: (percChecker >= 75.0)
                                  ? Colors.blue.shade900
                                  : Colors.red,
                              backgroundColor: Colors.grey.shade300,
                              circularStrokeCap: CircularStrokeCap.round,
                              center: Text(
                                '$showperc%',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: (percChecker >= 75.0)
                                      ? Colors.blue.shade900
                                      : Colors.red,
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
