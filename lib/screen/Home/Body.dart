import 'package:flutter/material.dart';
import 'package:menuapp/assets/dart/theme.dart';
import 'FoodCard.dart';

class Body extends StatefulWidget {
  Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  //? Data
  List _name = ["البيتزا", "المشروبات", "البروستيد", "الحلويات"];
  List _image = ["1.png", "3.png", "4.png", "2.png"];
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 120,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: _name.length,
            itemBuilder: (context, index) => buildCategory(index),
          ),
        ),
        SizedBox(
          height: hightSize(context) - 250,
          child: Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: GridView.builder(
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 300,
                  childAspectRatio: 1.7 / 2,
                  mainAxisExtent: 330,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                ),
                itemCount: 11, 
                itemBuilder: (context, index) {
                  return FoodCard(
                    name: _name[_selectedIndex],
                    category: "",
                    id: 1,
                    price: "",
                  );
                },
                
              ),
            ),
          ),
        ),
      ],
    );
  }


  //* Category 
  Widget buildCategory(int index) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 100,
        height: 120,
        decoration: BoxDecoration(
          color: (_selectedIndex == index) ? JK_White : JK_Primery,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              blurRadius: 8,
              color: Colors.black12,
              offset: Offset(1, 1),
              spreadRadius: 1,
            )
          ],
        ),
        child: InkWell(
          customBorder: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          onTap: () {
            setState(() {
              _selectedIndex = index;
            });
          },
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                width: 50,
                "lib/assets/image/" + _image[index],
                fit: BoxFit.contain,
                color: (_selectedIndex == index) ? JK_Primery : JK_White,
              ),
              SizedBox(height: 10),
              Text(_name[index],
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: (_selectedIndex == index) ? JK_Primery : JK_White))
            ],
          ),
        ),
      ),
    );
  }
}
