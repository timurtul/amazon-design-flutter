  import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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
                          icon: Icon(Icons.search ,color: Colors.black),
                          
                        ),
                      )
                    )
                  ]
                ),
            ),
            backgroundColor: Color(0xFF8BCFD7) ,
          ),


          body: Center(             
            child: Column(    
              children: [ 
                  Card( 
                        clipBehavior: Clip.antiAlias,
                        child: Column(                          
                          children: [ 
                            ListTile( 
                              leading: Icon(Icons.star),
                              title:  Text("Lipton Doğu Karadeniz Siyah Bardak Poşey Çay, 100'lü",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                              subtitle: Text( 
                                "Çok Satanlarda 1. Sırada" ,
                                style: TextStyle(color: Colors.white, backgroundColor: Colors.orange),
                              ),          
                            ),
                            
                              ButtonBar(
                  alignment: MainAxisAlignment.start,
                  children: [
                    FlatButton(
                      textColor: const Color(0xFF6200EE),
                      onPressed: () {
                        // Perform some action
                      },
                      child: Image.asset('assets/img.png', width: 500, height: 300,)  
                    ),
                  ],
                ),
                          ],
                        ),
                      ),  

                Card( 
                  clipBehavior: Clip.antiAlias,
                  child: Column(
                    children: [ 
                     ListTile(
                     title: Text("37.99TL", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 24)),
                     subtitle: Text("Fiyatlara KDV dahildir."),
                     
                     ),


                   ElevatedButton(
  style: ElevatedButton.styleFrom(
    fixedSize: Size(480, 40),
    primary: Color(0XFFF2A842), // background
    onPrimary: Color(0XFF0F1011),
    shape: (
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
      
     
    )
  ) // foreground
  ),
  onPressed: () { },
  
  child: Text('Şimdi Al'),
),
     Padding(padding: const EdgeInsets.all(4), ),
                  ElevatedButton(
  style: ElevatedButton.styleFrom(
        fixedSize: Size(480, 40),
    primary: Color(0XFFF9D94C), // background
    onPrimary: Color(0XFF0F1011),
    shape: (
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
      
     
    )
  ) // foreground
  ),
  onPressed: () { },
  
  child: Text('Sepete Ekle'),
)
                              ],
                  ),
                    ),
         
              ],
            ),
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