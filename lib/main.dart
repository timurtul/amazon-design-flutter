import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
//Amazon'un ürün sayfası design'ı
class MyApp extends StatelessWidget{
  const MyApp({Key? key}) :super(key:key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp( 
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({ Key? key }) : super(key: key);
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar( 
          leading: Icon(Icons.arrow_back_rounded, color: Colors.black,),
         //  title: Text('Amazon'),
          title: Container(
          margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
          decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(12.0)),
              ),
              child: Row( 
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded( 
                    flex: 1,
                    child: TextFormField( 
                      decoration: InputDecoration( 
                        border: InputBorder.none,
                        hintText: "Amazon.com.tr'de Ara",
                        hintStyle: TextStyle(color: Colors.black),
                        icon: Icon(Icons.search ,color: Colors.black,),

                        
                      ),
                    )
                  )
                ]
              ),
          ),
          actions: [ 
            Icon(Icons.search),
            Padding(padding: EdgeInsets.symmetric(horizontal: 16),
            ),
          ],
          backgroundColor: Color(0xFF8BCFD7) ,
        ),
        
        bottomNavigationBar: BottomNavigationBar( 
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          selectedItemColor: Color(0xFF2D6D81),
          unselectedItemColor: Colors.black,
          selectedFontSize: 14,
          unselectedFontSize: 14,
          onTap: (value) {
    // Respond to item press.
  },  
          items: [
            BottomNavigationBarItem(
              title: Text(""),
                 icon: Icon(Icons.home),
            ),

            BottomNavigationBarItem(
                            title: Text(""),

                 icon: Icon(Icons.person),
            ),

            BottomNavigationBarItem(
                            title: Text(""),

                 icon: Icon(Icons.shopping_cart),
            ),

            BottomNavigationBarItem(
                            title: Text(""),

                 icon: Icon(Icons.list),
            ),
          ],
        ),

    );
  }
}