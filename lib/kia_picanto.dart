// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class KiaPicanto extends StatelessWidget {
  const KiaPicanto({Key? key}) : super(key: key);

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
              height: 50,
            ),
            Text(
              'Модели KIA',
              style: TextStyle(
                color: Colors.black,
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              height: 35,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 15),
                    height: 15,
                    child: TextButton(
                        onPressed: () {
                          Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
                        },
                        child: Text('Sportage'),
                        style: TextButton.styleFrom(primary: Colors.black)),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 15),
                    height: 15,
                    child: TextButton(
                        onPressed: () {},
                        child: Text('Picanto'),
                        style: TextButton.styleFrom(primary: Colors.black)),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 15),
                    height: 15,
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushNamedAndRemoveUntil(context, '/stinger', (route) => false);
                      },
                      child: Text('Stinger', style: TextStyle(color: Colors.black),),
                      // style: TextButton.styleFrom(primary: Colors.black)
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 15),
                    height: 15,
                    child: TextButton(
                        onPressed: () {},
                        child: Text('Cerato'),
                        style: TextButton.styleFrom(primary: Colors.black)),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 15),
                    height: 15,
                    child: TextButton(
                        onPressed: () {},
                        child: Text('Seltos'),
                        style: TextButton.styleFrom(primary: Colors.black)),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 15),
                    height: 15,
                    child: TextButton(
                        onPressed: () {},
                        child: Text('Sorento'),
                        style: TextButton.styleFrom(primary: Colors.black)),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 15),
                    height: 15,
                    child: TextButton(
                        onPressed: () {},
                        child: Text('Mohave'),
                        style: TextButton.styleFrom(primary: Colors.black)),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 15),
                    height: 15,
                    child: TextButton(
                        onPressed: () {},
                        child: Text('Carnival'),
                        style: TextButton.styleFrom(primary: Colors.black)),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Image.asset('assets/kia_picanto.jpg'),
            SizedBox(
              height: 30.0,
            ),
            Text(
              'Picanto',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              'от 1 334 900 ₽',
              style: TextStyle(color: Colors.black, fontSize: 15.0),
            ),
            SizedBox(
              height: 20.0,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(context, '/infPicanto', (route) => false);
              },
              child: Text('Подробнее о модели'),
              style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  padding:
                  EdgeInsets.symmetric(horizontal: 50.0, vertical: 20.0)),
            )
          ],
        ),
      ),
    );
  }
}