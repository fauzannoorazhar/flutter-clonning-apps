import 'package:flutter/material.dart';
import 'package:flutter_clonning_apps/ui/views/example/google_maps_clone_page.dart';
import 'package:flutter_clonning_apps/ui/views/goride_page.dart';
import 'package:flutter_clonning_apps/ui/views/home/tab_chat.dart';
import 'package:flutter_clonning_apps/ui/views/home/tab_promos.dart';
import 'package:flutter_clonning_apps/ui/widgets/card_go_food.dart';
import 'package:flutter_clonning_apps/utils/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class HomeSlidingPanel extends StatelessWidget {
    final int indexTab;
    HomeSlidingPanel({
        @required this.indexTab,
    });
    PanelController panelController = new PanelController();

    @override
    Widget build(BuildContext context) {
        return SlidingUpPanel(
            controller: this.panelController,
            defaultPanelState: PanelState.OPEN,
            minHeight: 200,
            isDraggable: true,
            maxHeight: MediaQuery.of(context).size.height,
            renderPanelSheet: true,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), 
                topRight: Radius.circular(20)
            ),
            panel: Container(
                alignment: Alignment.topCenter,
                padding: EdgeInsets.only(bottom: 20),
                margin: EdgeInsets.only(top: 30),
                child: this.contentTab(context)
            ),
        );
    }

    Widget contentTab(BuildContext context) {
        if (this.indexTab == indexTabPromos) {
            return TabPromos();
        } else if (this.indexTab == indexTabHome) {
            return Container(
                child: Text('Home'),
            );
        } else {
            return TabChat();
        }
    }
}