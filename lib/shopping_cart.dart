// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ShopCart extends StatelessWidget {
  const ShopCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children:[
            IconButton(onPressed: () {
              Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
            },
              icon: Icon(Icons.home), color: Colors.black,),
            IconButton(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(context, '/shopcart', (route) => false);
              },
              icon: Icon(Icons.shopping_cart),
              color: Colors.black,
            ),
            Padding(padding: const EdgeInsets.only(left: 75.0, right: 125.0),
              child:
              Text('Kia',
                  style: TextStyle(
                      fontFamily: 'Bangers',
                      color: Colors.black,
                      fontSize: 30.0)),
            ),
            IconButton(
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(context, '/acc', (route) => false);
                }, icon: Icon(Icons.person), color: Colors.black),
          ],
        ),
        backgroundColor: Colors.grey,
      ),

        body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Text('Корзина',
              style: TextStyle(
              fontFamily: 'Bangers',
              color: Colors.black,
              fontSize: 30.0,),),
            SizedBox(
              height: 50,
              width: 20,
            ),
            Text('Вы ничего не добавили',
              style: TextStyle(
                fontFamily: 'Bangers',
                color: Colors.black,
                fontSize: 20.0,),),
            SizedBox(
              height: 10,
            ),
            Text('Но это легко исправить. Посмотрите каталог новых авто, авто с \n пробегом, подберите себе необходимые аксессуары, запчасти или \n закажите отчет по VIN ',
              style: TextStyle(
                color: Colors.black,
                fontSize: 13.0,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 60,
            ),

            Text('Добавьте в корзину',
              style: TextStyle(
                fontFamily: 'Bangers',
                color: Colors.black,
                fontSize: 20.0,),),
            SizedBox(
              height: 10,
            ),
            Row(
              children:[
                Padding(padding: EdgeInsets.only(left: 50.0)),
                Image.asset('assets/new_car.png'),
                ElevatedButton(onPressed: () {},
                    child: Text('Новые авто > ', style: TextStyle(color: Colors.white)),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.black54,
                      padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0), )),
              ],),
            SizedBox(
              height: 5,
            ),
            Row(
              children:[
                Padding(padding: EdgeInsets.only(left: 50.0)),
                Image.asset('assets/tu_car.jpg'),
                ElevatedButton(onPressed: () {},
                    child: Text('Авто с пробегом > ', style: TextStyle(color: Colors.white)),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.black54,
                      padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 34.5), )),
              ],),
            SizedBox(
              height: 5,
            ),
              Row(
                children:[
                  Padding(padding: EdgeInsets.only(left: 54.0)),
                  Image.asset('assets/key.jpg'),
                  ElevatedButton(onPressed: () {},
                    child: Text('Запчасти > ', style: TextStyle(color: Colors.white)),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.black54,
                      padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 58.0), )),
                ],),
            SizedBox(
              height: 5,
            ),
            Row(
              children:[
                Padding(padding: EdgeInsets.only(left: 50.0)),
                Image.asset('assets/accessories.jpg'),
                ElevatedButton(onPressed: () {},
                    child: Text('Аксессуары > ', style: TextStyle(color: Colors.white)),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.black54,
                      padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0), )),
              ],),
          ]
          )
          ),
    );
  }

}

