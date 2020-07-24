import 'package:flutter/material.dart';
import 'package:flutter_clonning_apps/ui/views/example/google_maps_clone_page.dart';
import 'package:flutter_clonning_apps/ui/views/goride_page.dart';
import 'package:flutter_clonning_apps/ui/widgets/home_sliding_panel.dart';
import 'package:flutter_clonning_apps/utils/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class HomePage extends StatefulWidget {
    HomePage({Key key}) : super(key: key);

    @override
    _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
    bool panelState = false;
    PanelController panelController = new PanelController();
    int _selectedIndex = 0;

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            backgroundColor: Colors.lightBlue[400],
            // floatingActionButton: FloatingActionButton.extended(
            //     onPressed: () {
            //         return Navigator.push(
            //             context,
            //             MaterialPageRoute(builder: (_) => GoogleMapsClonePage())
            //         );
            //     },
            //     icon: FaIcon(FontAwesomeIcons.motorcycle),
            //     label: Text('Go Ride'),
            // ),
            body: Column(
                children: [
                    Container(
                        margin: EdgeInsets.only(bottom: 20, top: 10),
                        color: transparant,
                        child: SafeArea(
                            child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
                                child: GNav(
                                    gap: 8,
                                    activeColor: Colors.white,
                                    iconSize: 24,
                                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                                    duration: Duration(milliseconds: 800),
                                    tabBackgroundColor: Colors.black38,
                                    tabs: [
                                        GButton(
                                            icon: Icons.account_circle,
                                            text: 'Promos',
                                        ),
                                        GButton(
                                            icon: Icons.home,
                                            text: 'Home',
                                        ),
                                        GButton(
                                            icon: Icons.message,
                                            text: 'Chat',
                                        ),
                                    ],
                                    selectedIndex: _selectedIndex,
                                    onTabChange: (index) {
                                        setState(() {
                                            _selectedIndex = index;
                                        });
                                    }),
                            ),
                        ),
                    ),
                    Expanded(
                        child: HomeSlidingPanel(
                            indexTab: this._selectedIndex,
                        ),
                    )
                ],
            ),
        );
    }
}