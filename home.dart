import 'package:flutter/material.dart';
import 'package:gridview1/custom.dart';

class home_page extends StatefulWidget {
  const home_page({super.key});

  @override
  State<home_page> createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text(
          "GridView.builder Sample",
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () => _scaffoldKey.currentState?.openDrawer(),
            icon: Icon(
              Icons.menu,
              color: Colors.black,
            )),
      ),
      body: Stack(
        children: [
          GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, childAspectRatio: 2 / 1),
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  if (grid[0]) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const custom()),
                    );
                  }
                },
                child: Container(
                  color: const Color.fromARGB(255, 114, 172, 219),
                  margin: EdgeInsets.all(10),
                  child: Center(
                      child: Text(
                    grid[index],
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 20),
                  )),
                ),
              );
            },
            itemCount: grid.length,
          )
        ],
      ),
    );
  }
}

final List grid = [
  "0",
  "1",
  "2",
  "3",
  "4",
  "5",
  "6",
  "7",
];
