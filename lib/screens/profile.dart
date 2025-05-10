
import 'package:cv/screens/background.dart';
import 'package:cv/screens/experience.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,title: const Text("Curriculum Vitae",style: TextStyle(color: Colors.white),), backgroundColor: Colors.teal[700]),
      backgroundColor: Colors.white,
      body: Column(
        children: [
         Container(
          height: 380,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30),bottomRight: Radius.circular(30)
            ),
            color: Colors.teal[700],
          ),
            padding: const EdgeInsets.only(top: 10, bottom: 20),
            
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('images/gbenga.jpg'),
                    radius: 45,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    width: 227,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                         Text(
                                'Oyeladun Olugbenga Phillip',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                         Text(
                                'Mobile App Engineer',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.white),
                              ),
                            
                      //  Text(
                      //           'gbengaoyeladun@gmail.com',
                      //           style: TextStyle(
                      //               fontSize: 15,
                      //               fontWeight: FontWeight.normal,
                      //               color: Colors.white),
                      //         )
                            
                      ],
                    ),
                  ),
                ],
              ),
                SizedBox(
                    height: 30,
                  ),
                  Details(icon: Icons.web_stories_outlined, text: 'https://github.com/Phillip4reall',),
                  SizedBox(
                    height: 5,
                  ),
                   Details(icon: Icons.email_outlined, text: 'gbengaoyeladun@gmail.com',),
                   SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Details(icon: Icons.phone_android_outlined, text: '+2348106341850',),
                      SizedBox(
                    width: 20,
                  ),
                      Details(icon: Icons.location_on, text: 'Lagos,Nigeria.',),
                    ],
                  ),
                  SizedBox(height: 15,),
                  Text( 'I am a mobile app developer for both iOs and Android devices. I am proficient with using cross platform frameworks(Flutter). I have worked on some projects from concept to completion and not only I can develop applications based on specifications.',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal,color: Colors.white,))
                ],
              ),
            ),
          ),
          SizedBox(height: 30,),
          Expanded(
            child: ListView(
              
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _iconButton('Experience', FontAwesomeIcons.briefcase, () {
                       Navigator.push(context, MaterialPageRoute(builder: (_) => const ExperienceScreen()));
                    }),
                    const SizedBox(width: 40,),
                    _iconButton('Background', FontAwesomeIcons.graduationCap, () {
                       Navigator.push(context, MaterialPageRoute(builder: (_) => const BackgroundScreen()));
                    }),
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _iconButton('Interest', FontAwesomeIcons.heart, () {
                       Navigator.push(context, MaterialPageRoute(builder: (_) => const ExperienceScreen()));
                    }),
                    const SizedBox(width: 40,),
                    _iconButton('Portfolio', FontAwesomeIcons.folderOpen, () {
                       Navigator.push(context, MaterialPageRoute(builder: (_) => const ExperienceScreen()));
                    }),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
  Widget _iconButton(String label, IconData icon, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(height: 80,
             width: 90,
            decoration: BoxDecoration(
               color:Colors.teal, shape: BoxShape.rectangle,
               borderRadius: BorderRadius.all(Radius.circular(10)),),child: Icon(icon, color: Colors.white,size: 40,),),
         // CircleAvatar(radius: 30, backgroundColor: Colors.teal[700], child: Icon(icon, color: Colors.white)),
          const SizedBox(height: 6),
          Text(label),
        ],
      ),
    );
  }
}

class Details extends StatelessWidget {
  final String text;
  final IconData icon;
  const Details({
    super.key, required this.text, required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon,color: Colors.white,size: 20,),
        SizedBox(width:6),
        Text(maxLines: 2,
          overflow: TextOverflow.ellipsis,
          text, style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal,color: Colors.white,overflow: TextOverflow.ellipsis)),
      ],);
  }

  
}