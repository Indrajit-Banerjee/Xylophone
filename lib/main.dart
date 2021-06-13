import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void sound(int num) {
    final player = AudioCache();
    player.play('note$num.wav');
  }

  Expanded buildkey(Color color, int soundno) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          sound(soundno);
        },
        child: null,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildkey(Colors.orange.shade700, 1),
              buildkey(Colors.orange.shade700, 2),
              buildkey(Colors.orange.shade700, 3),
              buildkey(Colors.white, 4),
              buildkey(Colors.white, 5),
              buildkey(Colors.white, 6),
              buildkey(Colors.green.shade900, 7),
              buildkey(Colors.green.shade900, 2),
              buildkey(Colors.green.shade900, 4),
            ],
          ),
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:audioplayers/audio_cache.dart';

// void main() {
//   runApp(XylophoneApp());
// }

// class XylophoneApp extends StatelessWidget {
//   void playSound(int trackno) {
//     final player = AudioCache();
//     player.play('note$trackno.wav');
//   }

//   Expanded buildkey(Color color, int soundno) {
//     return Expanded(
//       child: FlatButton(
//           onPressed: () {
//             playSound(soundno);
//           },
//           child: null,
//          ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         backgroundColor: Colors.black,
//         body: SafeArea(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: [
//               buildkey(Colors.orange, 1),
//               buildkey(Colors.orange, 2),
//               buildkey(Colors.orange, 3),
//               buildkey(Colors.white, 4),
//               buildkey(Colors.white, 5),
//               buildkey(Colors.white, 6),
//               buildkey(Colors.green, 7),
//               buildkey(Colors.green, 4),
//               buildkey(Colors.green, 2),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
