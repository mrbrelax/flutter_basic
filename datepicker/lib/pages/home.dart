import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    DateTime selectedDate = DateTime.now();
    return Scaffold(
      appBar: AppBar(title: const Text('Date Picker'), centerTitle: true),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              selectedDate.toString(),
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            ElevatedButton(
              onPressed: () {
                showDatePicker(
                  context: context,
                  initialDate: selectedDate,
                  firstDate: DateTime(1945),
                  lastDate: DateTime(2035),
                  // initialEntryMode: DatePickerEntryMode.calendar,
                  // initialDatePickerMode: DatePickerMode.day,
                  // selectableDayPredicate: (day) {
                  //   if ((day.isAfter(DateTime.now().subtract(
                  //         const Duration(days: 2),
                  //       ))) &&
                  //       (day.isBefore(
                  //         DateTime.now().add(const Duration(days: 2)),
                  //       ))) {
                  //     return true;
                  //   }
                  //   return false;
                  // }
                  helpText: "Help Text",
                  cancelText: "Cancel Text",
                  confirmText: "Confirm Text",
                  fieldHintText: "Masukkan Tanggal Lahir anda",
                  fieldLabelText: "Field Label Text",
                  errorFormatText: "Error Format Text",
                  errorInvalidText: "Error Invalid Text",
                  builder: (context, child) {
                    return Theme(data: ThemeData.dark(), child: child!);
                  },
                ).then((value) {
                  if (value != null) {
                    setState(() {
                      selectedDate = value;
                    });
                  }
                });
              },
              child: const Text('Date Picker'),
            ),
          ],
        ),
      ),
    );
  }
}
