import 'package:flutter/material.dart';
import 'package:rus_cars_list/main.dart';
import 'package:rus_cars_list/data/Cars.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
class CarCard extends StatefulWidget {
  int carIndex;
  CarCard({super.key, required this.carIndex});

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
    final _controller = YoutubePlayerController();
    _controller.cueVideoById(videoId: videoId.toString());
    return Scaffold(
      appBar: AppBar(
        title: Text(car.name,
        style: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.bold
    ),
    ),
    backgroundColor: Color.fromARGB(100, 220, 124, 124),
    centerTitle: true,
      ),
      backgroundColor: Color.fromARGB(100, 255, 255, 255),
      body: ListView(
      children: <Widget>[
        Container(
          height: 320,
          child: Swiper(
           itemCount: car.imagePath.length,
           // carsList[ImageSwiper.carId].imagePath.length ,
           itemBuilder: (BuildContext context, int index){
             return Image.network(car.imagePath[index],
                                  fit: BoxFit.fill,);
            }
          ),
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                  Text(car.name,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                   fontSize: 28,
                   color: Colors.white
                  ),
                ),
                RichText(
                textAlign: TextAlign.left,
                text: TextSpan(
                  text: car.price.toString(),
                  style: TextStyle(
                  fontSize: 32,
                   color: Colors.white
                  ),
                  children: [
                  TextSpan(text: ' ₽', style: TextStyle(
                      fontSize: 32,
                      color: Colors.white
                        )
                      )
                    ],
                  )
                ),
                Container(
                alignment: Alignment.bottomLeft,
                height: 50,
                child: Text('Описание',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 26,
                color: Colors.white),
                )
                ),
                Container(
                height: 80,
                  child: ListView(
                    children: [
                      Text(car.description,
                        style: TextStyle(fontSize: 22,
                        color: Colors.white)
                      ),
                    ]
                  ),
                ),
                Container(
                height: 50,
                alignment: Alignment.bottomLeft,
                child: Text('Характеристики',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 26,
                      color: Colors.white)
                )
                ),
                Container(
                  color: Color.fromARGB(105, 255, 255, 255),
                  child: Table(
                    defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                    children: [
                      TableRow(
                        children:[
                          Text(
                            textAlign: TextAlign.left,
                              characteristicName[0],
                              style: TextStyle(
                                fontSize: 22,
                                color: Colors.white
                              ),
                            ),
                          Text(
                            textAlign: TextAlign.center,
                              car.characteristics[0],
                              style: TextStyle(
                                fontSize: 22,
                                color: Colors.white
                              ),
                          )
                        ]
                      ),
                      TableRow(
                          children:[
                            Text(
                              textAlign: TextAlign.left,
                              characteristicName[1],
                              style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.white
                              ),
                            ),
                            Text(
                              textAlign: TextAlign.center,
                              car.characteristics[1],
                              style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.white
                              ),
                            )
                          ]
                      ),
                      TableRow(
                          children:[
                            Text(
                              textAlign: TextAlign.left,
                              characteristicName[2],
                              style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.white
                              ),
                            ),
                            Text(
                              textAlign: TextAlign.center,
                              car.characteristics[2],
                              style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.white
                              ),
                            )
                          ]
                      ),
                      TableRow(
                          children:[
                            Text(
                              textAlign: TextAlign.left,
                              characteristicName[3],
                              style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.white
                              ),
                            ),
                            Text(
                              textAlign: TextAlign.center,
                              car.characteristics[3],
                              style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.white
                              ),
                            )
                          ]
                      ),
                      TableRow(
                          children:[
                            Text(
                              textAlign: TextAlign.left,
                              characteristicName[4],
                              style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.white
                              ),
                            ),
                            Text(
                              textAlign: TextAlign.center,
                              car.characteristics[4],
                              style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.white
                              ),
                            )
                          ]
                      ),
                      TableRow(
                          children:[
                            Text(
                              textAlign: TextAlign.left,
                              characteristicName[5],
                              style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.white
                              ),
                            ),
                            Text(
                              textAlign: TextAlign.center,
                              car.characteristics[5],
                              style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.white
                              ),
                            )
                          ]
                      ),
                      TableRow(
                          children:[
                            Text(
                              textAlign: TextAlign.left,
                              characteristicName[6],
                              style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.white
                              ),
                            ),
                            Text(
                              textAlign: TextAlign.center,
                              car.characteristics[6],
                              style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.white
                              ),
                            )
                          ]
                      ),
                    ],
                  ),
                ),
                Container(
                  child: YoutubePlayer(
                    controller: _controller,
                    aspectRatio: 16/9,
                  ),
                )
              ]
                )
                )
              ],
            ),
          );

  }
}
