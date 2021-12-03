import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/material.dart';
import 'silder.dart';
import 'search_page.dart';

class WithTabBarState extends StatefulWidget {
  const WithTabBarState({Key? key}) : super(key: key);

  @override
  _WithTabBarStateState createState() => _WithTabBarStateState();
}

class _WithTabBarStateState extends State<WithTabBarState> {
  int _selectedIndex = 0;

  List<Widget> _pages = <Widget>[
    DefaultTabController(
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
                      height: 400,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            SliderPage(),
                            SizedBox(
                              height: 10.0,
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "Most Popular Movies",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    height: 150.0,
                                    width: 150.0,
                                    child: Image.asset(
                                      "assets/images/movie_1.png",
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  Container(
                                    height: 150,
                                    width: 150,
                                    child: Image.asset(
                                      "assets/images/movie_2.png",
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  Container(
                                    height: 150,
                                    width: 150,
                                    child: Image.asset(
                                      "assets/images/movie_3.png",
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  Container(
                                    height: 150,
                                    width: 150,
                                    child: Image.asset(
                                      "assets/images/movie_4.png",
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  Container(
                                    height: 150,
                                    width: 150,
                                    child: Image.asset(
                                      "assets/images/movie_5.png",
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  Container(
                                    height: 150,
                                    width: 150,
                                    child: Image.asset(
                                      "assets/images/movie_6.png",
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  Container(
                                    height: 150,
                                    width: 150,
                                    child: Image.asset(
                                      "assets/images/movie_7.png",
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            //lllllllllllllllllllllllll
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Top Box Office",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 800,
                      child: GridView.count(
                        primary: false,
                        padding: const EdgeInsets.all(8.0),
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        crossAxisCount: 2,
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.all(8),
                            child: Image.asset(
                              "assets/images/movie_8.png",
                              fit: BoxFit.fill,
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(8),
                            child: Image.asset(
                              "assets/images/movie_9.png",
                              fit: BoxFit.fill,
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(8),
                            child: Image.asset(
                              "assets/images/movie_10.png",
                              fit: BoxFit.fill,
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(8),
                            child: Image.asset(
                              "assets/images/movie_11.png",
                              fit: BoxFit.fill,
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(8),
                            child: Image.asset(
                              "assets/images/movie_12.png",
                              fit: BoxFit.fill,
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(8),
                            child: Image.asset(
                              "assets/images/movie_13.png",
                              fit: BoxFit.fill,
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(8),
                            child: Image.asset(
                              "assets/images/movie_14.png",
                              fit: BoxFit.fill,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          // This shows the Settings tab content
        ],
      ),
    ),
    GridView.count(
      primary: false,
      padding: const EdgeInsets.all(8.0),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 2,
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(8),
          child: Image.asset(
            "assets/images/movie_8.png",
            fit: BoxFit.fill,
          ),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: Image.asset(
            "assets/images/movie_9.png",
            fit: BoxFit.fill,
          ),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: Image.asset(
            "assets/images/movie_10.png",
            fit: BoxFit.fill,
          ),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: Image.asset(
            "assets/images/movie_11.png",
            fit: BoxFit.fill,
          ),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: Image.asset(
            "assets/images/movie_12.png",
            fit: BoxFit.fill,
          ),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: Image.asset(
            "assets/images/movie_13.png",
            fit: BoxFit.fill,
          ),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: Image.asset(
            "assets/images/movie_14.png",
            fit: BoxFit.fill,
          ),
        ),
      ],
    ),
    Container(
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) => Card(
          
        )
      ),
    )
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xffEB6C30),
        centerTitle: true,
        title: Text(
          'Movie Theater',
          style: new TextStyle(
              fontSize: 20.0, fontWeight: FontWeight.w500, color: Colors.white),
        ),
        actions: [
          IconButton(
            onPressed: () => Navigator.of(context)
                .push(MaterialPageRoute(builder: (_) => SearchPage())),
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
          ],
        ),
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 20,
        selectedIconTheme: IconThemeData(color: Color(0xffEB6C30), size: 30),
        selectedItemColor: Color(0xffEB6C30),
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        unselectedItemColor: Color(0xff122A19),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.movie_sharp),
            label: 'Movies',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.tv_sharp),
            label: 'TV Series',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Celebs',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
