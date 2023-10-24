import 'package:flutter/material.dart';
import 'package:schoolx/App/schoolx/widgets/glowing_continer.dart';
import 'package:schoolx/App/schoolx/widgets/glowing_text.dart';

import '../Data/home_page_data.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromRGBO(16, 13, 34, 1),
        // scaffoldBackgroundColor: Color.fromRGBO(19,32,67 , 1)
      ),
      home: Scaffold(
        body: Center(
          child: Container(
            constraints: const BoxConstraints(
              maxWidth: 400,
            ),
            child: Column(
              children: [
                const SizedBox(height: 30),
                ListView.separated(
                  shrinkWrap: true,
                  itemCount: homePageData.length,
                  separatorBuilder: (BuildContext, index) {
                    return const SizedBox(
                      height: 50,
                    );
                  },
                  itemBuilder: (BuildContext, index) {
                    return Center(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      homePageData[index]['Home_Pages_Name']));
                        },
                        child: GlowingContiner(
                          height: 70,
                          width: MediaQuery.of(context).size.width * 0.75,
                          // width: 200,
                          color: const Color.fromRGBO(19, 32, 67, 1),
                          blurRadius: 300,
                          boxShadowColor: Colors.blue,
                          spreadRadius: 0,
                          borderRadius: 5,
                          child: GlowingText(
                            text:
                                homePageData[index]['Subject_Name'].toString(),
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                            shadowColor: Colors.blue,
                            blueRadius: 30,
                            fontsize: 20,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
