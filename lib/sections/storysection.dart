import 'package:facebook/widgets/storycard.dart';
import 'package:flutter/material.dart';
import 'package:facebook/assets.dart';
class Storysection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Storycard(
            labeltext: 'Add to story',
            story: sajin,
            avatar: sajin,
            createstorystatus:true,
          ),
          Storycard(
            labeltext:"al pacino",
            story: alPacino1,
            avatar: alPacino,
            displayborder:  true,
          ),
          Storycard(
            labeltext:"Tovino",
            story: tovi1,
            avatar: tovi,
            displayborder:  true,
          ),
          Storycard(
            labeltext:"SRK",
            story: srk,
            avatar: srk,
            displayborder:  true,
          ),
          Storycard(
            labeltext:"Dicaptio",
            story: dicaprio1,
            avatar: dicaprio,
            displayborder:  true,
          ),
          Storycard(
            labeltext:"Mohanlal",
            story: mohanLal1,
            avatar: mohanLal,
            displayborder:  true,
          ),
          Storycard(
            labeltext:"Robert DI Niro",
            story: robertDinro1,
            avatar: robertDinro,
            displayborder:  true,
          ),
          Storycard(
            labeltext:"Mammootty",
            story: mammootty1,
            avatar: mammootty,
            displayborder:  true,

          ),
        ],
      ),
    );
  }
}
