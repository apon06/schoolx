import 'package:flutter/material.dart';
import 'package:klutter_youtube_player_iframe_plus/klutter_youtube_player_iframe_plus.dart';
import 'package:schoolx/App/schoolx/widgets/glowing_text.dart';
import '../widgets/glowing_continer.dart';

class ClassModel extends StatelessWidget {
  final List<Map<String, String>> className;
  final String classId;
  final String classSubject;
  const ClassModel({
    Key? key,
    required this.className,
    required this.classId,
    required this.classSubject,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(16, 13, 34, 1),
        body: SingleChildScrollView(
          child: Center(
            child: Container(
              constraints: const BoxConstraints(maxWidth: 500),
              child: Column(
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  ListView.separated(
                    shrinkWrap: true,
                    itemCount: className.length,
                    separatorBuilder: (context, index) {
                      return const SizedBox(height: 20);
                    },
                    itemBuilder: (context, index) {
                      return Center(
                        child: Padding(
                          padding: const EdgeInsets.all(3),
                          child: GlowingContiner(
                            height: 320,
                            width: MediaQuery.of(context).size.width * 0.9,
                            borderRadius: 5,
                            color: const Color.fromRGBO(19, 32, 67, 1),
                            blurRadius: 200,
                            spreadRadius: 3,
                            boxShadowColor: Colors.blue,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(3),
                                  child: YoutubePlayerIframePlusHelp(
                                    initialVideoId:
                                        className[index][classId].toString(),
                                    aspectRatio: 16 / 9,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(3),
                                  child: GlowingText(
                                    text: className[index][classSubject]
                                        .toString(),
                                    fontWeight: FontWeight.normal,
                                    color: Colors.white,
                                    shadowColor: Colors.blue,
                                    blueRadius: 0,
                                    fontsize: 20,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
