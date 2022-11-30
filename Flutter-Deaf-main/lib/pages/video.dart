import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class video extends StatefulWidget {
  const video({super.key});

  @override
  State<video> createState() => _videoState();
}

class _videoState extends State<video> {
  VideoPlayerController? controller;

  String dataSource = '';
  String asset = "";

  @override
  void initState() {
    super.initState();
    controller = VideoPlayerController.asset(asset)..initialize().then((_) {
      setState(() {
      });
    });

    // controller!.play();
  }

  @override
  void dispose() {
    controller!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        backgroundColor: Color(0xFFFFB200),
        title: Text(
          "เเบบทดสอบหลังเรียน",
          style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 0, 8, 14)),
        ),
      ),
        body: ListView(
          children: [
            controller!.value.isInitialized
                ? AspectRatio(
                    aspectRatio: controller!.value.aspectRatio,
                    child: VideoPlayer(controller!),
                  )
                : Container(height: 200, width: double.infinity,child: Center(child: CircularProgressIndicator(),),)
          ],
        ),
        
    floatingActionButton: FloatingActionButton(
      onPressed: () {
        setState(() {
          if(controller!.value.isPlaying){
            controller!.pause();
          }else{
            controller!.play();
          }
        });
      },
      child: Icon( 
        controller!.value.isPlaying ?
        Icons.pause:
        Icons.play_arrow

       ),
    ),
    
    )
    ;
  }
}