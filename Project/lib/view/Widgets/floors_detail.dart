import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../controller/library_fetcher/library_fetcher.dart';
import '../../controller/library_fetcher/library_fetcher_api.dart';
import '../../model/entities/library_ocupation.dart';
import 'package:slidable_button/slidable_button.dart';
class FloorsView extends StatelessWidget{

  final LibraryFetcher libraryFetcher = LibraryFetcherAPI();
  @override
  Widget build(BuildContext context) {

    return
      FutureBuilder(
        future: libraryFetcher.getOcupation(),
        builder: (BuildContext context, AsyncSnapshot<Ocupation> snapshot) {
          if (snapshot.hasData) {
            final Ocupation occupation = snapshot.data;

            if(occupation.values == null){ return Text('Biblioteca Fechada');}
            return ListView(padding: EdgeInsets.fromLTRB(0, 32.0, 0,0)
                ,shrinkWrap: true, children:
                [
                  for(var i = 0; i < 6; i++)
                    for (var elem in occupation.values[i])
                    ListTile(contentPadding: EdgeInsets.fromLTRB(0,10.0, 0, 10.0)
                      ,title: new Text("Piso " + (i+1).toString(),
                        style: TextStyle(fontSize: 30,color: Color.fromARGB(255, 0x30, 0x30, 0x30)),)
                      ,leading: Text(elem,style: TextStyle(fontSize: 40),)
                      ,trailing:     SlidableButton(
                        width: MediaQuery.of(context).size.width / 3,
                        buttonWidth: 60.0,
                        color: Colors.red,
                        buttonColor: Colors.black54,
                        dismissible: false,
                        label: Center(child: Text('Slide Me',style:TextStyle(color: Colors.white) ,)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Off'),
                              Text('On'),
                            ],
                          ),
                        ),
                        onChanged: (position) {
                        },
                      ), )

                ] );
          } else {
            return ListView(padding: EdgeInsets.fromLTRB(0, 32.0, 0,0)
                ,shrinkWrap: true, children:
            [
            for(var i = 0; i < 6; i++)
              ListTile(contentPadding: EdgeInsets.fromLTRB(0,10.0, 0, 10.0)
                ,title: new Text("Piso " + (i+1).toString(),
                  style: TextStyle(fontSize: 30,color: Color.fromARGB(255, 0x30, 0x30, 0x30)),)
                ,leading: Text("0",style: TextStyle(fontSize: 40),)
                ,trailing:     SlidableButton(
                    width: MediaQuery.of(context).size.width / 3,
                    buttonWidth: 60.0,
                    color: Colors.red,
                    buttonColor: Colors.black54,
                    dismissible: false,
                    label: Center(child: Text('Slide Me',style:TextStyle(color: Colors.white) ,)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Off'),
                          Text('On'),
                        ],
                      ),
                    ),
                    onChanged: (position) {
                    },
                  ), )

            ] );
          }
        },
      );

  }


}