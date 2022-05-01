
import 'package:flutter/material.dart';
import 'package:wechat_picker_flutter/constants/picker_method.dart';
import 'package:wechat_picker_flutter/multi_assets_custom_page.dart';
import 'package:wechat_picker_flutter/multi_assets_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String dropdownValue = 'Audio';
  List <String> spinnerItems = [
    'Audio',
    'Video',
    'Image',
    'Gif',
  ] ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,


          child: Column(
            children: [

              SizedBox(height: 100,),
              DropdownButton<String>(
                value: dropdownValue,
                icon: Icon(Icons.arrow_drop_down),
                iconSize: 24,
                elevation: 16,
                style: TextStyle(color: Colors.red, fontSize: 18),
                underline: Container(
                  height: 2,
                  color: Colors.deepPurpleAccent,
                ),


                onChanged: (String? data) {
                  setState(() {
                    dropdownValue = data!;
                  });
                },
                items: spinnerItems.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),

              SizedBox(height: 20,),

              Expanded(
                  child: MultiAssetsCustomPage(title : dropdownValue)),
            ],
          ),


        // child: MultiAssetsPage(),
        // child: Column(
        //   children: [
        //
        //     SizedBox(height: 40,),
        //     MultiAssetsCustomPage(),
        //   ],
        // ),

      ),
    );
  }
}
