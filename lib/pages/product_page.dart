import 'package:flutter/material.dart';
import 'package:rus_cars_list/data/data.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class CarCard extends StatefulWidget {
  final int carIndex;
  const CarCard({super.key, required this.carIndex});

  @override
  State<CarCard> createState() => _CarCardState(carIndex);
}

class _CarCardState extends State<CarCard> {
  final int carIndex;
  _CarCardState(this.carIndex);
  @override
  Widget build(BuildContext context) {
    Cars car = carsList[carIndex];
    String? videoId;
    videoId = YoutubePlayerController.convertUrlToId(car.videoUrl);
    final controller = YoutubePlayerController();
    controller.cueVideoById(videoId: videoId.toString());
    videoId = YoutubePlayerController.convertUrlToId(car.videoUrl);
    controller.loadVideoById(videoId: videoId.toString());
    return Scaffold(
      appBar: AppBar(
        title: Text(
          car.name,
          style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color.fromARGB(100, 220, 124, 124),
        centerTitle: true,
      ),
      backgroundColor: const Color.fromARGB(100, 255, 255, 255),
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width / 2,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.only(top: 10),
          //padding: EdgeInsets.symmetric(horizontal: 300),
          child: ListView(
            children: <Widget>[
              SizedBox(
                height: 320,
                width: 320,
                child: Swiper(
                    itemCount: car.imagePath.length,
                    // carsList[ImageSwiper.carId].imagePath.length ,
                    itemBuilder: (BuildContext context, int index) {
                      return Image.network(
                        car.imagePath[index],
                        fit: BoxFit.fill,
                      );
                    }),
              ),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(
                  car.name,
                  textAlign: TextAlign.left,
                  style: const TextStyle(fontSize: 28, color: Colors.black),
                ),
                RichText(
                    textAlign: TextAlign.left,
                    text: TextSpan(
                      text: car.price.toString(),
                      style: const TextStyle(fontSize: 32, color: Colors.black),
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const TextSpan(
                            text: ' ₽',
                            style: TextStyle(fontSize: 32, color: Colors.black))
                      ],
                    )),
                Container(
                    alignment: Alignment.bottomLeft,
                    height: 50,
                    child: const Text(
                      'Описание',
                      textAlign: TextAlign.left,
                      style: TextStyle(fontSize: 26, color: Colors.black),
                    )),
                Container(
                  height: 80,
                  child: ListView(children: [
                    Text(car.description,
                        style:
                            const TextStyle(fontSize: 22, color: Colors.black)),
                  ]),
                ),
                Container(
                    height: 50,
                    alignment: Alignment.bottomLeft,
                    child: const Text('Характеристики',
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 26, color: Colors.white))),
                // Container(
                //     padding: EdgeInsets.symmetric(vertical: 30),
                //     color: const Color.fromARGB(105, 255, 255, 255),
                //     child: ListView.separated(
                //       itemCount: carsList[1].characteristics.length,
                //       separatorBuilder: (context, index) => const Divider(),
                //       itemBuilder: (context, index) {
                //         return Row(children: [
                //           Text(characteristicName[index]),
                //           Text(car.characteristics[index]),
                //         ]);
                //       },
                //     )),
                YoutubePlayer(
                  controller: controller,
                  aspectRatio: 16 / 9,
                )
              ])
            ],
          ),
        ),
      ),
    );
  }
}
