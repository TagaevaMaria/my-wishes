import 'package:flutter/material.dart';

/// все по виджету Твой кальян"
///виджет кнопки чаша
const myBorderRadius = 5.0;

class MyButtonstBowl extends StatelessWidget {
  const MyButtonstBowl({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            height: size.height,
            width: size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(myBorderRadius),
              color: Colors.white70,
              image: const DecorationImage(
                image: NetworkImage("https://proza.ru/pics/2013/03/11/565.jpg"),
              ),
            ),
          ),
          Text('Чаша'),
        ],
      ),
    );
  }
}

///виджет кнопки вода
class MyButtonstWater extends StatelessWidget {
  const MyButtonstWater({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            height: size.height,
            width: size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(myBorderRadius),
              color: Colors.white70,
              image: const DecorationImage(
                image: NetworkImage(
                    "https://st3.depositphotos.com/4060975/17024/v/1600/depositphotos_170246660-stock-illustration-h2o-vector-icon.jpg"),
              ),
            ),
          ),
          Text('Вода')
        ],
      ),
    );
  }
}

///виджет кнопки стандарт
class MyButtonstStandard extends StatelessWidget {
  const MyButtonstStandard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            height: size.height,
            width: size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(myBorderRadius),
              color: Colors.white70,
              image: const DecorationImage(
                image: NetworkImage(
                    "https://res.cloudinary.com/lmru/image/upload/LMCode/18205320.jpg"),
              ),
            ),
          ),
          Text('Стандарт')
        ],
      ),
    );
  }
}

///виджет кнопки крепость
class MyButtonstFortress extends StatelessWidget {
  const MyButtonstFortress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            height: size.height,
            width: size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(myBorderRadius),
              color: Colors.white70,
              image: const DecorationImage(
                image: NetworkImage(
                    "https://vse-trafarety.ru/public/uploads/images/cifry/pyat-3.jpg"),
              ),
            ),
          ),
          Text('Крепость'),
        ],
      ),
    );
  }
}

/// виджет кноппи отменить заказ
class CancelOrderModel {
  final String cancel;
  CancelOrderModel({required this.cancel});
}

class CancelOrder extends StatelessWidget {
  final CancelOrderModel cancel;

  const CancelOrder({Key? key, required this.cancel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(primary: Colors.red),
      onPressed: () {},
      child: Text(cancel.cancel),
    );
  }
}
