
import 'package:flutter/material.dart';
import 'package:wechat_assets_picker/wechat_assets_picker.dart';
import 'package:wechat_picker_flutter/constants/page_mixin.dart';
import 'package:wechat_picker_flutter/constants/picker_method.dart';


class MultiAssetsCustomPage extends StatefulWidget {

  String title;

  MultiAssetsCustomPage({Key? key , required this.title}) : super(key: key);

  @override
  _MultiAssetsCustomPageState createState() => _MultiAssetsCustomPageState();
}

class _MultiAssetsCustomPageState extends State<MultiAssetsCustomPage>
    with AutomaticKeepAliveClientMixin, ExamplePageMixin {

  @override
  int get maxAssetsCount => 10;

  /// Check each method's source code for more details.
  @override
  List<PickMethod> get pickMethods {



    return <PickMethod>[
      // PickMethod.common(maxAssetsCount),

      if( widget.title == "Audio")
        PickMethod.audio(maxAssetsCount)
      else if( widget.title == "Video")
        PickMethod.video(maxAssetsCount)
      else if( widget.title == "Image")
        PickMethod.image(maxAssetsCount)
      else if( widget.title == "Gif")
        PickMethod.preventGIFPicked(maxAssetsCount),

    ];
  }

  @override
  bool get wantKeepAlive => true;


  // @override
  // @mustCallSuper
  // Widget build(BuildContext context) {
  //   super.build(context);
  //   return Column(
  //     children: <Widget>[
  //       Container(
  //         width: MediaQuery.of(context).size.width,
  //         height: MediaQuery.of(context).size.height/5,
  //         color: Colors.red,
  //       )
  //     ],
  //   );
  // }
}
