import 'package:coffee_shop_app/app/data/coffee_model.dart';
import 'package:coffee_shop_app/configs/configs.dart';
import 'package:coffee_shop_app/constants/constants.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(defaultPadding),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Good Morning Jein,',
                  style: primaryTextStyle.copyWith(
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  height: getProperWidht(18),
                ),
                Container(
                  width: getProperWidht(239),
                  child: Text(
                    'Find your best coffee for your day',
                    style: primaryTextStyle.copyWith(
                      fontSize: 24,
                      fontWeight: semiBold,
                    ),
                  ),
                ),
                SizedBox(
                  height: getProperWidht(18),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: kBackgroundColor2.withOpacity(0.6),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: TextFormField(
                    style: primaryTextStyle,
                    decoration: InputDecoration(
                      hintText: 'Find your coffee',
                      prefixIcon: Icon(
                        Icons.search,
                        color: kSubtitleTextColor,
                      ),
                      hintStyle: subtitleTextStyle,
                      border: InputBorder.none,
                    ),
                  ),
                ),
                SizedBox(
                  height: getProperWidht(18),
                ),
                Text(
                  'Promo For You',
                  style: primaryTextStyle.copyWith(
                    fontWeight: semiBold,
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: getProperWidht(18),
                ),
                Container(
                  height: getProperWidht(130),
                  padding: EdgeInsets.all(defaultPadding),
                  margin: EdgeInsets.only(
                    bottom: getProperWidht(8),
                  ),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/images/banner-image.png',
                      ),
                    ),
                  ),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      width: getProperWidht(102),
                      child: Text(
                        '50% Discount for All Purchases This Morning',
                        style: primaryTextStyle.copyWith(
                          fontWeight: semiBold,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: DotsIndicator(
                    dotsCount: 5,
                    decorator: DotsDecorator(
                      activeColor: kPrimaryColor,
                      size: const Size.square(9.0),
                      activeSize: const Size(18.0, 9.0),
                      activeShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: getProperWidht(18),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: CoffeeModel.listCoffee
                        .map(
                          (e) => BadgeMenu(
                            title: e.title,
                            isActive: e.title == 'Black Coffee',
                          ),
                        )
                        .toList(),
                  ),
                ),
                SizedBox(
                  height: getProperWidht(18),
                ),
                Wrap(
                  children: CoffeeModel.listCoffee
                      .map(
                        (e) => MenuCard(coffeeModel: e),
                      )
                      .toList(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MenuCard extends StatelessWidget {
  const MenuCard({
    Key? key,
    required this.coffeeModel,
  }) : super(key: key);

  final CoffeeModel coffeeModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
          EdgeInsets.only(top: getProperWidht(10), right: getProperWidht(10)),
      width: getProperWidht(150),
      decoration: BoxDecoration(
        color: kBackgroundColor2.withOpacity(0.6),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: getProperWidht(132),
            width: getProperWidht(135),
            margin: EdgeInsets.all(12),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  coffeeModel.image,
                ),
              ),
              borderRadius: BorderRadius.circular(34),
            ),
            child: Align(
              alignment: Alignment.topRight,
              child: Container(
                height: getProperWidht(26),
                width: getProperWidht(62),
                decoration: BoxDecoration(
                  color: kBackgroundColor2.withOpacity(0.4),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                  ),
                ),
                child: Center(
                  child: Text(
                    coffeeModel.rating,
                    style: primaryTextStyle,
                  ),
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  coffeeModel.title,
                  style: primaryTextStyle.copyWith(
                    fontWeight: medium,
                    fontSize: 14,
                  ),
                ),
                Text(
                  coffeeModel.subTitle,
                  style: subtitleTextStyle.copyWith(
                    fontSize: 12,
                  ),
                ),
                SizedBox(
                  height: getProperWidht(14),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 12, bottom: 12),
                child: Text(
                  coffeeModel.price.toString(),
                  style: primaryTextStyle.copyWith(
                    fontWeight: medium,
                    fontSize: 14,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(3),
                decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5),
                    bottomRight: Radius.circular(5),
                  ),
                ),
                child: Icon(
                  Icons.add,
                  color: kPrimaryTextColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class BadgeMenu extends StatelessWidget {
  const BadgeMenu({
    Key? key,
    required this.title,
    this.isActive = false,
  }) : super(key: key);

  final String title;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: getProperWidht(8)),
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: isActive ? kPrimaryColor.withOpacity(0.2) : null,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        title,
        style: primaryTextStyle.copyWith(
          color: isActive ? kPrimaryColor : kPrimaryTextColor,
          fontSize: 14,
        ),
      ),
    );
  }
}
