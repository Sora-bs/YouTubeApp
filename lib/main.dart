import 'package:flutter/material.dart';
import 'package:youtube_app/video_detail_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  final items = List<String>.generate(47, (i) => "Item $i");

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          leading: Icon(Icons.ondemand_video),
           title: Text('乃木坂46'),
          actions: [
            SizedBox(
              width: 46,
              child: FlatButton(
                child: Icon(Icons.youtube_searched_for),
                onPressed:(){
                  //todo
                },
              ),
            ),
            SizedBox(
              width: 46,
              child: FlatButton(
                child: Icon(Icons.more_vert),
                onPressed:(){
                  //todo
                },
              ),
            ),
          ],
         ),
          body: Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 60,
                          height: 60,
                          child: Image.network('https://pbs.twimg.com/profile_images/879321670640558081/LJqAoLcs_400x400.jpg'),
                      ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      const Text(
                        '乃木坂46',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      Row(
                        children: [
                          FlatButton(
                            child: Row(
                              children: [
                                Icon(
                                  Icons.video_library,
                                  color: Colors.red,
                                ),
                                Text('登録する'),
                                Padding(padding: EdgeInsets.only(left: 8),),
                              ],
                            ),
                            onPressed:(){
                              //todo
                            },
                          ),
                          Text('チャンネル登録者数131万人'),
                        ],
                      ),
                    ],
                    ),
                    ],
                  ),
                ),
              Expanded(
                child: ListView.builder(
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => VideoDetailPage()),
                        );
                      },
                      contentPadding: EdgeInsets.all(8),
                      leading: Image.asset('images/nogizaka46.png'),
                      title: Column(
                        children: [
                          Text(
                              '乃木坂46　「世界中の隣人よ」',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                  ),
                          ),
                          Row(
//                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text('517万回再生',
                                style: TextStyle(
                                  fontSize: 13,
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(left: 8),),
                              Text('2ヶ月前',
                                style: TextStyle(
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      trailing: Icon(Icons.more_vert),
                    );
                  },
                ),
              ),
              ],
            ),
      ),
      ),
    );
  }
}

