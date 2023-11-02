import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class PostScreen extends StatefulWidget {
  const PostScreen({super.key});

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  final demo = "The sun dipped below the horizon, casting a warm, golden glow across the tranquil lake. Birds chirped in the nearby trees, and a gentle breeze rustled the leaves. The aroma of freshly bloomed flowers filled the air, creating a sense of serenity and peace. As the day came to a close, the world seemed to slow down, and all that remained was the beauty of nature and the promise of a new day.";
  final videoUrl = "https://www.youtube.com/watch?v=vx4kLgnFexo";
  late YoutubePlayerController?_controller;
  @override
  void initState() {
    final videoId = YoutubePlayer.convertUrlToId(videoUrl);
    // TODO: implement initState
    super.initState();
    _controller = YoutubePlayerController(initialVideoId:videoId!,
    flags: YoutubePlayerFlags(
      autoPlay: false,
      mute: false,
      isLive: false
    ));
  }
  Widget build(BuildContext context) {
       return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Colors.green,
        leading: IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.arrow_back_ios,color: Colors.white,size: 24,)),
        actions: [IconButton(onPressed: (){}, icon: Icon(Icons.favorite,color: Colors.white,size: 30,)),
        IconButton(onPressed: (){}, icon: Icon(Icons.share,color: Colors.white,size: 30,))],
        title: Text("Post",style: TextStyle(color: Colors.white,fontSize: 30),),

      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [YoutubePlayer(controller: _controller!,
          showVideoProgressIndicator: true,),
          SizedBox(height: 5.0,),
          Padding(
            padding: const EdgeInsets.only(left: 30,right: 20,top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 30,
                  width: 130,
                  decoration: BoxDecoration(color: Colors.red,
                  borderRadius: BorderRadius.circular(20.0)),
                  child: Row(children: [
                    SizedBox(width: 10.0,),
                    Icon(Icons.arrow_forward_ios,color: Colors.white,),
                                    SizedBox(width: 20.0,),
          
                    Text('YouTube',style: TextStyle(color: Colors.white),)
                  ],),
                ),
                Text('1 hour ago')
              ],
            ),
            
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left:15.0),
            child: Container(
              child:Column(children: [
                 Text("Mitski - My Love Mine All Mine (Official Video)\n ${demo} ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                
                 
              ],)
            ),
          )
          ]
        ),
      ),);
    
    
  }
}