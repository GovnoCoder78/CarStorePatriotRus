import 'package:flutter/material.dart';
import 'package:rus_cars_list/data/data.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class CarCard extends StatefulWidget {
  Cars carOnCard;
  CarCard({super.key, required this.carOnCard});

  @override
  State<CarCard> createState() => _CarCardState(carOnCard);
}

class _CarCardState extends State<CarCard> {
  Cars carOnCard;
  _CarCardState(this.carOnCard);
  @override
  Widget build(BuildContext context) {
    //Cars car = carsList[carIndex];
    String? videoId;
    videoId = YoutubePlayerController.convertUrlToId(carOnCard.videoUrl);
    final _controller = YoutubePlayerController();
    _controller.cueVideoById(videoId: videoId.toString());
    videoId = YoutubePlayerController.convertUrlToId(carOnCard.videoUrl);
    _controller.loadVideoById(videoId: videoId.toString());

    return Scaffold(
      appBar: AppBar(
        title: Text(carOnCard.name,
        style: const TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.bold
    ),
    ),
    backgroundColor: const Color.fromARGB(100, 220, 124, 124),
    centerTitle: true,
      ),
      backgroundColor: const Color.fromARGB(100, 255, 255, 255),
      body: Stack(
        children: [
      ListView(
      children: <Widget>[
        Container(
          height: 320,
          child: Swiper(
           itemCount: carOnCard.imagePath.length,
           // carsList[ImageSwiper.carId].imagePath.length ,
           itemBuilder: (BuildContext context, int index){
             return Image.network(carOnCard.imagePath[index],
                                  fit: BoxFit.fill,);
            }
          ),
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                  Text(carOnCard.name,
                  textAlign: TextAlign.left,
                  style: const TextStyle(
                   fontSize: 28,
                   color: Colors.white
                  ),
                ),
                RichText(
                textAlign: TextAlign.left,
                text: TextSpan(
                  text: carOnCard.price.toString(),
                  style: const TextStyle(
                  fontSize: 32,
                   color: Colors.white
                  ),
                  children: [
                  const TextSpan(text: ' ₽', style: TextStyle(
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
                child: const Text('Описание',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 26,
                color: Colors.white),
                )
                ),
                Container(
                height: 80,
                  child: ListView(
                    children: [
                      Text(carOnCard.description,
                        style: const TextStyle(fontSize: 22,
                        color: Colors.white)
                      ),
                    ]
                  ),
                ),
                Container(
                height: 50,
                alignment: Alignment.bottomLeft,
                child: const Text('Характеристики',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 26,
                      color: Colors.white)
                )
                ),
                Container(
                  color: const Color.fromARGB(105, 255, 255, 255),
                  child: Table(
                    defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                    children: [
                      TableRow(
                        children:[
                          Text(
                            textAlign: TextAlign.left,
                              characteristicName[0],
                              style: const TextStyle(
                                fontSize: 22,
                                color: Colors.white
                              ),
                            ),
                          Text(
                            textAlign: TextAlign.center,
                            carOnCard.characteristics[0],
                              style: const TextStyle(
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
                              style: const TextStyle(
                                  fontSize: 22,
                                  color: Colors.white
                              ),
                            ),
                            Text(
                              textAlign: TextAlign.center,
                              carOnCard.characteristics[1],
                              style: const TextStyle(
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
                              style: const TextStyle(
                                  fontSize: 22,
                                  color: Colors.white
                              ),
                            ),
                            Text(
                              textAlign: TextAlign.center,
                              carOnCard.characteristics[2],
                              style: const TextStyle(
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
                              style: const TextStyle(
                                  fontSize: 22,
                                  color: Colors.white
                              ),
                            ),
                            Text(
                              textAlign: TextAlign.center,
                              carOnCard.characteristics[3],
                              style: const TextStyle(
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
                              style: const TextStyle(
                                  fontSize: 22,
                                  color: Colors.white
                              ),
                            ),
                            Text(
                              textAlign: TextAlign.center,
                              carOnCard.characteristics[4],
                              style: const TextStyle(
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
                              style: const TextStyle(
                                  fontSize: 22,
                                  color: Colors.white
                              ),
                            ),
                            Text(
                              textAlign: TextAlign.center,
                              carOnCard.characteristics[5],
                              style: const TextStyle(
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
                              style: const TextStyle(
                                  fontSize: 22,
                                  color: Colors.white
                              ),
                            ),
                            Text(
                              textAlign: TextAlign.center,
                              carOnCard.characteristics[6],
                              style: const TextStyle(
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
          Container(
            padding: EdgeInsets.all(10),
            alignment: Alignment.bottomCenter,
            child:Row(
          children: [
            Expanded(
              flex: 4,
              child: ElevatedButton(
                child: Container(
                  child: Text('Добавить в корзину'),
                ),
                onPressed: () {
                  cart.add(carOnCard);
                },
              )
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              flex: 1,
              child: ElevatedButton(
                  child: Icon(Icons.favorite,
                    color: carOnCard.isFavorite ? Colors.red : Colors.grey
                ),
                onPressed: () {
                  setState(() {() {
                    bool isUnic = true;
                    for (int i = 0; i < favorite.length; ++i) {
                      if (i > 0 && favorite[i].id == favorite[i - 1].id)
                        isUnic = false;
                    }
                    if (isUnic) favorite.add(carOnCard);
                  };
                  carOnCard.isFavorite = !carOnCard.isFavorite;
                  });
                },
              )
          )

    ],
            )
          ),
    ]
      )
          );

  }
}
