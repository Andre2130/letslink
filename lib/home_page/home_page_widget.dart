import '../flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePageWidget extends StatefulWidget {
  HomePageWidget({Key key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  final pageViewController = PageController();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.primaryColor,
        automaticallyImplyLeading: true,
        leading: Icon(
          Icons.menu,
          color: Colors.black,
          size: 24,
        ),
        title: Text(
          'Let\'s Link',
          style: FlutterFlowTheme.bodyText1.override(
            fontFamily: 'Poppins',
          ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 4,
      ),
      drawer: Drawer(
        elevation: 16,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            ListTile(
              title: Text(
                'Profile',
                style: FlutterFlowTheme.title3.override(
                  fontFamily: 'Poppins',
                ),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: Color(0xFF303030),
                size: 20,
              ),
              tileColor: Color(0xFFF5F5F5),
              dense: false,
            ),
            ListTile(
              title: Text(
                'Group',
                style: FlutterFlowTheme.title3.override(
                  fontFamily: 'Poppins',
                ),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: Color(0xFF303030),
                size: 20,
              ),
              tileColor: Color(0xFFF5F5F5),
              dense: false,
            ),
            ListTile(
              title: Text(
                'Calendar',
                style: FlutterFlowTheme.title3.override(
                  fontFamily: 'Poppins',
                ),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: Color(0xFF303030),
                size: 20,
              ),
              tileColor: Color(0xFFF5F5F5),
              dense: false,
            )
          ],
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            PageView(
              controller: pageViewController,
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.black,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        'Categories',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.title1.override(
                          fontFamily: 'Poppins',
                          color: Colors.white,
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: GridView(
                              padding: EdgeInsets.zero,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                crossAxisSpacing: 10,
                                mainAxisSpacing: 10,
                                childAspectRatio: 1,
                              ),
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              children: [
                                Card(
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  color: Color(0xFFF5F5F5),
                                  child: Card(
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                    color: Color(0xFFF5F5F5),
                                    child: Stack(
                                      children: [
                                        Align(
                                          alignment: Alignment(0.09, -0.28),
                                          child: Image.network(
                                            'https://picsum.photos/seed/341/600',
                                            width: 100,
                                            height: 100,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment(-0.1, 0.92),
                                          child: Text(
                                            'Sports',
                                            style: FlutterFlowTheme.bodyText1
                                                .override(
                                              fontFamily: 'Poppins',
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Card(
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  color: Color(0xFFF5F5F5),
                                  child: Stack(
                                    children: [
                                      Align(
                                        alignment: Alignment(-0.22, -0.2),
                                        child: Image.network(
                                          'https://picsum.photos/seed/269/600',
                                          width: 100,
                                          height: 100,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment(-0.18, 0.88),
                                        child: Text(
                                          'Night Life',
                                          style: FlutterFlowTheme.bodyText1
                                              .override(
                                            fontFamily: 'Poppins',
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Card(
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  color: Color(0xFFF5F5F5),
                                  child: Stack(
                                    children: [
                                      Align(
                                        alignment: Alignment(0, 0),
                                        child: Image.network(
                                          'https://picsum.photos/seed/585/600',
                                          width: 100,
                                          height: 100,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment(0.08, 0.84),
                                        child: Text(
                                          'Outdoor',
                                          style: FlutterFlowTheme.bodyText1
                                              .override(
                                            fontFamily: 'Poppins',
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Card(
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  color: Color(0xFFF5F5F5),
                                  child: Stack(
                                    children: [
                                      Align(
                                        alignment: Alignment(0, 0),
                                        child: Image.network(
                                          'https://picsum.photos/seed/39/600',
                                          width: 100,
                                          height: 100,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment(-0.05, 0.88),
                                        child: Text(
                                          'Adventure',
                                          style: FlutterFlowTheme.bodyText1
                                              .override(
                                            fontFamily: 'Poppins',
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Card(
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  color: Color(0xFFF5F5F5),
                                  child: Stack(
                                    children: [
                                      Align(
                                        alignment: Alignment(0, 0),
                                        child: Image.network(
                                          'https://picsum.photos/seed/585/600',
                                          width: 100,
                                          height: 100,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment(0.08, 0.84),
                                        child: Text(
                                          'Outdoor',
                                          style: FlutterFlowTheme.bodyText1
                                              .override(
                                            fontFamily: 'Poppins',
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Card(
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  color: Color(0xFFF5F5F5),
                                  child: Stack(
                                    children: [
                                      Align(
                                        alignment: Alignment(0, 0),
                                        child: Image.network(
                                          'https://picsum.photos/seed/585/600',
                                          width: 100,
                                          height: 100,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment(0.08, 0.84),
                                        child: Text(
                                          'Outdoor',
                                          style: FlutterFlowTheme.bodyText1
                                              .override(
                                            fontFamily: 'Poppins',
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Card(
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  color: Color(0xFFF5F5F5),
                                  child: Stack(
                                    children: [
                                      Align(
                                        alignment: Alignment(0, 0),
                                        child: Image.network(
                                          'https://picsum.photos/seed/585/600',
                                          width: 100,
                                          height: 100,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment(0.08, 0.84),
                                        child: Text(
                                          'Outdoor',
                                          style: FlutterFlowTheme.bodyText1
                                              .override(
                                            fontFamily: 'Poppins',
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Card(
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  color: Color(0xFFF5F5F5),
                                  child: Stack(
                                    children: [
                                      Align(
                                        alignment: Alignment(0, 0),
                                        child: Image.network(
                                          'https://picsum.photos/seed/585/600',
                                          width: 100,
                                          height: 100,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment(0.08, 0.84),
                                        child: Text(
                                          'Outdoor',
                                          style: FlutterFlowTheme.bodyText1
                                              .override(
                                            fontFamily: 'Poppins',
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Card(
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  color: Color(0xFFF5F5F5),
                                  child: Stack(
                                    children: [
                                      Align(
                                        alignment: Alignment(0, 0),
                                        child: Image.network(
                                          'https://picsum.photos/seed/585/600',
                                          width: 100,
                                          height: 100,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment(0.08, 0.84),
                                        child: Text(
                                          'Outdoor',
                                          style: FlutterFlowTheme.bodyText1
                                              .override(
                                            fontFamily: 'Poppins',
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Card(
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  color: Color(0xFFF5F5F5),
                                  child: Stack(
                                    children: [
                                      Align(
                                        alignment: Alignment(0, 0),
                                        child: Image.network(
                                          'https://picsum.photos/seed/585/600',
                                          width: 100,
                                          height: 100,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment(0.08, 0.84),
                                        child: Text(
                                          'Outdoor',
                                          style: FlutterFlowTheme.bodyText1
                                              .override(
                                            fontFamily: 'Poppins',
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Image.network(
                  'https://picsum.photos/seed/90/600',
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
                Image.network(
                  'https://picsum.photos/seed/633/600',
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                )
              ],
            ),
            Align(
              alignment: Alignment(0, 1),
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 15),
                child: SmoothPageIndicator(
                  controller: pageViewController,
                  count: 3,
                  axisDirection: Axis.horizontal,
                  onDotClicked: (i) {
                    pageViewController.animateToPage(
                      i,
                      duration: Duration(milliseconds: 500),
                      curve: Curves.ease,
                    );
                  },
                  effect: ExpandingDotsEffect(
                    expansionFactor: 2,
                    spacing: 8,
                    radius: 16,
                    dotWidth: 16,
                    dotHeight: 16,
                    dotColor: Color(0xFF9E9E9E),
                    activeDotColor: FlutterFlowTheme.primaryColor,
                    paintStyle: PaintingStyle.fill,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
