
import 'package:doctor_chamber/Pages/Login/loginpage.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../constant.dart';
import 'onboard_model.dart';

class OnBoard extends StatefulWidget {
  @override
  _OnBoardState createState() => _OnBoardState();
}

class _OnBoardState extends State<OnBoard> {
  int currentIndex = 0;
  late PageController _pageController;
  List<OnboardModel> screens = <OnboardModel>[
    OnboardModel(
      img: 'assets/images/model_1.png',
      text: "Thousands of doctors",
      desc:
          "Access thousands of doctors instantly. You can easily contact with the doctors and contact for your needs.",
      bg: Colors.red,
      button: Color(0xFF4756DF),
    ),
    OnboardModel(
      img: 'assets/images/model2.png',
      text: "Live talk with doctors",
      desc:
          "Easily connect with doctor and start video chat for your better treatment & prescription.",
      bg: Colors.green,
      button: Colors.white,
    ),
    OnboardModel(
      img: 'assets/images/model_3.png',
      text: "Chat with doctors",
      desc:
          "Book an appointment with doctor.Chat with doctor via appoinment letter & get consultant.",
      bg: Colors.green,
      button: Color(0xFF4756DF),
    ),
  ];

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  _storeOnboardInfo() async {
    print("Shared pref called");
    int isViewed = 0;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('onBoard', isViewed);
    print(prefs.getInt('onBoard'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: currentIndex % 2 == 0 ? Cwhite : Cwhite,
      appBar: AppBar(
        backgroundColor: currentIndex % 2 == 0 ? Cwhite : Cwhite,
        elevation: 0.0,
        actions: [],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5.0),
        child: PageView.builder(
          itemCount: screens.length,
          controller: _pageController,
          physics: NeverScrollableScrollPhysics(),
          onPageChanged: (int index) {
            setState(() {
              currentIndex = index;
            });
          },
          itemBuilder: (_, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  screens[index].img,
                  height: 300.0,
                  width: 700.0,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  height: 10.0,
                  child: ListView.builder(
                    itemCount: screens.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 3.0),
                              width: currentIndex == index ? 25 : 8,
                              height: 8,
                              decoration: BoxDecoration(
                                color:
                                    currentIndex == index ? kbrown : kbrown300,
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                          ]);
                    },
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),
                Text(
                  screens[index].text,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Poppins',
                    color: index % 2 == 0 ? kblack : kblack,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  screens[index].desc,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15.0,
                    fontFamily: 'Poppins',
                    color: index % 2 == 0 ? kdesc : kdesc,
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),
                InkWell(
                  onTap: () async {
                    print(index);
                    if (index == screens.length - 1) {
                      await _storeOnboardInfo();
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MyLoginScreen()));
                    }

                    _pageController.nextPage(
                      duration: Duration(milliseconds: 300),
                      curve: Curves.bounceIn,
                    );
                  },
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 30.0, vertical: 10),
                    decoration: BoxDecoration(
                        color: index % 2 == 0 ? kblue : kwhite,
                        borderRadius: BorderRadius.circular(15.0)),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          index == screens.length - 1 ? "Get Started" : "Next",
                          style: TextStyle(
                              fontSize: 16.0,
                              color: index % 2 == 0 ? Cwhite : Cwhite),
                        ),
                        SizedBox(
                          width: 15.0,
                        ),
                      ],
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    _storeOnboardInfo();
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MyLoginScreen()));
                  },
                  child: Text(
                    index == screens.length - 1 ? " " : "Skip for now",
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                      color: currentIndex % 2 == 0 ? kskip : kskip,
                    ),
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
