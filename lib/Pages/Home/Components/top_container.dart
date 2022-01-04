import 'package:flutter/material.dart';

import '../search_page.dart';

class TopContainer extends StatelessWidget {
  const TopContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff555fd2),
      height: 250,
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Stack(
          children: <Widget>[
            Column(
              children: [
                // ignore: prefer_const_constructors
                Align(
                  alignment: Alignment.topLeft,
                  // ignore: prefer_const_constructors
                  child: Text(
                    "Find your desired",
                    // ignore: prefer_const_constructors
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                ),
                // ignore: prefer_const_constructors
                Align(
                  alignment: Alignment.topLeft,
                  // ignore: prefer_const_constructors
                  child: Text(
                    "Doctor Right Now!",
                    // ignore: prefer_const_constructors
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}
