
import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:video_player/video_player.dart';
import 'package:videoplayer/provider/homeProvider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeProvider? homeProviderTrue;
  HomeProvider? homeProviderFalse;


  @override


  @override
  Widget build(BuildContext context) {

    homeProviderFalse = Provider.of<HomeProvider>(context,listen: false);
    homeProviderTrue = Provider.of<HomeProvider>(context,listen: true);


    return SafeArea(child: Scaffold(
     body: ListView.builder(itemCount: homeProviderTrue!.l2.length,itemBuilder: (context ,index){
       return Padding(
         padding: const EdgeInsets.all(8.0),
         child: InkWell(
           onTap: (){
             Navigator.pushNamed(context, 'video',arguments: homeProviderTrue!.l1[index]);

           },
           child: Container(
             height: 200,
             child: Image.asset("${homeProviderFalse!.l2[index]}",fit: BoxFit.fill,),
           ),
         ),
       );
     },),
    ),);
  }
}
