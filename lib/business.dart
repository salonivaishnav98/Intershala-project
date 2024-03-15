import 'package:flutter/material.dart';

class TimeSelectionScreen extends StatefulWidget {
  @override
  _TimeSelectionScreenState createState() => _TimeSelectionScreenState();
}

class _TimeSelectionScreenState extends State<TimeSelectionScreen> {
  List<String> weekdays = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'];
  List<String> timeSlots = [
    "8:00am - 10:00am",
    "10:00am - 1:00pm",
    "1:00pm - 4:00pm",
    "4:00- 5:00",
    "5:00-6:00",
  ];

  Map<String, List<String>> selectedTimes = {
    'Mon': [],
    'Tue': [],
    'Wed': [],
    'Thu': [],
    'Fri': [],
    'Sat': [],
    'Sun': [],
  };

  String currentWeekday = 'Mon';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Time Selection'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              for (String day in weekdays)
                GestureDetector(
                  onTap: () {
                    setState(() {
                      currentWeekday = day;
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.all(8),
                    color: day == currentWeekday ? Colors.blue : Colors.grey,
                    child: Text(day),
                  ),
                ),
            ],
          ),
          SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              itemCount: timeSlots.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Text(
                      timeSlots[index],
                      style: TextStyle(fontSize: 16),
                    ),
                    GestureDetector(
                      onTap: () {
                        _handleTimeSlotSelection(timeSlots[index]);
                      },
                      child: Container(
                        width: 80,
                        height: 40,
                        margin: EdgeInsets.all(5),
                        alignment: Alignment.center,
                        color: selectedTimes[currentWeekday]!
                            .contains(timeSlots[index])
                            ? Colors.blue
                            : Colors.grey,
                        child: Text(currentWeekday),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  void _handleTimeSlotSelection(String timeSlot) {
    setState(() {
      if (selectedTimes[currentWeekday]!.contains(timeSlot)) {
        selectedTimes[currentWeekday]!.remove(timeSlot);
      } else {
        selectedTimes[currentWeekday]!.add(timeSlot);
      }
    });
  }
}

void main() {
  runApp(MaterialApp(
    home: TimeSelectionScreen(),
  ));
}
