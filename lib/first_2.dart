import 'package:flutter/material.dart';
import 'package:grocery_1/SizeConfig.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig().init(constraints, orientation);
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'HomeScreen App',
              home: First_2(),
            );
          },
        );
      },
    );
  }
}

class First_2 extends StatefulWidget {
  First_2({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _First_2State createState() => _First_2State();
}

class _First_2State extends State<First_2> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[

          Stack(
            overflow: Overflow.visible,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: 50 * SizeConfig.heightMultiplier,
                decoration: BoxDecoration(
                    color: Color(0xffffecb3)
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 50.0),
                child: Row(
                  children: <Widget>[
                    GestureDetector(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: Icon(Icons.arrow_back_ios, color: Colors.black,)),
                    Spacer(),
                    Icon(Icons.shopping_cart, color: Colors.black,)
                  ],
                ),
              ),

              Positioned(
                top: 130.0,
                left: 100.0,
                child: Image.asset(
                  "assets/walnut.png",
                  fit: BoxFit.contain,
                  height: 50 * SizeConfig.imageSizeMultiplier,
                  width: 50 * SizeConfig.imageSizeMultiplier,),
              ),

              Positioned(
                top: 45 * SizeConfig.heightMultiplier,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 55 * SizeConfig.heightMultiplier,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(40.0),
                        topLeft: Radius.circular(40.0),
                      )
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0, top: 50.0, bottom: 20.0),
                        child: Text("Walnuts", style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 3 * SizeConfig.textMultiplier,
                            fontFamily: 'OpenSans'
                        ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text("250g", style: TextStyle(
                            color: Colors.amberAccent,
                            fontWeight: FontWeight.bold,
                            fontSize: 2.5 * SizeConfig.textMultiplier,
                            fontFamily: 'OpenSans'
                        ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0, top: 20.0),
                        child: Text('''Walnuts are rich in heart-healthy fats and high in antioxidants. What's more, regularly eating walnuts may improve brain health and reduce your risk of heart disease and cancer.''',
                          style: TextStyle(
                              color: Colors.black,
                              letterSpacing: 0.2,
                              fontWeight: FontWeight.bold,
                              fontSize: 1.8 * SizeConfig.textMultiplier,
                              fontFamily: 'OpenSans'
                          ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 30.0),
                        child: Row(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5.0),
                                      border: Border.all(color: Colors.grey)
                                  ),
                                  child: Icon(Icons.add, color: Colors.grey,),
                                ),
                                SizedBox(width: 3 * SizeConfig.widthMultiplier,),
                                Text("01", style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 3 * SizeConfig.textMultiplier,
                                    fontFamily: 'OpenSans'
                                ),),
                                SizedBox(width: 3 * SizeConfig.widthMultiplier,),
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5.0),
                                      border: Border.all(color: Colors.grey)
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left:5.0, right: 5.0),
                                    child: Text("-", style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 3 * SizeConfig.textMultiplier,
                                        fontFamily: 'OpenSans'
                                    ),),
                                  ),
                                ),
                              ],
                            ),
                            Spacer(),
                            Text("₹250", style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 3 * SizeConfig.textMultiplier,
                                fontFamily: 'OpenSans-Bold'
                            ),),
                          ],
                        ),
                      ),
                      SizedBox(height: 2 * SizeConfig.heightMultiplier,),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 40.0),
                        child: Row(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Icon(Icons.airport_shuttle),
                                SizedBox(width: 3 * SizeConfig.widthMultiplier,),
                                Text("Standard: Friday Evening", style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 0.2,
                                    fontSize: 1.5 * SizeConfig.textMultiplier,
                                    fontFamily: 'OpenSans'
                                ),),
                              ],
                            ),
                            Spacer(),
                            Text("You save : 30%", style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 1.5 * SizeConfig.textMultiplier,
                                fontFamily: 'OpenSans-Bold'
                            ),),
                          ],
                        ),
                      ),
                      SizedBox(height: 3 * SizeConfig.heightMultiplier,),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Row(
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(color: Colors.amberAccent),
                                  borderRadius: BorderRadius.circular(5.0)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Icon(Icons.favorite_border, color: Colors.amberAccent,),
                              ),
                            ),
                            SizedBox(width: 3 * SizeConfig.widthMultiplier,),
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    color: Colors.amberAccent
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Icon(Icons.shopping_basket, color: Colors.white,),
                                      SizedBox(width: 1 * SizeConfig.widthMultiplier,),
                                      Text("Bag it", style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 2.5 * SizeConfig.textMultiplier,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'OpenSans-Bold'
                                      ),)
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),

    );
  }
}