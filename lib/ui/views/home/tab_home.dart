import 'package:flutter/material.dart';
import 'package:flutter_clonning_apps/ui/views/home/tab_chat.dart';
import 'package:flutter_clonning_apps/utils/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TabHome extends StatelessWidget {
    Widget orderSearch() {
        return Container(
            padding: EdgeInsets.only(left: 15, right: 15),
            child: Row(
                children: [
                    Expanded(
                        child: Container(
                            height: 40,
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Colors.grey[100],
                                border: Border.all(
                                    color: Colors.black12
                                ),
                                borderRadius: BorderRadius.all(
                                    Radius.circular(40)
                                ),
                            ),
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                    Icon(Icons.search, color: Colors.black87, size: 20),
                                    SizedBox(width: 10),
                                    Text(
                                        'Order the best nasgor in town...',
                                        style: TextStyle(
                                            fontSize: 15.5,
                                            color: Colors.black45
                                        ),
                                    )
                                ],
                            ),
                        ),
                    ),
                    SizedBox(width: 20),
                    CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.green[700],
                        child: IconButton(
                            splashColor: Colors.blue,
                            icon: FaIcon(
                                FontAwesomeIcons.userAlt,
                                size: 15,
                            ),
                            onPressed: () {},
                            color: Colors.white,
                        ),
                    ),
                ],
            ),
        );
    }

    Widget iconMainMenu(BuildContext context) {
        return Container(
            margin: EdgeInsets.only(left: 15, right: 15),
            height: 140,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Colors.blue[400],
                borderRadius: BorderRadius.all(
                    Radius.circular(25)
                )
            ),
        );
    }

    Widget listPicksButton() {
        return Container(
            height: 35,
            alignment: Alignment.center,
            child: ListView.builder(
                itemCount: listNameTopPicks.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                    return Container(
                        margin: EdgeInsets.only(right: 10, left: (index == 0) ? 15 : 0),
                        child: Chip(
                            backgroundColor: (index == 0) ? Colors.green : transparant,
                            label: Text(
                                listNameTopPicks[index],
                                style: TextStyle(
                                    color: (index == 0) ? Colors.white : Colors.black
                                ),
                            ),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                    Radius.circular(20)
                                ),
                                side: BorderSide(
                                    color: (index == 0) ? Colors.white : Colors.black12
                                )
                            ),
                        )
                    );
                },
            )
        );
    }

    @override
    Widget build(BuildContext context) {
        return Container(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                    orderSearch(),
                    SizedBox(height: 20),
                    iconMainMenu(context),
                    SizedBox(height: 20),
                    Container(
                        margin: EdgeInsets.only(left: 15, right: 15),
                        child: Text(
                            "Top picks for you",
                            style: TextStyle(
                                fontSize: 23,
                                color: Colors.black,
                                fontWeight: FontWeight.w700
                            ),
                        ),
                    ),
                    SizedBox(height: 20),
                    listPicksButton()
                ]
            )
        );
    }
}