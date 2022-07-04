import 'package:flutter/material.dart';

import '../../../size_config.dart';
import 'section_title.dart';
import 'special_offer_card.dart';

class SpecialOffers extends StatelessWidget {
  const SpecialOffers({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          text: "Special for you",
          press: () {},
        ),
        SizedBox(height: getProportionateScreenWidth(20)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SpecialOfferCard(
                category: "Smartphones",
                image: "assets/images/Image Banner 2.png",
                numOfBrands: 18,
                press: () {},
              ),
              SpecialOfferCard(
                category: "Fashion",
                image: "assets/images/Image Banner 3.png",
                numOfBrands: 7,
                press: () {},
              ),
              SizedBox(width: getProportionateScreenWidth(20)),
            ],
          ),
        ),
      ],
    );
  }
}
