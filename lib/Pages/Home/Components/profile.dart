// ignore_for_file: prefer_const_constructors
// ignore_for_file: sized_box_for_whitespace, prefer_final_fields, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:doctor_chamber/Pages/Home/Components/doctor_list.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  int _selectedIndex = 0;
  late BuildContext context;
  List<Widget> _pages = <Widget>[
    DefaultTabController(
      length: 1,
      child: TabBarView(
        children: [
          // This CustomScrollView display the Home tab content
          CustomScrollView(
            slivers: [
              SliverAppBar(
                pinned: false,
                elevation: 0.0,
                shadowColor: Color(0xff555FD2),
                foregroundColor: Color(0xff555FD2),
                backgroundColor: const Color(0xff555FD2),
                centerTitle: true,
                title: Text(
                  'Profile',
                  // ignore: unnecessary_new
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                actions: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.notification_important,
                      color: Colors.white,
                    ),
                  ),
                ],
              ), // Anther sliver widget: SliverList
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    Container(
                      height: 100.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(
                            40.0,
                          ),
                          bottomRight: Radius.circular(
                            40.0,
                          ),
                        ),
                        color: Color(0xff555FD2),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: CircleAvatar(
                              backgroundColor: Colors.amberAccent,
                              radius: 50.0,
                              child: Image.asset(
                                "assets/images/profile_1.png",
                                height: 200.0,
                              ),
                            ),
                          ),
                          Text(
                            "Fahim Ibne Mawa",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 10.0,
                        right: 25.0,
                        left: 25.0,
                      ),
                      child: Container(
                        height: 290.0,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                              10.0,
                            ),
                          ),
                          elevation: 10.0,
                          child: Column(
                            children: [
                              ListTile(
                                leading: Icon(Icons.person),
                                trailing: Icon(Icons.arrow_right),
                                title: Text("Profile Setting"),
                              ),
                              ListTile(
                                leading: Icon(Icons.notifications),
                                trailing: Icon(Icons.arrow_right),
                                title: Text("Notifications"),
                              ),
                              ListTile(
                                leading: Icon(Icons.favorite),
                                trailing: Icon(Icons.arrow_right),
                                title: Text("Favourite"),
                              ),
                              ListTile(
                                leading: Icon(Icons.payment),
                                trailing: Icon(Icons.arrow_right),
                                title: Text("Payment Details"),
                              ),
                              ListTile(
                                leading: Icon(Icons.payment),
                                trailing: Icon(Icons.arrow_right),
                                title: Text("Refer a Friend"),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 25.0,
                        right: 25.0,
                      ),
                      child: Container(
                        height: 170.0,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                              10.0,
                            ),
                          ),
                          elevation: 10.0,
                          child: Column(
                            children: [
                              ListTile(
                                leading: Icon(Icons.person),
                                trailing: Icon(Icons.arrow_right),
                                title: Text("Terms & Conditions"),
                              ),
                              ListTile(
                                leading: Icon(Icons.notifications),
                                trailing: Icon(Icons.arrow_right),
                                title: Text("About Us"),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  "Log Out",
                                  style: TextStyle(
                                    color: Colors.blue,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xffE8F1FA),
        child: IndexedStack(
          index: _selectedIndex,
          children: _pages,
        ),
      ),
    );
  }
}













// import 'package:flutter/material.dart';

// class Profile extends StatelessWidget {
//   const Profile({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         elevation: 0.0,
//         backgroundColor: const Color(0xff555FD2),
//         centerTitle: true,
//         // ignore: prefer_const_constructors
//         title: Text(
//           'Profile',
//           // ignore: prefer_const_constructors, unnecessary_new
//           style: TextStyle(
//             fontSize: 20.0,
//             fontWeight: FontWeight.w500,
//             color: Colors.white,
//           ),
//         ),
//         actions: [
//           Icon(Icons.notifications_on_rounded,)
//         ],
//       ),
//       body: Container(
//          transform: Matrix4.translationValues(0.0, -20.0, 0.0),
//         height: 200.0,
//         width: double.infinity,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.only(
//             bottomLeft: Radius.circular(
//               40.0,
//             ),
//             bottomRight: Radius.circular(
//               40.0,
//             ),
//           ),
//           color: Color(0xff555FD2),
//         ),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Expanded(
//               child: CircleAvatar(
//                 backgroundColor: Colors.amberAccent,
//                 radius: 50.0,
//                 child: Image.asset(
//                   "assets/images/profile_1.png",
//                 ),
//               ),
//             ),
//             Text(
//               "Fahim Ibne Mawa",
//               style: TextStyle(
//                 color: Colors.white,
//                 fontSize: 30.0,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
