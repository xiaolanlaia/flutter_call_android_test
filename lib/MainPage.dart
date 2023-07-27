import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MainPage extends StatefulWidget{
  @override
  MainPageState createState()  => MainPageState();
}

class MainPageState extends State<MainPage>{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter调用原生Android的方法',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text('Flutter调用原生Android的Java方法'),
          ),
          body: Center(
              child:
              MaterialButton(
                child:
                Padding(
                  padding: EdgeInsets.only(left: 20,right: 20,top: 20,bottom: 20),
                  child: Text('点击按钮调用原生Android的Java方法\n，返回值在控制台输出'),
                ),

                onPressed: ()async{
                  const platform = const MethodChannel("toJava");
                  String returnValue = await platform.invokeMethod("张三");
                  print("从原生Android的java方法返回的值是："+returnValue);
                },
              )
          )
      ),
    );
  }

}