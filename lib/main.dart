import 'package:appinio_video_player/appinio_video_player.dart';
import 'package:flutter/material.dart';

import 'App/schoolx/pages/wellcome_page.dart';

// void main() {
//   runApp(
//     DevicePreview(
//       builder: (context) => const MyApp(),
//     ),
//   );
// }

// class MyApp extends StatefulWidget {
//   const MyApp({super.key});

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       locale: DevicePreview.locale(context),
//       builder: DevicePreview.appBuilder,
//       theme: ThemeData.dark().copyWith(
//         scaffoldBackgroundColor: const Color.fromRGBO(16, 13, 34, 1),
//       ),
//       debugShowCheckedModeBanner: false,
//       // home: const Hi(
//       // // dataSourceType: DataSourceType.asset,
//       // url: 'assets/video/un.mp4',
//       // ),
//       // home: const TranslatorApp(),
//       home: const WellComePage(),
//     );
//   }
// }

void main(List<String> args) {
  runApp(
    const MaterialApp(
      home: WellComePage(),
    ),
  );
}

class Hi extends StatefulWidget {
  final String url;

  const Hi({
    super.key,
    required this.url,
  });

  @override
  State<Hi> createState() => _HiState();
}

class _HiState extends State<Hi> {
  late VideoPlayerController videoPlayerController;
  late CustomVideoPlayerController _customVideoPlayerController;

  @override
  void initState() {
    videoPlayerController = VideoPlayerController.asset(widget.url)
      ..initialize().then((value) => setState(
            () {
              _customVideoPlayerController = CustomVideoPlayerController(
                customVideoPlayerSettings: const CustomVideoPlayerSettings(
                  customAspectRatio: 16 / 9,
                ),
                context: context,
                videoPlayerController: videoPlayerController,
              );
            },
          ));
    super.initState();
    _customVideoPlayerController = CustomVideoPlayerController(
        context: context, videoPlayerController: videoPlayerController);
  }

  @override
  void dispose() {
    _customVideoPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomVideoPlayer(
        customVideoPlayerController: _customVideoPlayerController,
      ),
    );
  }
}
