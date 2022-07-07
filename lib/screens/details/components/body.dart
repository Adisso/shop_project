import 'package:flutter/material.dart';
import 'package:shop_project/components/default_button.dart';
import 'package:shop_project/size_config.dart';
import '../../../models/product.dart';
import 'color_dots.dart';
import 'product_description.dart';
import 'product_images.dart';
import 'top_rounded_container.dart';

class Body extends StatelessWidget {
  const Body({Key? key, required this.product}) : super(key: key);

  final Product product;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ProductImages(product: product),
          TopRoundedContainer(
            color: Colors.white,
            child: Column(
              children: [
                ProductDescription(
                  product: product,
                  pressOnSeeMore: () {},
                ),
                TopRoundedContainer(
                  color: const Color(0xFFF6F7F9),
                  child: Column(
                    children: [
                      ColorDots(product: product),
                      TopRoundedContainer(
                        color: Colors.white,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: getProportionateScreenWidth(50),
                            right: getProportionateScreenWidth(50),
                            top: getProportionateScreenWidth(15),
                            bottom: getProportionateScreenWidth(40),
                          ),
                          child: DefaultButton(
                            press: () {},
                            text: "Add to Chart",
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
