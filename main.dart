import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SettingsScreen(),
    );
  }
}

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: SettingsTab(),
    );
  }
}

class SettingsTab extends StatefulWidget {
  @override
  _SettingsTabState createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  List<String> languages = ['English(UK)', 'Spanish', 'French', 'German'];

  String selectedLanguage = 'English(UK)';

  List<String> fonts = ['Sans Serif', 'Wide', 'Narrow', 'Garamound'];

  String selectedFont = 'Sans Serif';

  List<String> countries = ['India', 'Iceland', 'Hungary', 'New Zealand'];

  String selectedCountry = 'India';

  List<String> size = ['Small', 'Normal', 'Large', 'Huge'];

  String selectedsize = 'Normal';

  List<String> textcolor = ['Red', 'Black', 'Yellow', 'Blue'];

  String selectedcolor = 'Black';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Settings',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Divider(),
          SizedBox(height: 16),
          Text(
            'General',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Divider(),
          SizedBox(height: 16),
          ListTile(
            title: Text(
                'Language:                                                                                                                                                                                                                                  Gmail display language:'),
            trailing: DropdownButton<String>(
              value: selectedLanguage,
              onChanged: (newValue) {
                setState(() {
                  selectedLanguage = newValue!;
                });
              },
              items: languages.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),

          Divider(),

          //make change here

          ListTile(
            title: Text(
                'Phone numbers:                                                                                                                                                                                                                            Default country code:'),
            trailing: DropdownButton<String>(
              value: selectedCountry,
              onChanged: (newValue) {
                setState(() {
                  selectedCountry = newValue!;
                });
              },
              items: countries.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
          Divider(),
          ListTile(
            title: Text('Default text style: (Use the '
                'Remove formatting'
                ' button on the toolbar to reset the default text style) '),
            trailing: DropdownButton<String>(
              value: selectedFont,
              onChanged: (newValue) {
                setState(() {
                  selectedFont = newValue!;
                });
              },
              items: fonts.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
          ListTile(
            // title: Text('Default text style: (Use the '
            //     'Remove formatting'
            //     ' button on the toolbar to reset the default text style) '),
            trailing: DropdownButton<String>(
              value: selectedsize,
              onChanged: (newValue) {
                setState(() {
                  selectedsize = newValue!;
                });
              },
              items: size.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),

          ListTile(
            // title: Text('Default text style: (Use the '
            //     'Remove formatting'
            //     ' button on the toolbar to reset the default text style) '),
            trailing: DropdownButton<String>(
              value: selectedcolor,
              onChanged: (newValue) {
                setState(() {
                  selectedcolor = newValue!;
                });
              },
              items: textcolor.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),

          Divider(),
        ],
      ),
    );
  }
}
