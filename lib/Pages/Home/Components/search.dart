import 'package:flutter/material.dart';

import '../search_page.dart';

class SearchDoctor extends StatelessWidget {
  const SearchDoctor({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: const Color(0xff555FD2),
        centerTitle: true,
        title: Text(
          'Search Doctors',
          style: new TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        color: Color(0xffE3EBF4),
        child: DefaultTabController(
          length: 1,
          child: TabBarView(
            children: [
              // This CustomScrollView display the Home tab content
              CustomScrollView(
                slivers: [
                  // Anther sliver widget: SliverList
                  SliverList(
                    delegate: SliverChildListDelegate(
                      [
                        Container(
                          color: Color(0xffE3EBF4),
                          height: 500,
                          child: Padding(
                            padding: const EdgeInsets.all(30.0),
                            child: Column(
                              children: [
                                // ignore: prefer_const_constructors
                                Container(
                                  width: double.infinity,
                                  height: 40,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Center(
                                    child: TextField(
                                      decoration: InputDecoration(
                                          prefixIcon: Icon(Icons.search),
                                          suffixIcon: IconButton(
                                            icon: Icon(Icons.clear),
                                            onPressed: () {
                                              /* Clear the search field */
                                            },
                                          ),
                                          hintText: 'Search...',
                                          border: InputBorder.none),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 40.0,
                                ),
                                Image.asset('assets/images/suggest.png'),
                                // ignore: prefer_const_constructors
                              ],
                            ),
                          ),
                        ),

                        // ignore: prefer_const_constructors
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
