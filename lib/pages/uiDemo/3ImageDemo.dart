import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ImageDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ;
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('ImageDemo'),
        backgroundColor: Color(0xffffffff),
      ),
      child: Center(
        child: Column(

            ///主轴对齐方式 Column的主轴是垂直方向
            mainAxisAlignment: MainAxisAlignment.start,

            ///交叉抽对齐方式  Column的交叉是水平方向
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Row(children: <Widget>[
                Image.asset(
                  'assets/images/a.jpeg',
                  ///填充方式 fill全图显示，图片会被拉伸，并充满父容器。
                  ///contain:全图显示，显示原比例，可能会有空隙。
                  ///.cover:显示可能拉伸，可能裁切，充满(图片要 充满整个容器，还不变形)。
                  fit: null,
                  ///指定宽高
                  width: 100,
                  // height: 100,
                  ///当宽高大于图片的像素的时候 进行的重复填充 repeat,repeatX,repeatY,noRepeat
                  repeat: ImageRepeat.noRepeat,
                  ///对齐方式 当图片像素大于或者小于容器宽高时  显示内容的对齐方式
                  alignment: Alignment.center,
                ),
              ]),
              Row(children: <Widget>[
                ///加载网络图片 不带占位图 有加载回调成功loadingBuilder
                Image.network(
                  'http://www.ionic.wang/statics/index/images/ionic4.png',
                  alignment: Alignment.topCenter,
                  repeat: ImageRepeat.repeatY,
                  width: 100,
                  //colorBlendMode:BlendMode.screen,
                  ///网络加载情况
                  loadingBuilder: (
                    BuildContext context,
                    Widget child,
                    ImageChunkEvent loadingProgress,
                  ) {
                    try {
                      var progg =
                          loadingProgress.cumulativeBytesLoaded.toDouble() /
                              loadingProgress.expectedTotalBytes.toDouble();
                      print('图片加载进度-->' + progg.toString() + "%");
                    } catch (e) {}
                    return child;
                  },
                ),
                ClipRRect(
                  ///圆角切割方式
                  borderRadius: BorderRadius.all(Radius.circular(4.0)),

                  ///加载网络图片 带占位图 无回调 图片会自动缓存
                  child: FadeInImage.assetNetwork(
                      image:
                          'http://www.ionic.wang/statics/index/images/ionic4.png',
                      alignment: Alignment.topCenter,
                      repeat: ImageRepeat.repeatY,
                      width: 100,

                      ///占位图
                      placeholder: 'assets/images/a.jpeg'),
                ),
              ])
            ]),
      ),
    );
  }
}
