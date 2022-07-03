import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unicons/unicons.dart';
import '../../assets/dart/theme.dart';
import '../../function/CartControl.dart';

class FoodCard extends StatefulWidget {
  final int id;
  final String name;
  final String price;
  final String category;

  FoodCard(
      {Key? key,
      required this.name,
      required this.id,
      required this.price,
      required this.category})
      : super(key: key);

  @override
  State<FoodCard> createState() => _FoodCardState();
}

class _FoodCardState extends State<FoodCard> {
  //controller for cart

  final CartControl control = Get.put(CartControl());

  bool _isSelect = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: InkWell(
        customBorder: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        onTap: () {
          Navigator.pushNamed(
            context,
            '/view',
            arguments: {
              "name":"Ammar"
            }
             );
        },
        child: JK_Container(
          width: 300,
          height: 320,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  // TODO : IMAGE
                  child: Image.asset(
                    'lib/assets/image/food.png',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(height: 12),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  textDirection: TextDirection.rtl,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
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
                    (!_isSelect)
                        ? IconButton(
                            onPressed: () {
                              setState(() {
                                _isSelect = !_isSelect;
                              });
                              control.cartList.add({
                                "id": 12,
                                "name": "Ammar",
                                "prodect": "1",
                                "price": "Inc",
                              });
                              control.add();
                              print(control.cartList);
                            },
                            icon: Icon(UniconsLine.plus),
                            iconSize: 30,
                            splashRadius: 10,
                          )
                        : IconButton(
                            onPressed: () {
                              setState(() {
                                _isSelect = !_isSelect;
                              });
                              control.remove();
                              control.cartList
                                  .removeWhere((el) => el['id'] == 1);
                              print(control.cartList);
                            },
                            icon: Icon(UniconsLine.times),
                            iconSize: 30,
                            splashRadius: 10,
                          ),
                  ],
                ),
              ),
              SizedBox(height: 8),
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
      ),
    );
  }
}
