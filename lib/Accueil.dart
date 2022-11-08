import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:video_player/video_player.dart';
import 'dart:math' as math;

import 'Profil.dart';

class Accueil extends StatefulWidget {
  const Accueil({Key? key}) : super(key: key);

  @override
  State<Accueil> createState() => _AccueilState();
}

//state permettant de montrer l'index selectionné
class _AccueilState extends State<Accueil> {
  // bottom nav bar
  int  _selectedIndex = 0;
  void _navigateBottomBar(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    PageAccueil(),
    Profil(),


  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        backgroundColor: Colors.black,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.white,
        iconSize: 28,
        selectedFontSize: 18,
        unselectedFontSize: 16,
        type: BottomNavigationBarType.fixed,
        items:  const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home'),

          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profil'),
        ],
      ),
    );
  }
}

//pour la page qui va contenir la video
class PageAccueil extends StatelessWidget {
   PageAccueil({Key? key}) : super(key: key);

  final List<Map> tikodcItems = [

    {
      "video": "assets/videos/fifa.mp4",
    },
    {
      "video": "assets/videos/flutter.mp4",
    },
    {
      "video": "assets/videos/demonslayer.mp4",
    },
    {
      "video": "assets/videos/naruto.mp4",
    },
    {
      "video": "assets/videos/subaru.mp4",
    },

  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: double.infinity,
        scrollDirection: Axis.vertical,
        viewportFraction: 1.0,
      ),
      items: tikodcItems.map((item) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              color: const Color(0xFF141518).withOpacity(0.85),
                child: Stack(
                  children: [
                    MesVideos(videoUrl: item['video']),
                    MesContenus(),
                ],
              ),
            );
          },
        );
      }).toList(),
    );
  }
}

//le widget pour la lecture des videos
class MesVideos extends StatefulWidget {
  const MesVideos({Key? key, required this.videoUrl}) : super(key: key);
  final String videoUrl;

  @override
  State<MesVideos> createState() => _MesVideosState(this.videoUrl);

}

class _MesVideosState extends State<MesVideos> {
  late VideoPlayerController _controller;
  final String videoUrl;
  _MesVideosState(this.videoUrl);


  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(videoUrl)
      ..initialize().then((_) {
        _controller.play();
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return VideoPlayer(_controller);

  }
}

//widget pour les textes et icons sur l'accueil
class MesContenus extends StatelessWidget {
  const MesContenus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(// pour diviser la page en colonne
      children: [

        Container(height: 100,
          padding: EdgeInsets.only(top: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  const [
              Text('Abonnements',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                ),
              ),

              SizedBox(
                width: 25,
              ),

              Text('Pour toi',
                style: TextStyle(fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                ),
              ),


              
            ],
          ),
        ), //pour la partie texte
        Expanded(child: Container(// pour les contenus du bas!
          //color: Colors.red,
          child: Row(
            children: [
              Expanded(child: Container(
                //color: Colors.red.withOpacity(0.1),
                padding: EdgeInsets.only(left: 5, bottom: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('@yngdiak_67',
                      style: TextStyle(fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                      ),
                    ),

                    const Text('New chalenge for the boys #oldschool',
                      style: TextStyle(fontSize: 12,
                          color: Colors.white
                      ),
                    ),

                    const Text('#flowers @afro__mz',
                      style: TextStyle(fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                      ),
                    ),

                    const Text('Voir la traduction',
                      style: TextStyle(fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                      ),
                    ),
                    
                    Row(
                      children: const [
                        Icon(Icons.music_note,
                              color: Colors.white,
                        ),
                        SizedBox(width: 4,),
                        Text('son original-teamwhizz5',
                          style: TextStyle(fontSize: 12,
                              color: Colors.white
                          ),
                        ),

                      ],
                    )
                  ],
                ),
              )),
              Container(// pour contenir les icons à gauche
                width: 80,
                //color: Colors.green,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: 80,
                      child: Stack(
                        alignment: AlignmentDirectional.bottomCenter,
                        children: [
                          Container(
                            margin: EdgeInsets.only(bottom: 10),
                            child: const CircleAvatar(
                              radius: 30,
                              backgroundImage:
                              AssetImage('assets/images/profile.png'),
                            ),
                          ),

                          Container(
                            padding:EdgeInsets.all(2),
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 20,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 5,),
                    Container(
                      height: 60,
                      child: Column(
                        children: const [
                          Icon(
                            Icons.favorite,
                            color: Colors.white,
                            size: 40,
                          ),

                          SizedBox(width: 4,),
                          Text('80,1K',
                            style: TextStyle(fontSize: 14,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 2,),
                        ],
                      ),
                    ),




                    Container(
                      height: 60,
                      child: Column(
                        children: const [
                          Icon(
                            Icons.message,
                            color: Colors.white,
                            size: 40,
                          ),

                          SizedBox(width: 4,),
                          Text('1,3K',
                            style: TextStyle(fontSize: 14,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                        ],
                      ),
                    ),

                    SizedBox(height: 2,),

                    Container(
                      height: 60,
                      child: Column(
                        children: const [
                          Icon(
                            Icons.share,
                            color: Colors.white,
                            size: 40,
                          ),


                          Text('805',
                            style: TextStyle(fontSize: 14,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                        ],
                      ),
                    ),


                    Container(
                      height: 60,
                      child: AnimatedLogo(),

                    )
                  ],
                ),
              )
            ],
          ),
        ))
      ],
    );
  }
}







class AnimatedLogo extends StatefulWidget {
  AnimatedLogo({Key? key}) : super(key: key);

  @override
  _AnimatedLogoState createState() => _AnimatedLogoState();
}

class _AnimatedLogoState extends State<AnimatedLogo>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(milliseconds: 4000),
      vsync: this,
    );
    _controller.repeat();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (_, child) {
        return Transform.rotate(
          angle: _controller.value * 2 * math.pi,
          child: child,
        );
      },
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          image: DecorationImage(
            image: AssetImage("assets/images/disque.jpg"),
          ),
        ),
        child: Image.asset('assets/images/tiktoc.png'),
      ),
    );
  }
}







