import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TabChat extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return Container(
            padding: EdgeInsets.only(left: 15, right: 15),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                    Text(
                        'Quick actions',
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 17
                        ),
                    ),
                    SizedBox(height: 30),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                            CircleIcon(
                                icon: FaIcon(FontAwesomeIcons.inbox, color: Colors.white),
                                title: 'Inbox',
                                backgroundColor: Colors.orange,
                            ),
                            CircleIcon(
                                icon: FaIcon(FontAwesomeIcons.users, color: Colors.white),
                                title: 'New Group',
                                backgroundColor: Colors.green,
                            ),
                            CircleIcon(
                                icon: FaIcon(FontAwesomeIcons.users, color: Colors.white),
                                title: 'Split Bill',
                                backgroundColor: Colors.blue[300],
                            ),
                            CircleIcon(
                                icon: FaIcon(FontAwesomeIcons.handHoldingUsd, color: Colors.white),
                                title: 'Pay',
                                backgroundColor: Colors.blue,
                            ),
                        ],
                    ),
                    SizedBox(height: 40),
                    Text(
                        'Your chats',
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 17
                        ),
                    ),
                    SizedBox(height: 40),
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                            SizedBox(
                                width: 80,
                                child: FaIcon(Icons.message, size: 65)
                            ),
                            Expanded(
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                        Text(
                                            "You've got chats, yet",
                                            style: TextStyle(
                                                fontSize: 17,
                                                fontWeight: FontWeight.bold
                                            ),
                                        ),
                                        SizedBox(height: 10),
                                        Text(
                                            "Once you say hi to a friend or have a GoPay transaction with them and vice versa, you'll see it here.",
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: Colors.black54,
                                                fontWeight: FontWeight.w400
                                            ),
                                        )
                                    ],
                                )
                            )
                        ],
                    )
                    // ListTile(
                    //     title: Text(
                    //         "You've got chats, yet",
                    //         style: TextStyle(
                    //             fontWeight: FontWeight.bold,
                    //         ),
                    //     ),
                    //     subtitle: Text(
                    //         "Once you say hi to a friend or have a GoPay transaction with them and vice versa, you'll see it here."
                    //     ),
                    //     leading: Icon(
                    //         Icons.chat,
                    //         size: 55,
                    //     ),
                    // )
                ],
            ),
        );
    }
}

class CircleIcon extends StatelessWidget {
    final Widget icon;
    final String title;
    final Color backgroundColor;
    final VoidCallback onPressed;

    CircleIcon({
        @required this.icon,
        @required this.title,
        this.backgroundColor,
        this.onPressed,
    });

    @override
    Widget build(BuildContext context) {
        return Column(
            children: [
                CircleAvatar(
                    radius: 26,
                    backgroundColor: this.backgroundColor,
                    child: IconButton(
                        splashColor: Colors.blue,
                        icon: this.icon,
                        onPressed: this.onPressed,
                        color: Colors.white,
                    ),
                ),
                Container(
                    margin: EdgeInsets.only(top: 6),
                    child: Text(
                        '${this.title}',
                        textAlign: TextAlign.center,
                        maxLines: 1,
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.w300
                        ),
                    ),
                )
            ],
        );
    }
}