import 'dart:ui';

import 'package:chef_online/widgets/ChefButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

class _Appbar extends SliverPersistentHeaderDelegate {
  _Appbar();
  final double minHeight = 100 ;
  final double maxHeight = 150;

  @override
  double get minExtent => this.minHeight;
  @override
  double get maxExtent => this.maxHeight;

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    print(shrinkOffset);
    final heigth = MediaQuery.of(context).size.height;
    return Container(
      width: MediaQuery.of(context).size.width,
      height:  maxHeight,
      color: Color(0xffC10000),
      child: Stack(
        children: <Widget>[
          if(shrinkOffset <100)
            Positioned(
            left: 10,
            top: 30,
            width: MediaQuery.of(context).size.width*0.90,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  'O que você está procurando?',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w600
                  ),
                ),
                GestureDetector(
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.filter_list,
                          color: Colors.white,
                          size: 30,
                        ),

                      ],
                    ),
                  ),
              ],
            ),
          ),
          Positioned(
            top: 80-(shrinkOffset<= 50.0 ? shrinkOffset : 50.0),
                    width: MediaQuery.of(context).size.width,
                    child: Center(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                  color: Colors.white,
                                ),
                                child: Stack(
                                  children: <Widget>[
                                    TextField(
                                      decoration: InputDecoration(
                                        fillColor: Color(0xffC10000),
                                        focusColor: Colors.white,
                                        hintText: "Pesquise sua comida favorita...",
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10.0),
                                          borderSide: BorderSide(color: Colors.grey, width: 1),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10.0),
                                          borderSide: BorderSide(color: Colors.white, width: 1),
                                        ),
                                      ),
                                      style: TextStyle(fontSize: 16.0, color: Colors.grey[800]),
                                    ),
                                    Positioned(
                                        bottom: 10 ,
                                        right: 10,
                                        child: Icon(Icons.search,size: 40,color: Colors.grey[500],)
                                    )
                                  ],
                                )),
                            SizedBox(
                              height: 20,
                            ),

                          ]),
                    ),
                  )
                ,
        ],
      ),
    );
  }

  @override
  bool shouldRebuild(_Appbar oldDelegate) {
    print(oldDelegate.maxExtent);
    return true;
  }
}
class _PromotionCard extends SliverPersistentHeaderDelegate {
  _PromotionCard();
  final double minHeight = 300 ;
  final double maxHeight = 300;

  @override
  double get minExtent => this.minHeight;
  @override
  double get maxExtent => this.maxHeight;

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    print(overlapsContent);
    return Container(
      width: MediaQuery.of(context).size.width,
      height:  maxHeight,
      child: Stack(
          children: <Widget>[
            Positioned(
              top: 30,
              left: 20,
              child: Text(
                "Promoção",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500
                ),
              ),
            ),

            Positioned(
              top:  60,
              left: 20,
              width: MediaQuery.of(context).size.width*0.90,
              child: Stack(
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/promotion.jpeg')
                      )
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 200,
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 0.5, sigmaY: 0.1),
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [
                            Colors.black26,
                            Colors.black54,
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,

                          )
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    left: 10,
                    child: Column(

                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'O Monstro Chegou!'.toUpperCase(),
                          style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 25,
                            color: Colors.white,

                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Big Hambúrger Duplo',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                            color: Colors.white,

                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    right: 20,
                    bottom: 20,
                    height: 40,
                    width: 120,
                    child: ChefButton(
                        onPressed: (){},
                        color: Color(0xFFC10000),
                        title: "Eu Quero!".toUpperCase(),
                        ),
                  )
                ],
              ),
            ),Positioned(
                bottom: 2,
                left: 10,
                child: Text('Sugestions',style: TextStyle(
                  fontSize: 25
                ),)),
          ],
      ),
    );
  }
  @override
  bool shouldRebuild(_PromotionCard oldDelegate) {
    print(oldDelegate.maxExtent);
    return true;
  }
}

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() {
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen> {
  ScrollController controller = ScrollController();
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<int> test = [1,2,3,4,5,6,7,8,9,10,100];
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: buildBody(test),
      bottomNavigationBar: buildBottomNavigationBar(),
    );
  }

  SafeArea buildBody(List<int> test) {
    return SafeArea(
      child:Container(
      width: double.infinity,
      height: double.infinity,
      child: CustomScrollView(
          controller: controller,
          slivers: <Widget>[
            SliverPersistentHeader(
              delegate: _Appbar(),
              pinned: true,
            ),
            SliverPersistentHeader(
              delegate: _PromotionCard(),
              pinned: false,
            ),


            SliverGrid.count(
              crossAxisCount: 2,
              children: test.map((e) => buildProductItem(e)).toList()
              ),
          ],
        ),
      ),
    );
  }
  BottomNavigationBar buildBottomNavigationBar() {
    return BottomNavigationBar(
      backgroundColor: Colors.red,
        iconSize: 40,
        selectedLabelStyle: TextStyle(
          color: Colors.white
        ),
        showSelectedLabels: true,
        elevation: 1,
        fixedColor: Colors.red,
        selectedIconTheme: IconThemeData(
          color: Color(0xCCC10000),
          size: 40
        ),
        unselectedItemColor: Colors.grey[800],
        selectedFontSize: 20,
        showUnselectedLabels: true,
        unselectedFontSize: 18,
        unselectedIconTheme: IconThemeData(
            color: Color(0xAAC10000),
            size: 40
        ),
        unselectedLabelStyle: TextStyle(
          color: Color(0xAAC10000),
        ),

        items: [
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        title: Text('Home',style: TextStyle(
          color: Colors.grey[500]
        ),)
      ),
      BottomNavigationBarItem(
        icon:  Icon(Icons.restaurant_menu),
        title:  Text('Menu', style: TextStyle(
          color: Colors.grey[500]
        ),)
      ),
      BottomNavigationBarItem(
          icon:  Icon(Icons.shopping_cart),
          title: Text('Cart',style: TextStyle(
            color: Colors.grey[500]
          ),)
      ),
      BottomNavigationBarItem(
          icon:  Icon(Icons.fastfood),
          title: Text('Invoices',style: TextStyle(
            color: Colors.grey[500]
          ),)
      ),

    ]);
  }
  Widget buildProductItem(item){
    return Container(
      width: 200,
      height: 200,
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Card(
          elevation: 1,
          color: Colors.white,
          margin: EdgeInsets.symmetric(horizontal: 4,vertical: 2),
          child: Stack(
            children: <Widget>[
              Positioned(
                height: 150,
                width: 225,
                child: Container(
                    color: Colors.red,
                    child: Placeholder(color: Colors.red)
                ),
              ),
              Positioned(
                bottom: 55,
                left: 10,
                child: Text(
                  "Product name",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500
                  ),
                ),
              ),
              Positioned(
                bottom: 35,
                left: 10,
                child: Text(
                  "Product category",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500
                  ),
                ),
              ),
              Positioned(
                bottom: 10,
                right: 20,
                child: Text(
                  "R\$ ${item}0",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w800,
                    color: Color(0xFFC10000)

                  ),
                ),
              ),
              Positioned(
                bottom: 6,
                left: 10,
                child: Row(
                  children: <Widget>[
                    Icon(Icons.star,color: Colors.yellow,),
                    Icon(Icons.star,color: Colors.yellow,),
                    Icon(Icons.star,color: Colors.yellow,),
                    Icon(Icons.star_half,color: Colors.yellow,),
                    Icon(Icons.star_border,color: Colors.yellow,),
                  ],
                ),
              )


            ],
          ),
        ),
      ),
    );
  }
}