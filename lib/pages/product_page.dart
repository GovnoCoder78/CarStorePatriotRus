import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rus_cars_list/data/data.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:rus_cars_list/pages/app_bar.dart';
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
    final _controller = YoutubePlayerController();
    _controller.cueVideoById(videoId: videoId.toString());
    videoId = YoutubePlayerController.convertUrlToId(car.videoUrl);
    _controller.loadVideoById(videoId: videoId.toString());
    bool click = false;
    final theme = Theme.of(context).textTheme;
    return Scaffold(
        appBar: const MainAppBar(),
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        body: Stack(children: [
          ListView(
            children: <Widget>[
              SizedBox(
                height: 320,
                child: Swiper(
                    itemCount: car.imagePath.length,
                    
                    itemBuilder: (BuildContext context, int index) {
                      return Image.network(
                        car.imagePath[index],
                        fit: BoxFit.fill,
                      );
                    }),
              ),
              Container(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          car.name,
                          textAlign: TextAlign.left,
                          style: theme.labelLarge,
                        ),
                        RichText(
                            textAlign: TextAlign.left,
                            text: TextSpan(
                              text: car.price.toString(),
                              style: theme.titleLarge,
                              children: [
                                TextSpan(
                                  text: ' ₽',
                                  style: theme.titleLarge,
                                )
                              ],
                            )),
                        Container(
                            alignment: Alignment.bottomLeft,
                            height: 50,
                            child: Text(
                              'Описание',
                              textAlign: TextAlign.left,
                              style: theme.titleLarge,
                            )),
                        Container(
                          height: 80,
                          child: ListView(children: [
                            Text(car.description, style: theme.labelMedium),
                          ]),
                        ),
                        Container(
                            height: 50,
                            alignment: Alignment.bottomLeft,
                            child: Text('Характеристики',
                                textAlign: TextAlign.left,
                                style: theme.titleLarge)),
                        Container(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Table(
                            defaultVerticalAlignment:
                                TableCellVerticalAlignment.middle,
                            
                            children: List<TableRow>.generate(
                                carsList[0].characteristics.length, (index) {
                              final char = carIndex;
                              return TableRow(children: [
                                Padding(
                                    padding: const EdgeInsets.all(5),
                                    child: Text(
                                      characteristicName[index],
                                      textAlign: TextAlign.center,
                                      style: theme.labelMedium,
                                    )),
                                Padding(
                                  padding: const EdgeInsets.all(5),
                                  child: Text(
                                    carsList[char].characteristics[index],
                                    textAlign: TextAlign.center,
                                    style: theme.titleMedium,
                                  ),
                                )
                              ]);
                            }),
                          ),
                        ),
                        // Container(
                        //   color: const Color.fromARGB(105, 255, 255, 255),
                        //   child: Table(
                        //     defaultVerticalAlignment:
                        //         TableCellVerticalAlignment.middle,
                        //     children: [
                        //       TableRow(children: [
                        //         Text(
                        //           textAlign: TextAlign.left,
                        //           characteristicName[0],
                        //           style: const TextStyle(
                        //               fontSize: 22, color: Colors.white),
                        //         ),
                        //         Text(
                        //           textAlign: TextAlign.center,
                        //           car.characteristics[0],
                        //           style: const TextStyle(
                        //               fontSize: 22, color: Colors.white),
                        //         )
                        //       ]),
                        //       TableRow(children: [
                        //         Text(
                        //           textAlign: TextAlign.left,
                        //           characteristicName[1],
                        //           style: const TextStyle(
                        //               fontSize: 22, color: Colors.white),
                        //         ),
                        //         Text(
                        //           textAlign: TextAlign.center,
                        //           car.characteristics[1],
                        //           style: const TextStyle(
                        //               fontSize: 22, color: Colors.white),
                        //         )
                        //       ]),
                        //       TableRow(children: [
                        //         Text(
                        //           textAlign: TextAlign.left,
                        //           characteristicName[2],
                        //           style: const TextStyle(
                        //               fontSize: 22, color: Colors.white),
                        //         ),
                        //         Text(
                        //           textAlign: TextAlign.center,
                        //           car.characteristics[2],
                        //           style: const TextStyle(
                        //               fontSize: 22, color: Colors.white),
                        //         )
                        //       ]),
                        //       TableRow(children: [
                        //         Text(
                        //           textAlign: TextAlign.left,
                        //           characteristicName[3],
                        //           style: const TextStyle(
                        //               fontSize: 22, color: Colors.white),
                        //         ),
                        //         Text(
                        //           textAlign: TextAlign.center,
                        //           car.characteristics[3],
                        //           style: const TextStyle(
                        //               fontSize: 22, color: Colors.white),
                        //         )
                        //       ]),
                        //       TableRow(children: [
                        //         Text(
                        //           textAlign: TextAlign.left,
                        //           characteristicName[4],
                        //           style: const TextStyle(
                        //               fontSize: 22, color: Colors.white),
                        //         ),
                        //         Text(
                        //           textAlign: TextAlign.center,
                        //           car.characteristics[4],
                        //           style: const TextStyle(
                        //               fontSize: 22, color: Colors.white),
                        //         )
                        //       ]),
                        //       TableRow(children: [
                        //         Text(
                        //           textAlign: TextAlign.left,
                        //           characteristicName[5],
                        //           style: const TextStyle(
                        //               fontSize: 22, color: Colors.white),
                        //         ),
                        //         Text(
                        //           textAlign: TextAlign.center,
                        //           car.characteristics[5],
                        //           style: const TextStyle(
                        //               fontSize: 22, color: Colors.white),
                        //         )
                        //       ]),
                        //       TableRow(children: [
                        //         Text(
                        //           textAlign: TextAlign.left,
                        //           characteristicName[6],
                        //           style: const TextStyle(
                        //               fontSize: 22, color: Colors.white),
                        //         ),
                        //         Text(
                        //           textAlign: TextAlign.center,
                        //           car.characteristics[6],
                        //           style: const TextStyle(
                        //               fontSize: 22, color: Colors.white),
                        //         )
                        //       ]),
                        //     ],
                        //   ),
                        // ),
                        Container(
                          child: YoutubePlayer(
                            controller: _controller,
                            aspectRatio: 16 / 9,
                          ),
                        )
                      ]))
            ],
          ),
          Container(
              padding: EdgeInsets.all(10),
              alignment: Alignment.bottomCenter,
              child: Row(
                children: [
                  Expanded(
                      flex: 4,
                      child: ElevatedButton(
                        child: Container(
                          child: Text('Добавить в корзину'),
                        ),
                        onPressed: () {
                          cart.add(carsList[carIndex]);
                        },
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      flex: 1,
                      child: ElevatedButton(
                        child: Container(
                          child: Icon(Icons.favorite,
                              color: click ? Colors.red : Colors.grey),
                        ),
                        onPressed: () {
                          setState(() {
                            () {
                              bool isUnic = true;
                              for (int i = 0; i < favorite.length; ++i) {
                                if (i > 0 &&
                                    favorite[i].id == favorite[i - 1].id)
                                  isUnic = false;
                              }
                              if (isUnic) favorite.add(car);
                            };
                            click = !click;
                          });
                        },
                      ))
                ],
              )),
        ]));
  }
}
