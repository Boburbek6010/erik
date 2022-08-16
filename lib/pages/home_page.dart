import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:erik/pages/services/theme_service.dart';
import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  static const id = "/home_page";
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isPause = false;
  bool isPause1 = false;
  final assetsAudioPlayer = AssetsAudioPlayer();
  AssetsAudioPlayer audioPlayer = AssetsAudioPlayer();


  void _themeMode(){
    setState(() {
      unpredictable = !unpredictable;
    });
  }

  void _playPause() {
    setState(() {
      isPause = !isPause;
    });
    isPause ?assetsAudioPlayer.open(
          Audio("assets/audios/uyidibuyudi.mp3"))
        :assetsAudioPlayer.pause();
    Future.delayed(const Duration(seconds: 11), () {
      isPause = false;
      setState(() {

      });
      print('delayed execution');
    });
  }
  void _playPause1() {
    setState(() {
      isPause1 = !isPause1;
    });
    isPause1 ?assetsAudioPlayer.open(
        Audio("assets/audios/haydar.mp3"))
        :assetsAudioPlayer.pause();
    Future.delayed(const Duration(seconds: 59), () {
      isPause1 = false;
      setState(() {

      });
      print('delayed execution');
    });
  }
  void _speed1(){
    assetsAudioPlayer.setPlaySpeed(1);
  }
  void _speed1_5(){
    assetsAudioPlayer.setPlaySpeed(1.5);
  }
  void _speed2(){
    assetsAudioPlayer.setPlaySpeed(2);
  }
  void _speed0_5(){
    assetsAudioPlayer.setPlaySpeed(0.5);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeService.darkBackgroundColor(),
      appBar: AppBar(
        actions: [
          IconButton(
            icon: unpredictable ?const Icon(Icons.dark_mode):const Icon(Icons.light_mode),
            onPressed: _themeMode,
          ),
        ],
        centerTitle: true,
        title: const Text("Erik Haydar"),
      ),
      body: ListView(
        children: [
          _items(),
        ],
      ),
    );
  }


  Widget _items(){
    return Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      // crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                GestureDetector(
                  onTap: _playPause,
                  child: Container(
                    margin: const EdgeInsets.only(left: 20, right: 10, top: 40),
                    height: 180,
                    width: 180,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/2.jpeg'),
                        )
                    ),
                    child: Center(
                      child: IconButton(
                        splashColor: Colors.black,
                        splashRadius: 50,
                        onPressed: _playPause,
                        icon: isPause ?const Icon(Icons.pause_circle_filled,size: 35,):const Icon(Icons.play_circle_fill,size: 35,),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
                Text("    Uyidi-Buyidi deganni...", style: TextStyle(
                    fontSize: 16, color: ThemeService.darkTextColor()
                ),)
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SizedBox(height: 15,),
                ElevatedButton(
                  onPressed: _speed0_5,
                  child: const Text("0.5"),
                ),
                ElevatedButton(
                  onPressed: _speed1,
                  child: const Text("1"),
                ),
                ElevatedButton(
                  onPressed: _speed1_5,
                  child: const Text("1.5"),
                ),
                ElevatedButton(
                  onPressed: _speed2,
                  child: const Text("2"),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 50),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                GestureDetector(
                  onTap: _playPause1,
                  child: Container(
                    margin: const EdgeInsets.only(left: 20, right: 10, top: 40),
                    height: 180,
                    width: 180,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/3.jpeg'),
                        )
                    ),
                    child: Center(
                      child: IconButton(
                        splashColor: Colors.black,
                        splashRadius: 50,
                        onPressed: _playPause1,
                        icon: isPause1 ?const Icon(Icons.pause_circle_filled,size: 35, color: Colors.white,):const Icon(Icons.play_circle_fill,size: 35,color:
                          Colors.white,),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
                Text("    Xavi bugun o'yin bora😁", style: TextStyle(
                    fontSize: 16, color: ThemeService.darkTextColor()
                ),)
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SizedBox(height: 15,),
                ElevatedButton(
                  onPressed: _speed0_5,
                  child: const Text("0.5"),
                ),
                ElevatedButton(
                  onPressed: _speed1,
                  child: const Text("1"),
                ),
                ElevatedButton(
                  onPressed: _speed1_5,
                  child: const Text("1.5"),
                ),
                ElevatedButton(
                  onPressed: _speed2,
                  child: const Text("2"),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }


}
