import 'package:flutter/material.dart';
import 'package:flutter_clonning_apps/ui/widgets/card_go_food.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TabPromos extends StatelessWidget {
    Widget promoCardDashboard(BuildContext context, int total, String title, String subTitle, Color colors) {
        return Container(
            height: 100,
            width: 115,
            decoration: BoxDecoration(
                color: colors,
                borderRadius: BorderRadius.all(
                    Radius.circular(10)
                ),
            ),
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.all(12),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                    Text(
                        total.toString(),
                        style: TextStyle(
                            fontSize: 23,
                            color: Colors.white,
                            fontWeight: FontWeight.w700
                        ),
                    ),
                    Text(
                        title,
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.w600
                        ),
                    ),
                    Text(
                        subTitle,
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontWeight: FontWeight.w300
                        ),
                    )
                ],
            )
        );
    }

    Widget promoCodeEnter(BuildContext context) {
        return Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
                border: Border.all(
                    color: Colors.black12
                ),
                borderRadius: BorderRadius.all(
                    Radius.circular(50),
                ),
            ),
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                    SizedBox(
                        width: 25,
                        child: Icon(
                            FontAwesomeIcons.percent,
                            size: 14,
                        ),
                    ),
                    Text(
                        'Got a promo code? Enter here',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600
                        ),
                    ),
                    Expanded(
                        child: Align(
                            alignment: Alignment.centerRight,
                            child: Icon(
                                FontAwesomeIcons.chevronRight,
                                size: 16,
                                color: Colors.black45,
                            ),
                        )
                    )
                ],
            )
        );
    }

    Widget promoGofoodList(BuildContext context) {
        return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                Container(
                    padding: EdgeInsets.only(left: 15, right: 15),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                            Text(
                                'All prices chopped!',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16
                                ),
                            ),
                            Text(
                                'See All',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: Colors.green[700],
                                    fontSize: 15
                                ),
                            ),
                        ],
                    ),
                ),
                SizedBox(height: 10),
                Container(
                    padding: EdgeInsets.only(left: 15, right: 15),
                    child: Text('Check out our menus on promo today!'),
                ),
                SizedBox(height: 10),
                Container(
                    height: 250,
                    padding: EdgeInsets.only(left: 15),
                    child: NotificationListener<OverscrollIndicatorNotification>(
                        onNotification: (overscroll) {
                            overscroll.disallowGlow();
                        },
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 4,
                            itemBuilder: (BuildContext context, int index) {
                                return CardGoFood(
                                    titleImage: 'Warko Makyus Pisan Euy',
                                    title: 'Kopi Susu Khas Toraja Manyuks',
                                    price: '11.000',
                                );
                            },
                        ),
                    )
                )
            ],
        );
    }

    Widget promoImagesList(BuildContext context) {
        return Container(
            margin: EdgeInsets.only(left: 15, right: 15),
            height: 200,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                        'lib/assets/images/source-gojek/image-promo.jpg',
                    ),
                    fit: BoxFit.fill
                ),
                color: Colors.blue,
                borderRadius: BorderRadius.all(
                    Radius.circular(15)
                )
            ),
        );
    }

    @override
    Widget build(BuildContext context) {
        return Container(
            margin: EdgeInsets.only(top: 25),
            child: NotificationListener<OverscrollIndicatorNotification>(
                onNotification: (overscroll) {
                    overscroll.disallowGlow();
                },
                child: SingleChildScrollView(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                            Container(
                                padding: EdgeInsets.only(left: 15, right: 15),
                                child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                        promoCardDashboard(context, 28, 'Voucher', '8 Expiring Soon', Colors.orange),
                                        SizedBox(width: 8),
                                        promoCardDashboard(context, 0, 'Subscriptions', 'Active Now', Colors.blue),
                                        SizedBox(width: 8),
                                        promoCardDashboard(context, 0, 'Subscriptions', 'In Progress', Colors.purple),
                                    ],
                                ),
                            ),
                            SizedBox(height: 20),
                            Container(
                                padding: EdgeInsets.only(left: 15, right: 15),
                                child: promoCodeEnter(context)
                            ),
                            SizedBox(height: 20),
                            Container(
                                padding: EdgeInsets.only(left: 15, right: 15),
                                child: Text(
                                    "Promos you can't resist",
                                    style: TextStyle(
                                        fontSize: 23,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w700
                                    ),
                                ),
                            ),
                            SizedBox(height: 20),
                            promoGofoodList(context),
                            SizedBox(height: 20),
                            promoImagesList(context),
                            SizedBox(height: 20),
                            promoImagesList(context),
                            SizedBox(height: 100),
                        ],
                    )
                )
            )
        );
    }
}