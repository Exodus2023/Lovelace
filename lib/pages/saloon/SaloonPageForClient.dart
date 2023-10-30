import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:lovelace/components/texts/page_title.dart';

class SaloonPageForClient extends StatefulWidget {
  State<SaloonPageForClient> createState() => _SaloonPageForClientState();
}

class _SaloonPageForClientState extends State<SaloonPageForClient> {
  var today = DateTime.now();

  void _onDaySelected(DateTime day, DateTime focusedDay){
    setState(() {
      today = day;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: PageTitle('Lovelace'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.pink),
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: ListView(children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.pink[200],
              borderRadius: BorderRadiusDirectional.circular(20),
            ),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('Dias de atendimento: S, T, Q, Q, S, S, D'),
                  Text('Horários: 14:30 15:30 16:30 17:00')
                ]),
          ),
          SizedBox(height: 10),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.pink[200],
              borderRadius: BorderRadiusDirectional.circular(20),
            ),
            child: Column(children: [
              Text(
                'Descrição',
                style: TextStyle(fontSize: 15),
              ),
              Text('texto...')
            ]),
          ),
          SizedBox(height: 10),
          Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.pink.shade200),
                  borderRadius: BorderRadiusDirectional.circular(20)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(height: 20),
                  Text('Agenda'),
                  SizedBox(height: 20),
                  TableCalendar(
                    firstDay: DateTime(today.year, today.month, 1),
                    lastDay: DateTime(today.year + 1, 12, 1),
                    focusedDay: today,
                    selectedDayPredicate: (day) => isSameDay(day, today),
                    onDaySelected: _onDaySelected,
                    headerStyle: HeaderStyle(
                      leftChevronVisible: false,
                      formatButtonVisible: false,
                      titleCentered: true,
                    ),
                    calendarStyle: CalendarStyle(
                        outsideDaysVisible: false,
                        selectedDecoration:
                            BoxDecoration(color: Colors.pink.shade200),
                        todayDecoration:
                            BoxDecoration(color: Colors.pink.shade200)),
                  ),
                ],
              )),
        ]),
      ),
    );
  }
}
