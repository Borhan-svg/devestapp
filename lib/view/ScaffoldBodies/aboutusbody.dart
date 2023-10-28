import 'package:flutter/material.dart';

class AboutUsBody extends StatelessWidget {
  const AboutUsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          const SizedBox(height: 30,),
          Center(
              child: Image.asset(
            'assets/Group 7.png',
            fit: BoxFit.cover,
            height: 40,
          )),
          const SizedBox(height: 30,),
          const Text(
            
            'GDG Algiers is a local community \nsituated at the Higher National \nSchool of Computer Science in \nAlgiers (ESI ex INI), Algiers, Algeria. \nIt is part of the big global communi \n-ty of developers "Google Develop \n-ers Group" an inclusive \nenvironment where everyone and \nanyone interested in tech is \nwelcome to join. \nOur community gathers motivated \nyoung students with similar \ninterests in Google technologies \nand devoted developers.',
          style: TextStyle(fontWeight: FontWeight.w400,fontSize: 22 , height: 1.4),
          )
        ],
      ),
    );
  }
}
