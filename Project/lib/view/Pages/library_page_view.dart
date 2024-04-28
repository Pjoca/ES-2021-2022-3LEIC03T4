import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uni/view/Pages/general_page_view.dart';
import 'package:uni/view/Pages/secondary_page_view.dart';
import 'package:uni/view/Widgets/terms_and_conditions.dart';
import 'package:uni/view/theme.dart';

import '../Widgets/floors_detail.dart';

class LibraryPageView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => LibraryPageViewState();
}

/// Manages the 'Library' section of the app.
class LibraryPageViewState extends SecondaryPageViewState {
  @override
  Widget getBody(BuildContext context) {
    final MediaQueryData queryData = MediaQuery.of(context);
    return ListView(
      children: <Widget>[
        Container(
            child: Text('Biblioteca',
                style: librayHeadlineTheme,
            textAlign: TextAlign.center,),

        ),
        Center(
            child: Padding(
              padding: EdgeInsets.only(
                  left: queryData.size.width / 12,
                  right: queryData.size.width / 12,
                  top: queryData.size.width / 12,
                  bottom: queryData.size.width / 12),
              child: FloorsView(),
            ))
      ],
    );
  }
}

TextStyle librayHeadlineTheme = TextStyle(
    fontSize: 50.0,
    fontWeight: FontWeight.normal,
    color: Color.fromARGB(255, 0x75, 0x17, 0x1e));





