import 'package:flutter/material.dart';
import 'package:flutter_video_newfeed/api/api.dart';
import 'package:flutter_video_newfeed/model/video.dart';
import 'package:flutter_video_newfeed/ui/video_newfeed_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Video New Feed'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    implements VideoNewFeedApi<VideoInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: VideoNewFeedScreen<VideoInfo>(
        api: this,

      ),
    );
  }

  @override
  Future<List<VideoInfo>> getListVideo() {
    return Future.value([
      VideoInfo(
          userName: "quochuynh96",
          liked: true,
          songName: "Đưa tay lên nào, mãi bên nhau bạn nhé!",
          url:
              'https://v16-webapp.tiktok.com/5f6f28f0d21b89dd439e24219a1b950a/632dda2e/video/tos/useast2a/tos-useast2a-pve-0068/39a459a1045545ff875a403c8f0d3487/?a=1988&ch=0&cr=0&dr=0&lr=tiktok_m&cd=0%7C0%7C1%7C0&cv=1&br=2940&bt=1470&cs=0&ds=3&ft=gKSYZ88oo0PD1~HU~yg9w1U2O5LiaQ2D~MT&mime_type=video_mp4&qs=0&rc=NWg0M2YzaDY4ZWg4ZWc5ZkBpMzU6aTY6ZmkzZjMzNzczM0AuNjEvYGEvNjUxYWNjNi5fYSMuMi0ucjRnM2dgLS1kMTZzcw%3D%3D&l=202209231507520102230840490523D5BB&btag=80000'),
      VideoInfo(
          userName: "quochuynh96",
          liked: true,
          songName: "Đưa tay lên nào, mãi bên nhau bạn nhé!",
          url:
              'https://v16-webapp.tiktok.com/bd1e6ec94a34e00eb198cf3323fea842/632ddbbc/video/tos/useast2a/tos-useast2a-ve-0068c003/cd3f0872f2a5454bbbd76d567d9b34d1/?a=1988&ch=0&cr=0&dr=0&lr=tiktok_m&cd=0%7C0%7C1%7C0&cv=1&br=3414&bt=1707&cs=0&ds=3&ft=gKSYZ88oo0PD1fTU~yg9wKX2O5LiaQ2D~AS&mime_type=video_mp4&qs=0&rc=ZTszZWU8O2Q7Omg7NmQ8M0BpM3Z1dzY6ZjplZjMzNzczM0AyLTUtLzQyNl8xYGEuNTI2YSNhYGYucjRvZmJgLS1kMTZzcw%3D%3D&l=202209231514520102230840490524DA00&btag=80000'),
      VideoInfo(
          userName: "quochuynh96",
          liked: true,
          songName: "Đưa tay lên nào, mãi bên nhau bạn nhé!",
          url:
              'https://v16-webapp.tiktok.com/1805dd5140a00c40a10ad8eb99dc8166/632ddbba/video/tos/useast2a/tos-useast2a-pve-0068/f19054ad70034804a90270d244a0cc28/?a=1988&ch=0&cr=0&dr=0&lr=tiktok_m&cd=0%7C0%7C1%7C0&cv=1&br=5048&bt=2524&cs=0&ds=3&ft=gKSYZ88oo0PD1fTU~yg9wKX2O5LiaQ2D~AS&mime_type=video_mp4&qs=0&rc=PDxlN2Q8aDs7O2RpNTM8OEBpanE5NTw6Zmk7ZjMzNzczM0BeMzMvY2A2Ni8xYS5gNjAzYSNrLmtmcjRnNWpgLS1kMTZzcw%3D%3D&l=202209231514520102230840490524DA00&btag=80000'),
      VideoInfo(
          userName: "quochuynh96",
          liked: true,
          songName: "Đưa tay lên nào, mãi bên nhau bạn nhé!",
          url:
              'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4'),
      VideoInfo(
          userName: "quochuynh96",
          liked: true,
          songName: "Đưa tay lên nào, mãi bên nhau bạn nhé!",
          url:
              'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerEscapes.mp4'),
      VideoInfo(
          userName: "quochuynh96",
          liked: true,
          songName: "Đưa tay lên nào, mãi bên nhau bạn nhé!",
          url:
              'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerFun.mp4')
    ]);
  }

  @override
  Future<List<VideoInfo>> loadMore(List<VideoInfo> currentList) {
    return Future.value([
      VideoInfo(
          userName: "quochuynh96 load more",
          liked: true,
          songName: "Đưa tay lên nào, mãi bên nhau bạn nhé!",
          url:
              'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerJoyrides.mp4'),
      VideoInfo(
          userName: "quochuynh96",
          liked: true,
          songName: "Đưa tay lên nào, mãi bên nhau bạn nhé!",
          url:
              'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerMeltdowns.mp4'),
      VideoInfo(
          userName: "quochuynh96",
          liked: true,
          songName: "Đưa tay lên nào, mãi bên nhau bạn nhé!",
          url:
              'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/Sintel.mp4'),
      VideoInfo(
          userName: "quochuynh96",
          liked: true,
          songName: "Đưa tay lên nào, mãi bên nhau bạn nhé!",
          url:
              'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/SubaruOutbackOnStreetAndDirt.mp4'),
      VideoInfo(
          userName: "quochuynh96",
          liked: true,
          songName: "Đưa tay lên nào, mãi bên nhau bạn nhé!",
          url:
              'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/TearsOfSteel.mp4'),
      VideoInfo(
          userName: "quochuynh96",
          liked: true,
          songName: "Đưa tay lên nào, mãi bên nhau bạn nhé!",
          url:
              'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/VolkswagenGTIReview.mp4')
    ]);
  }
}

class TestModel extends VideoInfo {
  String test;

  TestModel(this.test);
}
