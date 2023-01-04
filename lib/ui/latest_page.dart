import 'package:flutter/material.dart';
import 'package:food/Animation/FadeAnimation.dart';

class LatestPage extends StatefulWidget {
  const LatestPage({super.key});

  @override
  State<LatestPage> createState() => _LatestPageState();
}

class _LatestPageState extends State<LatestPage> {
  final List<List<String>> products = [
    ['asset/images/hotelBig.png', 'Hugo Boss Oxygen', '100 \$'],
    ['asset/images/hotel2.png', 'Hugo Boss Signature', '120 \$'],
    ['asset/images/watch-2.jpg', 'Hugo Boss Signature', '120 \$'],
    ['asset/images/watch-3.jpg', 'Casio G-Shock Premium', '80 \$']
  ];

  int currentIndex = 0;

  void _next() {
    setState(() {
      if (currentIndex < products.length - 1) {
        currentIndex++;
      } else {
        currentIndex = currentIndex;
      }
    });
  }

  void _preve() {
    setState(() {
      if (currentIndex > 0) {
        currentIndex--;
      } else {
        currentIndex = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        child: FadeAnimation(
            1.5,
            Container(
              height: 60,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 71, 8, 100),
              ),
              child: Center(
                child: Text(
                  "CALL NOW",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
            )),
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Expanded(
              child: GestureDetector(
                onHorizontalDragEnd: (DragEndDetails details) {
                  if (details.velocity.pixelsPerSecond.dx > 0) {
                    _preve();
                  } else if (details.velocity.pixelsPerSecond.dx < 0) {
                    _next();
                  }
                },
                child: FadeAnimation(
                    .8,
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(products[currentIndex][0]),
                              fit: BoxFit.cover)),
                      child: Container(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.bottomRight,
                                colors: [
                              Colors.grey[700]!.withOpacity(.9),
                              Colors.grey.withOpacity(.0),
                            ])),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            FadeAnimation(
                                1,
                                Container(
                                  width: 90,
                                  margin: EdgeInsets.only(bottom: 50),
                                  child: Row(
                                    children: _buildIndicator(),
                                  ),
                                ))
                          ],
                        ),
                      ),
                    )),
              ),
            ),
            Container(
              height: 410,
              child: Transform.translate(
                offset: Offset(0, -30),
                child: FadeAnimation(
                    1,
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(30),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30))),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          FadeAnimation(
                            1.3,
                            Row(
                              children: [
                                Image.asset("asset/images/hotel2.png"),
                                const SizedBox(
                                  width: 15,
                                ),
                                Column(
                                  children: [
                                    Text(
                                      "Efes Pastry",
                                      maxLines: 2,
                                      style: TextStyle(
                                          color: Colors.grey[800],
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Icon(
                                          Icons.star,
                                          size: 18,
                                          color: Colors.yellow[700],
                                        ),
                                        Icon(
                                          Icons.star,
                                          size: 18,
                                          color: Colors.yellow[700],
                                        ),
                                        Icon(
                                          Icons.star,
                                          size: 18,
                                          color: Colors.yellow[700],
                                        ),
                                        Icon(
                                          Icons.star,
                                          size: 18,
                                          color: Colors.yellow[700],
                                        ),
                                        Icon(
                                          Icons.star,
                                          size: 18,
                                          color: Colors.yellow[700],
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          FadeAnimation(
                            1.7,
                            Container(
                              height: 45,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(139, 153, 131, 30),
                                  borderRadius: BorderRadius.circular(8)),
                              child: Center(
                                child: Text(
                                  "ONLINE ORDER",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black38),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          FadeAnimation(
                            1.8,
                            Container(
                              height: 45,
                              decoration: BoxDecoration(
                                  color: Colors.yellow[700],
                                  borderRadius: BorderRadius.circular(8)),
                              child: Center(
                                child: Text(
                                  "SEE THE MENU",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          FadeAnimation(
                            1.9,
                            Container(
                              height: 45,
                              decoration: BoxDecoration(
                                  color: Colors.yellow[700],
                                  borderRadius: BorderRadius.circular(8)),
                              child: Center(
                                child: Text(
                                  "GO TO WEBSİTE",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          FadeAnimation(
                            2.0,
                            Container(
                              height: 45,
                              decoration: BoxDecoration(
                                  color: Colors.yellow[700],
                                  borderRadius: BorderRadius.circular(8)),
                              child: Center(
                                child: Text(
                                  "GOOGLE MAP",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          FadeAnimation(
                            2.0,
                            Container(
                              height: 45,
                              decoration: BoxDecoration(
                                  color: Colors.yellow[700],
                                  borderRadius: BorderRadius.circular(8)),
                              child: Center(
                                child: Text(
                                  "WORK HOURS",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _indicator(bool isActive) {
    return Expanded(
      child: Container(
        height: 4,
        margin: EdgeInsets.only(right: 5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: isActive ? Colors.grey[800] : Colors.white),
      ),
    );
  }

  List<Widget> _buildIndicator() {
    List<Widget> indicators = [];
    for (int i = 0; i < products.length; i++) {
      if (currentIndex == i) {
        indicators.add(_indicator(true));
      } else {
        indicators.add(_indicator(false));
      }
    }

    return indicators;
  }
}
