import 'package:flutter/material.dart';
import 'package:taxi_scooter/constants.dart';

class MenuDrawer extends StatelessWidget{
  final String image;
  final String name;
  final String userName;


  const MenuDrawer({
    Key key,
    this.image,
    this.name,
    this.userName

  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children:[
          Expanded(
            child: ListView(
              children: [

                DrawerHeader(
                  decoration: BoxDecoration(
                      color: jPrimaryColor
                  ),
                  child: Container(
                    child: Center(
                      child: Column(
                        children: [
                          Container(
                            width: 80,
                            height: 80,
                            margin: EdgeInsets.only(

                              bottom: 5,
                            ),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: AssetImage(image),
                                    fit: BoxFit.fill
                                )
                            ),
                          ),
                          Text(
                            name,
                            overflow: TextOverflow.ellipsis,
                            style: kTitleTextstyle.copyWith(
                                fontSize: 20,
                                color: kBackgroundColor
                            ),
                          ),
                          Text(
                            userName,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: 15,
                                color: kBackgroundColor,
                                fontWeight: FontWeight.normal

                            ),
                          ),
                        ],
                      ),
                    ),

                  ),
                ),
                ListTileTheme(
                  selectedColor: jSecondColor,
                  child: ListTile(
                    selected: true,
                    leading: Icon(Icons.home),
                    title: Text('ACCUEIL'),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.shopping_cart),
                  title: Text('MES COMMANDES'),

                ),
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text('MON PROFILE'),
                ),
                ListTile(
                  leading: Icon(Icons.phone),
                  title: Text('CONTACTER NOUS'),
                ),
                ListTile(
                  leading: Icon(Icons.info_outline),
                  title: Text('A PROPOS'),
                ),


              ],
            ),
          ),
          Align(
              alignment: FractionalOffset.bottomCenter,
              child: Container(
                child: Column(
                  children: [
                    Divider(),
                    ListTile(

                      leading: Icon(Icons.exit_to_app),
                      title: Text('SE DECONNECTER'),
                    ),
                  ],
                ),
              )
          ),
        ]
      ),





    );

  }

}