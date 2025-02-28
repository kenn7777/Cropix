/*import 'package:cropix/components/tile.dart';
import 'package:cropix/themes/provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    //
    return Scaffold(

      backgroundColor: Theme.of(context).colorScheme.surface,


      appBar: AppBar(title: Text('Settings'),
      ),

      body: Column(
        children: [

          //dark
          SettingTile(
              title: 'Dark Mode',
              action: CupertinoSwitch(
          onChanged: (value) => Provider.of<ThemeProvider>(context, listen: false).toggleTheme(),
          value: Provider.of<ThemeProvider>(context, listen: false).isDarkMode,
          ),
          ),
        ],
      ),
    );
  }
}
*/