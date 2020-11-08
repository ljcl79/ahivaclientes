import 'package:expandable/expandable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class ItemEnvio extends StatelessWidget {
  String item;

  ItemEnvio({this.item});

  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
      child: Container(
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: HexColor('#BC3438'),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: ScrollOnExpand(
          scrollOnExpand: true,
          scrollOnCollapse: false,
          child: ExpandablePanel(
            iconColor: Colors.white,
            theme: const ExpandableThemeData(
              headerAlignment: ExpandablePanelHeaderAlignment.center,
              tapBodyToCollapse: true,
            ),
            header: Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  item,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold),
                )),
            collapsed: Container(
              color: HexColor('#FFFFFF'),
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
              height: MediaQuery.of(context).size.height * 0.15,
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Flexible(
                    child: Text('Aqui van los datos resumidos del envío',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: TextStyle(
                          color: Colors.black,
                        )),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Flexible(
                    flex: 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Flexible(
                          flex: 1,
                          child: Row(
                            children: [
                              Text(
                                'Linea 1:',
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                                style: TextStyle(color: Colors.black),
                              ),
                              Text('Valor 1'),
                            ],
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: Row(
                            children: [
                              Text(
                                'Linea 1:',
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                                style: TextStyle(color: Colors.black),
                              ),
                              Text('Valor 1'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Flexible(
                    flex: 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Flexible(
                          flex: 1,
                          child: Row(
                            children: [
                              Text(
                                'Linea 2:',
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                                style: TextStyle(color: Colors.black),
                              ),
                              Text('Valor 2'),
                            ],
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: Row(
                            children: [
                              Text(
                                'Linea 2:',
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                                style: TextStyle(color: Colors.black),
                              ),
                              Text('Valor 2'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                ],
              ),
            ),
            expanded: Container(
              color: HexColor('#FFFFFF'),
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
              height: MediaQuery.of(context).size.height * 0.25,
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Flexible(
                    child: Text('Aqui van los datos detallados del envío',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: TextStyle(
                          color: Colors.black,
                        )),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Flexible(
                    flex: 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Flexible(
                          flex: 1,
                          child: Row(
                            children: [
                              Text(
                                'Linea 1:',
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                                style: TextStyle(color: Colors.black),
                              ),
                              Text('Valor 1'),
                            ],
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: Row(
                            children: [
                              Text(
                                'Linea 1:',
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                                style: TextStyle(color: Colors.black),
                              ),
                              Text('Valor 1'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Flexible(
                    flex: 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Flexible(
                          flex: 1,
                          child: Row(
                            children: [
                              Text(
                                'Linea 2:',
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                                style: TextStyle(color: Colors.black),
                              ),
                              Text('Valor 2'),
                            ],
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: Row(
                            children: [
                              Text(
                                'Linea 2:',
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                                style: TextStyle(color: Colors.black),
                              ),
                              Text('Valor 2'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Flexible(
                    flex: 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Flexible(
                          flex: 1,
                          child: Row(
                            children: [
                              Text(
                                'Linea 3:',
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                                style: TextStyle(color: Colors.black),
                              ),
                              Text('Valor 3'),
                            ],
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: Row(
                            children: [
                              Text(
                                'Linea 3:',
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                                style: TextStyle(color: Colors.black),
                              ),
                              Text('Valor 3'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Flexible(
                    flex: 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Flexible(
                          flex: 1,
                          child: Row(
                            children: [
                              Text(
                                'Linea 4:',
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                                style: TextStyle(color: Colors.black),
                              ),
                              Text('Valor 4'),
                            ],
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: Row(
                            children: [
                              Text(
                                'Linea 4:',
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                                style: TextStyle(color: Colors.black),
                              ),
                              Text('Valor 4'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Flexible(
                    flex: 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Flexible(
                          flex: 1,
                          child: Row(
                            children: [
                              Text(
                                'Linea 5:',
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                                style: TextStyle(color: Colors.black),
                              ),
                              Text('Valor 5'),
                            ],
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: Row(
                            children: [
                              Text(
                                'Linea 5:',
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                                style: TextStyle(color: Colors.black),
                              ),
                              Text('Valor 5'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                ],
              ),
            ),
            builder: (_, collapsed, expanded) {
              return Padding(
                padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                child: Expandable(
                  collapsed: collapsed,
                  expanded: expanded,
                  theme: const ExpandableThemeData(crossFadePoint: 0),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
