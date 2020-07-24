import 'package:flutter/material.dart';

class CardGoFood extends StatelessWidget {
    String assetImage;
    String titleImage;
    String title;
    String price;

    CardGoFood({
        this.assetImage = 'lib/assets/images/source-gojek/image-gofood.jpg',
        @required this.titleImage,
        @required this.title,
        @required this.price,
    });

    @override
    Widget build(BuildContext context) {
        return Container(
            margin: EdgeInsets.only(left: 5, bottom: 5, top: 5, right: 10),
            height: 225,
            width: 150,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                    Radius.circular(10)
                ),
                boxShadow: <BoxShadow> [
                    BoxShadow(
                        color: Colors.black38,
                        spreadRadius: 0,
                        blurRadius: 2,
                        offset: Offset(0, 1)
                    )
                ]
            ),
            child: Column(
                children: [
                    Expanded(
                        flex: 3,
                        child: Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        this.assetImage,
                                    ),
                                    fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                ),
                            ),
                            width: 150,
                            padding: EdgeInsets.all(10),
                            alignment: Alignment.bottomCenter,
                            child: Text(
                                '${this.titleImage}',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold
                                ),
                            ),
                        ),
                    ),
                    Expanded(
                        flex: 2,
                        child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10),
                                ),
                            ),
                            padding: EdgeInsets.all(10),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                    Text(
                                        '${this.title}',
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 2,
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold
                                        ),
                                    ),
                                    Text(
                                        '${this.price}',
                                        style: TextStyle(
                                            color: Colors.black54,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w400
                                        ),
                                    )
                                ],
                            ),
                        ),
                    )
                ],
            ),
        );
    }
}