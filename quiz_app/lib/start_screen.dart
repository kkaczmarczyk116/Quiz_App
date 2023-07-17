import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz,{super.key});
  /*
  Constructor was modified. added positional parameter
  'startQuiz'  ( could have named it whatever as long as the name stays the same b/c of Flutters '.this' feature)

  In the 'quiz.dart' file, StartScreen is built with new parameter that points to switchScreen which get called onClick
  
  */

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color:const Color.fromARGB(187, 255, 255, 255),
          ),
          const SizedBox(height: 100),
          Text(
            'Learn FLutter the fun way!',
            style: GoogleFonts.lora(
                  color:const Color.fromARGB(255, 255, 255, 255),
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text("Start Quiz"),
          )
        ],
      ),
    );
  }
}
