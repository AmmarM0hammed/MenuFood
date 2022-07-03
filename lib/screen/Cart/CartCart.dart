import 'package:flutter/material.dart';
import 'package:menuapp/assets/dart/theme.dart';

class CartCard extends StatefulWidget {
  CartCard({Key? key}) : super(key: key);

  @override
  State<CartCard> createState() => _CartCardState();
}

class _CartCardState extends State<CartCard> {
  int _counter = 1;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: JK_Container(
        width: 100,
        height: 130,
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  buttonInc("+", () {
                    setState(() {
                      _counter++;
                    });
                  }),
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0, left: 5, right: 5),
                    child: Text(_counter.toString(),
                        style: TextStyle(
                            color: JK_Black,
                            fontSize: 18,
                            fontWeight: FontWeight.w600)),
                  ),
                  buttonInc("-", () {
                    if (_counter != 1) {
                      setState(() {
                        _counter--;
                      });
                    }
                  }),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            " بيتزا باباروني ",
                            style: TextStyle(
                                color: JK_Black,
                                fontSize: 18,
                                fontWeight: FontWeight.w600),
                            overflow: TextOverflow.fade,
                            textAlign: TextAlign.end,
                          ),
                        ),
                        SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            "9,000 د",
                            style: TextStyle(
                                color: JK_Primery,
                                fontSize: 20,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        'lib/assets/image/food.png',
                        fit: BoxFit.fill,
                        width: 150,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  InkWell buttonInc(text, onPress) {
    return InkWell(
      onTap: onPress,
      child: Container(
        width: 25,
        height: 25,
        decoration: BoxDecoration(
            color: JK_Primery,
            boxShadow: [
              BoxShadow(
                blurRadius: 10,
                color: Colors.black12.withOpacity(.1),
                offset: Offset(1, 1),
                spreadRadius: 1,
              ),
            ],
            borderRadius: BorderRadius.circular(5)),
        child: Center(
            child: Text(text,
                style: TextStyle(
                    color: JK_White,
                    fontSize: 20,
                    fontWeight: FontWeight.w600))),
      ),
    );
  }
}
