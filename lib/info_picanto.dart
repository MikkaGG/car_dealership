
import 'package:flutter/material.dart';

class InfPicanto extends StatelessWidget {
  const InfPicanto({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title:
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children:[
            IconButton(onPressed: () {
              Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
            },
              icon: const Icon(Icons.home), color: Colors.black,),
            IconButton(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(context, '/shopcart', (route) => false);
              },
              icon: const Icon(Icons.shopping_cart),
              color: Colors.black,
            ),
            const Padding(padding: EdgeInsets.only(left: 75.0, right: 125.0),
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
                }, icon: const Icon(Icons.person), color: Colors.black),
          ],
        ),
        backgroundColor: Colors.grey,
      ),
      body: Center(
          child:
          ListView(
            scrollDirection: Axis.vertical,
            children:[
              Column(
                  children: [
                    const Text('Picanto', style: TextStyle(
                      shadows: [
                        Shadow(
                          blurRadius:10.0,  // shadow blur
                          color: Colors.grey, // shadow color
                          offset: Offset(4.0,4.0), // how much shadow will be shown
                        ),
                      ],
                      fontSize: 50,
                    color: Colors.black,
                    fontFamily: 'Montserrat',
                    ),),
                    const SizedBox(
                    height: 30.0,
                    ),
                    Container(
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(Radius.circular(16.0)),
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.6),
                              offset: const Offset(2.5, 2.5),
                              blurRadius: 16,
                            ),
                          ],
                        ),
                        margin: const EdgeInsets.all(2),
                        child: ClipRRect(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15),
                            bottomLeft: Radius.circular(15),
                            bottomRight: Radius.circular(15),
                          ),
                          child: Image.asset(
                            'assets/kia_picanto2.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                    ),
                    const SizedBox(
                    height: 20.0,
                    ),
                    const Text('Вдохновляйтесь. Заряжайтесь',
                      style: TextStyle(fontWeight: FontWeight.bold,
                          fontSize: 28.0, color: Colors.black,
                      fontFamily: 'Montserrat'),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                    width: 380,
                    child: const Text('Перед вами модный автомобиль, идеальный для городских улиц и скоростных магистралей. Дерзкий дизайн, продуманный интерьер и передовые технологии безопасности воплощают собой автомобиль, способный притягивать взгляды и восхищать, куда бы вы ни отправились.', style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontFamily: 'Montserrat',
                      shadows: [
                        Shadow(
                          blurRadius:10.0,  // shadow blur
                          color: Colors.grey, // shadow color
                          offset: Offset(1.0,1.0), // how much shadow will be shown
                        ),
                      ],
                      ),
                      textAlign: TextAlign.justify,
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    const Text(
                      'от 1 334 900 ₽',
                      style: TextStyle(color: Colors.black, fontSize: 18.0),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 10.0,
                      ),),
                    ElevatedButton(onPressed: () {
                      Navigator.pushNamedAndRemoveUntil(context, 'address na new list', (route) => true);
                    },
                    child: const Text('Оформить'),
                    style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 20.0),
                    )),
                  const SizedBox(
                    height: 20.0,
                  )
                  ]
              )
            ],
          )
      ),
    );
  }
}
