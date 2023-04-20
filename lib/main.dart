import 'package:flutter/material.dart';

import 'package:ping_project/screens/auth/views/otp_view/otp_screen.dart';
import 'package:ping_project/screens/dating_screen/matches.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Matches(),
// =======
//       home: TicketNotes(),
// >>>>>>> shami_faisal_mix
    );
  }
}
