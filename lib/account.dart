import 'package:flutter/material.dart';

class Acc extends StatelessWidget {
  const Acc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
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

        body: SingleChildScrollView(

          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[

                Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/bg-personal.jpg'),
                        fit: BoxFit.cover
                    )
                  ),
                  height: 200,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(30.0, 30.0, 20.0, 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10.0),
                                child: Image.asset('assets/car-icon.png'),
                            ),
                            const Text('История ТО и\nдокументация по\nвашему автомобилю',
                                style: TextStyle(color: Colors.white)),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(30.0, 30.0, 0, 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10.0),
                              child: Image.asset('assets/wrench-icon.png'),
                            ),
                            const Text('Онлайн-запись на\nсервисное\nобслуживание',
                                style: TextStyle(color: Colors.white)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(30.0, 30.0, 0, 20.0),
                  child: Text(
                    "Личный кабинет",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),

                const Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(30.0, 0, 0, 30.0),
                  child: Text('Уже регистрировались?\n'
                      'Используйте ваши данные, чтобы войти.',
                      style: TextStyle(color: Colors.grey)),
                ),

                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(30.0, 0, 30.0, 20.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const <Widget>[
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 20.0, 0),
                        child: Text('Вход',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 20.0, 0),
                        child: Text('Регистрация')
                      )
                    ],
                  ),
                ),

                const Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(30.0, 0, 30.0, 0),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Ваш номер телефона',
                      ),
                    )
                ),

                const Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(30.0, 0, 30.0, 0),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: 'Пароль',
                      ),
                    )
                ),

                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(30.0, 30.0, 30.0, 0),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          minimumSize: const Size.fromHeight(50)
                      ),
                      child: const Text('Войти'),
                      onPressed: () {})
                ),
              ]
          ),
        ),
    );
  }
}