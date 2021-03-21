import 'package:flutter/material.dart';

class FirstRoute extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('First Route'),
        ),
        body: ListView(
          children: [
           agendaTile(
             month:"MAR",
             numberDay: "20",
             nameDay: "Sábado",
           ),
            agendaTile(
              month:"MAR",
              numberDay: "21",
              nameDay: "Domingo",
            ),
          ],
        )
    );
  }

}

class agendaTile extends StatelessWidget {

  const agendaTile({
    this.month,
    this.numberDay,
    this.nameDay,
  });


  final String month;
  final String numberDay;
  final String nameDay;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 80,
          height: 90,
          color: Colors.red,
          child: Column(
            children: [
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      month,
                      style: TextStyle(
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      numberDay,
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      nameDay,
                      style: TextStyle(
                      ),
                    ),
                  ],
                ),
              ),


            ],
          ),
        ),
        Expanded(
          child: Container(
            width: 100,
            height: 90,
            color: Colors.blue,
            child: Column(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Text(
                        "Sabadão na casa do professor de mobile!",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16
                        ),)
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Text("Avenida Darci Carvalho")
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Text("23:00h")
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}