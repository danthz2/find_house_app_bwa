import 'package:bwa_cozy/models/city.dart';
import 'package:bwa_cozy/theme.dart';
import 'package:flutter/material.dart';

class CityCard extends StatelessWidget {
  final City city;
  CityCard(this.city);

  @override
  Widget build(BuildContext context) {
    var isPopular = city.isPopular ?? false;
    return ClipRRect(
      borderRadius: BorderRadius.circular(18),
      child: Container(
        height: 150,
        width: 120,
        color: Color(0xffF6F7F8),
        child: Column(children: [
          Stack(
            children: [
              Image.asset(
                "${city.imageURL}",
                width: 120,
                height: 102,
                fit: BoxFit.cover,
              ),
              isPopular
                  ? Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        width: 50,
                        height: 30,
                        decoration: BoxDecoration(
                            color: purpleColor,
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(25))),
                        child: Center(
                          child: Image.asset(
                            "assets/icon_star.png",
                            width: 22,
                            height: 22,
                          ),
                        ),
                      ),
                    )
                  : Container(),
            ],
          ),
          SizedBox(
            height: 11,
          ),
          Text(
            "${city.name}",
            style: blackTextStyle.copyWith(fontSize: 16),
          )
        ]),
      ),
    );
  }
}
