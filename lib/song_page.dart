import 'package:flutter/material.dart';
import 'package:musicplayerui/neo_box.dart';

class SongPage extends StatefulWidget {
  const SongPage({Key? key}) : super(key: key);

  @override
  State<SongPage> createState() => _SongPageState();
}

class _SongPageState extends State<SongPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              //back button and menu
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 60,
                    width: 60,
                    child: NeoBox(
                      child: Icon(Icons.arrow_back),
                    ),
                  ),
                  Text("P L A Y L I S T"),
                  SizedBox(
                    height: 60,
                    width: 60,
                    child: NeoBox(
                      child: Icon(Icons.menu),
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //space
                  const SizedBox(height: 20,),
                  // show cover art, songname, artist name image
                  SizedBox(
                    child: NeoBox(
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          children: [
                            ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset('assets/images/dhd.jpg',fit: BoxF it.fitHeight,)),

                            const SizedBox(height: 20,),

                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Life is Beautiful',style: TextStyle(
                                          color: Colors.grey.shade700,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500
                                      ),),
                                      const SizedBox(height: 7,),
                                      Text('Roshi',style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.w600
                                      ),),
                                    ],
                                  ),
                                  Icon(Icons.favorite,color: Colors.red, size: 35,)
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  //space
                  const SizedBox(height: 20,),
                  //add time shuffle repeat, duration
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Text('0:00'),
                      Icon(Icons.shuffle),
                      Icon(Icons.repeat),
                      Text('4:20'),
                    ],
                  ),
                  const SizedBox(height: 20,),
                  //add linear bar
                  SizedBox(
                    height: 30,
                    child: NeoBox(
                        child: Slider(
                          min: 4,
                          max: 6,
                          onChanged: (v){}, value: 5,
                          activeColor: Colors.red,
                          inactiveColor: Colors.grey,
                        )
                    ),
                  ),
                  const SizedBox(height: 20,),
                  // next pause, previous
                  Row(
                    children: [
                      Expanded(child: SizedBox(height:50,child: NeoBox(child: Icon(Icons.skip_previous),))),
                      SizedBox(width: 10,),
                      Expanded(flex:2,child: SizedBox(height: 50,child: NeoBox(child: Icon(Icons.play_arrow),))),
                      SizedBox(width: 10,),
                      Expanded(child: SizedBox(height: 50,child: NeoBox(child: Icon(Icons.skip_next),)))
                    ],
                  )
                ],
              )

            ],
          ),
        ),
      )
    );
  }
}
