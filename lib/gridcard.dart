import 'package:flutter/material.dart';

class GridCard extends StatefulWidget {
  const GridCard({super.key});

  @override
  State<GridCard> createState() => _GridCardState();
}

class _GridCardState extends State<GridCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemCount: img.length,
          itemBuilder: (context, index) {
            return Card(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  img[index],
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    titles[index],
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    SubTitles[index],
                    style: TextStyle(color: Colors.black38),
                  ),
                )
              ],
            ));
          },
        ));
  }
}

List img = [
  "Images/knokingat.webp",
  "Images/peace.jpg",
  "Images/desertoflost.jpg",
  "Images/suspicious.webp",
  "Images/quite.jpg",
  "Images/lovemoredeeply.jpeg.jpg",
];
List titles = [
  "Knocking At",
  "Peace",
  "Desert Of Lost",
  "Suspicions",
  "Quite",
  "Love More Deeply"
];
List SubTitles = [
  "7 MusicSong(s)",
  "6 MusicSong(s)",
  "10 MusicSong(s)",
  "1 MusicSong(s)",
  "11 MusicSong(s)",
  "13 MusicSong(s)"
];
