import 'package:flutter/material.dart';
import 'package:kinetik/constants.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  static final id = "/setting_spage";

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    double? scrolledUnderElevation;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Constants.mainBackgroundColor,
        appBar: AppBar(
        title: const Text(
          'Settings',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        scrolledUnderElevation: scrolledUnderElevation,
        backgroundColor: const Color.fromRGBO(13, 11, 11, 1), 
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: Colors.white,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
        body: Center(
          child: Column(
            children: [
              const Card(
                color: const Color.fromRGBO(13, 11, 11, 1),
        
                child: ListTile(
                  title: Text('Kobbie', style: TextStyle(color: Colors.white)),
                  subtitle: Text('Johndoe@gmail.com', style:TextStyle(color: Colors.white)),
                  leading: Icon(Icons.account_circle),
                ),
              ),
                
                Padding(
                padding: const EdgeInsets.all(20),
                
                child:ListView.separated(
                  itemCount: 4,
                  shrinkWrap: true,
                   separatorBuilder: (context, index) => SizedBox(
    height: 10,
  ),
                  itemBuilder: (context, index) {
                    return ListTile(
                      tileColor: Colors.blue,
                      title: Text(_getTitle(index), style: TextStyle(color: Colors.white)),
                      trailing: Icon(Icons.arrow_forward_ios),
                      onTap: () {
                        // Navigator.push(context, MaterialPageRoute(builder: (context) => SettingsPage()));
                      },
                    );
                  },),

        ),
      ],),
    ),
    ),
    );
  }
}

String _getTitle(int index) {
    switch (index) {
      case 0:
        return 'Edit Email';
      case 1:
        return 'Change Password';
      case 2:
        return 'Edit Fitness Parameters';
      case 3:
        return 'Upload Profile Picture';
      default:
        return '';
    }
  }
