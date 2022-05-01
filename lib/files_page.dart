// import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:photo_manager/src/types/entity.dart';

class FilesPage extends StatefulWidget {

  List<AssetEntity> files;

  FilesPage({Key? key, required this.files}) : super(key: key);

  @override
  _FilesPageState createState() => _FilesPageState();
}

class _FilesPageState extends State<FilesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("All Files"),
      ),
      body: Center(
        child: GridView.builder(
            padding: EdgeInsets.all(16),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, mainAxisSpacing: 8, crossAxisSpacing: 8),
          itemCount: widget.files.length,
          itemBuilder: (context, index){
              final file = widget.files[index];
              return buildFile(file , widget);
          },
        ),
      ),
    );
  }

  // Widget buildFile(AssetEntity file, FilesPage widget) {
  //
  // }
}

Widget buildFile( AssetEntity file,FilesPage widget) {


  final kb = file.size/1024;
  final mb = kb/1024;

  // final fileSize = mb>=1 ? "${mb.toStringAsFixed(2)} MB" : "${kb.toStringAsFixed(2)} KB";
  //
  // final extension = file.extension ?? "none";
  // final color = getColor(extension);
  final color = Colors.red;

  return InkWell(
    onTap: (){},
    child: Container(
      padding: EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Expanded(
              child: Container(
                alignment: Alignment.center,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(12),
                ),

                child: Text(
                  "files.",style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold , color: Colors.white),
                ),
              )
          ),

          SizedBox(height: 8,),
          Text(file.title.toString(), style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold , color: Colors.black), overflow: TextOverflow.ellipsis,),
          SizedBox(height: 8,),
          Text("fileSize" , style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold , color: Colors.black),)
        ],
      ),
    ),
  );
}


