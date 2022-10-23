import 'package:flutter/material.dart';
import '../../../widget_hookan_seven/my_icon.dart';

/// Весь экран
final data = GoshModel(
  logo: 'HookanSeven',
  reyting: 'reyting',
  distance: 'distance',
  message: 'message',
  numberOrder: 'numberOrder',
  date: 'date',
  isFAvorite: true,
);

class ScreenGosha extends StatelessWidget {
  const ScreenGosha({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    const currentIndex = 0;
    return Scaffold(
      backgroundColor: Colors.white70,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 80),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(myBorderRadius),
                    color: Colors.white70,
                    image: const DecorationImage(
                      image: NetworkImage(
                          "https://down.imgspng.com/download/0720/qr_code_PNG15.png"),
                    ),
                  ),
                  height: size.width / 2,
                  width: size.width / 2,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: HookanSevenWidget(data: data),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: YourHookah(),
              ),
              CancelOrder(cancel: CancelOrderModel(cancel: 'fgfgfggfjdjd')),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {},
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'Меню',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add,
            ),
            label: 'Добавить',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.share), label: 'Поделиться'),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add,
            ),
            label: 'Добавить',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add,
            ),
            label: 'Добавить',
          ),
        ],
      ),
    );
  }
}

/// виджет HookanSeven
class GoshModel {
  final String logo;
  final String reyting;
  final String distance;
  final String message;
  final String numberOrder;
  final String date;
  final bool isFAvorite;

  GoshModel({
    required this.logo,
    required this.reyting,
    required this.distance,
    required this.message,
    required this.numberOrder,
    required this.date,
    required this.isFAvorite,
  });
}

class HookanSevenWidget extends StatelessWidget {
  final GoshModel data;

  const HookanSevenWidget({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5), color: Colors.white70),
      height: size.width / 2,
      width: size.height / 2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 15),
                child: Icon(
                  Icons.rectangle,
                  size: 50,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    data.logo,
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Icon(
                        Icons.star,
                        size: 15,
                      ),
                      Text(data.distance),
                      const Icon(
                        Icons.location_on,
                        size: 15,
                      ),
                      Text(data.distance),
                      const Icon(
                        Icons.message,
                        size: 15,
                      ),
                      Text(data.distance),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 10, right: 50),
                  child: Padding(
                    padding: EdgeInsets.only(left: 10, right: 50),
                    child: Text(
                      'Номер заказа',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Text(
                  data.numberOrder,
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ),
          Column(
            children: [
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 10, right: 50),
                    child: Padding(
                      padding: EdgeInsets.only(left: 10, right: 50),
                      child: Text(
                        'Дата и время',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Text(data.numberOrder),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

/// виджет твой кальян.
class YourHookahModel {
  final Icon bowl;
  final Icon water;
  final Icon standard;
  final Icon fortress;

  YourHookahModel({
    required this.bowl,
    required this.water,
    required this.standard,
    required this.fortress,
  });
}

class YourHookah extends StatelessWidget {
  const YourHookah({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final YourHookahModel YourHooka;
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        height: size.height / 3,
        width: size.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5), color: Colors.white70),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: Text('Твой кольян'),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 180),
                  child: Icon(Icons.favorite),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Divider(
                  height: 10,
                  thickness: 1,
                  indent: 30,
                  endIndent: 30,
                  color: Colors.grey[20],
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      MyButtonstBowl(),
                      MyButtonstWater(),
                      MyButtonstStandard(),
                      MyButtonstFortress(),
                    ],
                  ),
                ),
                Divider(
                  height: 10,
                  thickness: 1,
                  indent: 30,
                  endIndent: 30,
                  color: Colors.grey[20],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text(
                      'Пожелания по вкусу',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(2.0),
                          child: ElevatedButton(
                            style:
                                ElevatedButton.styleFrom(primary: Colors.grey),
                            onPressed: () {},
                            child: const Text(
                              'Ягодный',
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: ElevatedButton(
                            style:
                                ElevatedButton.styleFrom(primary: Colors.grey),
                            onPressed: () {},
                            child: const Text(
                              'Цитрусовый',
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: ElevatedButton(
                            style:
                                ElevatedButton.styleFrom(primary: Colors.grey),
                            onPressed: () {},
                            child: const Text(
                              'Добавить мяту',
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      height: 10,
                      thickness: 1,
                      indent: 30,
                      endIndent: 30,
                      color: Colors.grey[20],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, left: 10),
                      child: Row(
                        children: const [
                          Text('Цена',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Padding(
                            padding: EdgeInsets.only(left: 210),
                            child: Text('4360 р'),
                          )
                        ],
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
