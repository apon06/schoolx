import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:schoolx/App/schoolx/pages/home_page.dart';
import 'package:schoolx/App/schoolx/widgets/glowing_continer.dart';
import 'package:schoolx/App/schoolx/widgets/glowing_text.dart';

class WellComePage extends StatelessWidget {
  const WellComePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Container(
            constraints: const BoxConstraints(
              maxWidth: 400,
            ),
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.fromLTRB(95, 30, 0, 0),
                  child: GlowingText(
                    text: 'Wellcome Schoolx',
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    shadowColor: Colors.blue,
                    blueRadius: 50,
                    fontsize: 60,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 40, 10, 0),
                  child: GlowingContiner(
                    height: 50,
                    width: MediaQuery.of(context).size.width * 0.75,
                    blurRadius: 180,
                    spreadRadius: 2,
                    boxShadowColor: Colors.blue,
                    borderRadius: 3,
                    child: OutlinedButton(
                      style: ButtonStyle(
                        fixedSize: MaterialStateProperty.all(
                          const Size(300, 50.0),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomePage(),
                          ),
                        );
                      },
                      child: Text(
                        'Go Class',
                        style: GoogleFonts.adamina(
                          textStyle: const TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
