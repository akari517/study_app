import 'package:flutter/material.dart';
import 'package:study_app/color/color.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: IconButton(
        icon: Icon(
          Icons.cruelty_free,
          size: 100,
        ),
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return FirstPage();
          }));
        },
      ),
    ));
  }
}

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPage();
}

class _FirstPage extends State<FirstPage> {
  List<String> strList = [
    'テスト1',
    'テスト2',
    'テスト3',
    'テスト4',
    'テスト5',
    'テスト6',
    'テスト7',
    'テスト8',
    'テスト9',
    'テスト10'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return MyHomePage(); //後で変える　今はmyhomepageに戻るようにしている
              }));
            },
            icon: Icon(Icons.table_rows),
          ),
          title: Center(child: Text('StyleSnap')),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return MyHomePage(); //後で変える　今はmyhomepageに戻るようにしている
                }));
              },
              icon: Icon(Icons.search),
            ),
          ],
          backgroundColor: AppColor.ui.lightBlue, //Colors.はいらないらしい
        ),
        body: GridView.builder(
          itemCount: strList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
              child: Column(
                children: [
                  Container(
                    color: Colors.blue,
                    child: Center(child: Text(strList[index])),
                  ),
                  Container(child: Text(strList[index])),
                ],
              ),
            );
          },
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, //列の数を指定
            mainAxisSpacing: 30,
            crossAxisSpacing: 5, //グリッド間のスペースのサイズを指定
            childAspectRatio: 0.9, //高さを指定
          ),
        ));
  }
}
