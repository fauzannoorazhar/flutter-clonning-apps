import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class GoridePage extends StatefulWidget {
    GoridePage({Key key}) : super(key: key);

    @override
    _GoridePageState createState() => _GoridePageState();
}

class _GoridePageState extends State<GoridePage> {
    PanelController panelController = new PanelController();
    Set<Marker> setMarker = Set<Marker>();
    Position _position;
    double defaultHeightPanel = 350;
    String textHeader = 'Mau Pergi Kemana?';

    bool showMap = true;

    @override
    void initState() {
        super.initState();
    }

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            body: Column(
                children: [
                    Visibility(
                        visible: this.showMap,
                        child: Expanded(
                            child: Container(
                                child: Center(child: Text("Google Map here")),
                            ),
                        ),
                    ),
                    Expanded(
                        child: slidingUpPanel(),
                    )
                ],
            )
        );
    }

    Widget getGoogleMap() {
        return Container(
            height: MediaQuery.of(context).size.height,
            color: Colors.blue[50],
            child: Center(child: Text("Google Map here")),
        );
    }

    Widget slidingUpPanel() {
        return SafeArea(
            child: SlidingUpPanel(
                controller: this.panelController,
                isDraggable: false,
                minHeight: 300,
                defaultPanelState: PanelState.CLOSED,
                maxHeight: MediaQuery.of(context).size.height - 24,
                renderPanelSheet: true,
                panel: Container(
                    alignment: Alignment.topCenter,
                    padding: EdgeInsets.fromLTRB(15, 25, 15, 0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                            Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                    Visibility(
                                        visible: !this.showMap,
                                        child: Container(
                                            alignment: Alignment.centerLeft,
                                            child: InkWell(
                                                child: Icon(Icons.close),
                                                onTap: () {
                                                    if (this.panelController.isPanelOpen) {
                                                        FocusScope.of(context).unfocus();
                                                        setState(() {
                                                            this.panelController.isPanelClosed;
                                                            this.showMap = true;
                                                            this.panelController.close();
                                                        });
                                                    }
                                                },
                                            ),
                                            width: 35,
                                        ),
                                    ),
                                    Text(
                                        textHeader,
                                        style: TextStyle(
                                            fontSize: 20
                                        ),
                                    ),
                                ],
                            ),
                            Container(
                                margin: EdgeInsets.only(bottom: 5, top: 5),
                                child: TextFormField(
                                    //readOnly: true,
                                    textCapitalization: TextCapitalization.words,
                                    decoration: InputDecoration(
                                        //border: OutlineInputBorder(),
                                        labelText: 'Cari Lokasi Tujuan',
                                    ),
                                    onTap: () {
                                        if (this.panelController.isPanelClosed) {
                                            setState(() {
                                                this.showMap = false;
                                                this.panelController.open();
                                            });
                                        }
                                    },
                                    maxLines: 1,
                                    onChanged: (value) {

                                    },
                                ),
                            ),
                            SizedBox(height: 5),
                            CustomSearchCategories(),
                            Expanded(
                                child: SingleChildScrollView(
                                    child: Column(
                                        children: [
                                            ListTile(
                                                title: Text('Daftar Perjalanan History'),
                                            ),
                                            ListTile(
                                                title: Text('Daftar Perjalanan History'),
                                            ),
                                            ListTile(
                                                title: Text('Daftar Perjalanan History'),
                                            ),
                                            ListTile(
                                                title: Text('Daftar Perjalanan History'),
                                            ),
                                            ListTile(
                                                title: Text('Daftar Perjalanan History'),
                                            ),
                                        ],
                                    )
                                )
                            )
                        ],
                    )
                ),
            )
        );
    }
}

class CustomSearchCategories extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
                children: <Widget>[
                    CustomCategoryChip(Icons.home, "Rumah"),
                    SizedBox(width: 12),
                    CustomCategoryChip(Icons.build, "Kantor"),
                    SizedBox(width: 12),
                    CustomCategoryChip(Icons.not_listed_location, "Tambah Lokasi Lain"),
                ],
            ),
        );
    }
}

class CustomCategoryChip extends StatelessWidget {
    final IconData iconData;
    final String title;

    CustomCategoryChip(this.iconData, this.title);

    @override
    Widget build(BuildContext context) {
        return Chip(
            label: Row(
                children: <Widget>[Icon(iconData, size: 16), SizedBox(width: 8), Text(title)],
            ),
            backgroundColor: Colors.grey[200],
        );
    }
}