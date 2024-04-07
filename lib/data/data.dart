class Cars {
  final int id;
  final String name;
  final List<String> characteristics;
  final int price;
  final List<String> imagePath;
  final String description;
  final String videoUrl;
  Cars(this.id, this.name, this.characteristics, this.videoUrl, this.price,
      this.imagePath, this.description);
}

List<Cars> carsList = [
  Cars(
      1,
      'Lada Granta Classic',
      [
        "Седан",
        "1160 кг",
        "Бензиновый",
        "1.6 л",
        "106",
        "6,8",
        "Механическая 5МТ"
      ],
      "https://www.youtube.com/watch?v=e_0aWE9xtF0",
      1000000,
      [
        "https://s.auto.drom.ru/i24228/m/bull_image_stub/default_90001e90f77318496b726b2e061f11f5.jpg",
        "https://static.lada.ru/files/sd/1466/gallery/779efc23-47e1-4588-af4c-2e1414620fea.jpeg",
        "https://img-c.drive.ru/models.photos/0000/000/000/001/369/48d61e473bac2e29-large.jpg"
      ],
      """это практичный и надежный седан, идеально подходящий для ежедневных поездок по городу. Автомобиль имеет просторный салон и большой багажник, а также оснащен необходимым набором опций для комфортной езды."""),
  Cars(
      2,
      'Lada Granta Drive Active',
      [
        "Седан",
        "1160 кг",
        "Бензиновый",
        "1.6 л",
        "115",
        "7",
        "Механическая 5МТ"
      ],
      "https://www.youtube.com/watch?v=e_0aWE9xtF0",
      1200000,
      [
        "https://alfaleasing.ru/catalog-next/_next/image/?url=https://io.ilsa.ru/gallery/catalog/2/e0/eff1eafbb3e4d63e47ad27ab14962e02.jpg&w=2048&q=70",
        "https://images.drive.ru/i/0/5d710a27ec05c41e5700000e.jpg",
        "https://cdnstatic.rg.ru/crop1300x868/uploads/images/173/38/35/lada_granta_sport_9.jpeg"
      ],
      """это модернизированная версия классической Гранты, отличающаяся улучшенным дизайном и более богатой комплектацией. 
                                                                                                                                                                              Автомобиль оснащен современными системами безопасности и мультимедиа, а также имеет более мощный двигатель."""),
  Cars(
      3,
      'Lada Vesta SW Cross',
      [
        "Универсал",
        "1300 кг",
        "Бензиновый",
        "1.6 л",
        "106",
        "9,9",
        "Механическая 5МТ"
      ],
      "https://www.youtube.com/watch?v=Z6_HgFX9E80",
      1300000,
      [
        "https://alfaleasing.ru/catalog-next/_next/image/?url=https://io.ilsa.ru/gallery/catalog/e/d6/09235afbc190e2281c58bc05fb618d6e.jpg&w=1200&q=70"
            "https://lada.uz/uploads/family/4/17/overview-1920.jpeg",
        "https://img-c.drive.ru/models.photos/0000/000/000/001/126/48d542d9266fc15c-large.jpg"
      ],
      """это универсал в стиле кроссовер, сочетающий в себе практичность и стиль. Автомобиль имеет повышенный клиренс и защиту днища,
   что позволяет ему преодолевать легкие бездорожья. Вместительный салон и большой багажник делают Vesta SW Cross идеальным выбором для семейных поездок."""),
  Cars(
      4,
      'Lada XRAY Cross',
      [
        'кроссовер',
        "1210 кг",
        "бензиновый",
        "1.8 л",
        "110",
        "10,5",
        "механическая"
      ],
      'https://www.youtube.com/watch?v=QIwG-SQoIlU',
      1400000,
      [
        "https://img-c.drive.ru/models.photos/0000/000/000/001/7f3/48d7cc3886abcf58-large.jpg",
        "https://img-c.drive.ru/models.photos/0000/000/000/001/7f5/48d7cc3886abcf58-large.jpg",
        "https://img-c.drive.ru/models.photos/0000/000/000/001/7f4/48d7cc3886abcf58-large.jpg"
      ],
      """это стильный и динамичный кроссовер, оснащенный современными опциями и технологиями. Автомобиль имеет яркий дизайн и хорошую проходимость, а также оснащен системами помощи водителю и мультимедиа."""),
  Cars(
      5,
      'UAZ Patriot Classic',

      ['Внедорожник',
      "1980 кг",
      "бензиновый",
      "2,7",
      "150",
      "14,5",
      "механическая"],

      'https://www.youtube.com/watch?v=wtQw6LPvlPM',
      2000000,
      [
        "https://autoreview.ru/images/Article/1593/Article_159305_860_575.jpg",
        "https://img-c.drive.ru/models.photos/0000/000/000/000/e33/48d4698eb8b3e2ac-large.jpg",
        "https://img-c.drive.ru/models.photos/0000/000/000/000/e31/48d4698eb8b3e2ac-large.jpg"
      ],
      """это классический внедорожник, известный своей надежностью и проходимостью. Автомобиль имеет простой и функциональный дизайн, а также оснащен необходимым набором опций для комфортной езды по бездорожью."""),
  Cars(
      6,
      'UAZ Patriot Sport',
      [
        'Внедорожник',
        "1980 кг",
        "бензиновый",
        "2,7",
        "150",
        "14,5",
        "автоматическая"
      ],
      'https://www.youtube.com/watch?v=wtQw6LPvlPM',
      2300000,
      [
        "https://images.drive.ru/i/0/60ffe49cf5a4a038d11cdfac.jpg",
        "https://img-c.drive.ru/models.photos/3840/000/000/001/f66/88ccefeb22b02cac-large.jpg",
        "https://img-c.drive.ru/models.photos/3840/000/000/001/f67/88ccefeb22b02cac-large.jpg"
      ],
      """это классический внедорожник, известный своей надежностью и проходимостью. Автомобиль имеет простой и функциональный дизайн, а также оснащен необходимым набором опций для комфортной езды по бездорожью."""),
  Cars(
      7,
      'UAZ Pickup',
      [
        'Грузовик',
        "2130 кг",
        "дизельный",
        "2,2",
        "112",
        "15,5",
        "механическая"
      ],
      'https://www.youtube.com/watch?v=mdyHrOLQfOo',
      1900000,
      [
        "https://images.drive.ru/i/0/5c5becabec05c44d7e000059.jpg",
        "http://cdn.motorpage.ru/Photos/800/1AC2.jpg",
        "https://avto-city.ru/images/uaz/pikap/2.png"
      ],
      """это грузовик, предназначенный для перевозки грузов и оснащенный прочным кузовом и мощным двигателем. Автомобиль имеет высокую проходимость и может использоваться для работы в сложных условиях.""")
  // Cars(8, 'UAZ Profi', 'Фургон, 2.7 л, 5МТ, 150 л.с.', 3400000,["https://uaz-ekb.ru/public/cat/cars/132-kupit-uaz-profi-furgon-2021-modelnogo-goda.jpg",
  //                                                               "https://www.uaz.ru/data/uaz/assets/00000000332.jpg?key=contain",
  //                                                               "https://cdnstatic.rg.ru/crop1300x868/uploads/images/205/59/22/01.jpg"] ),
  // Cars(9, 'GAZelle Business', 'Минивен, 2.8 л, 5МТ, 150 л.с.', 3500000,["https://strg2.autovsalone.ru/neofiles/serve-image/597af77764e0a1754c0be7be/1190x500/q90",
  //                                                                       "http://truck.ironhorse.ru/wp-content/uploads/2014/10/gaz-3221-biznez-int.jpg",
  //                                                                       "https://cdn.matador.tech/source/gallery/12908/17146/large_width.jpg"] ),
  // Cars(10, 'Lada Largus Cross', 'Универсал, 1.6 л, 5МТ, 106 л.с.', 1500000,["https://cdnstatic.rg.ru/crop1300x868/uploads/images/194/12/10/1595851349_e3.jpg",
  //                                                                           "https://static.lada.ru/images/v6/cars/about/new-largus/cross/tablet/main.jpg",
  //                                                                           "https://cdnstatic.rg.ru/crop480x320/uploads/images/192/86/72/v3_2_lq.jpg"] ),
  // Cars(11, 'Lada Largus Luxe', 'Универсал, 1.6 л, 4АТ, 106 л.с.', 1700000,["https://img-c.drive.ru/models.photos/0000/000/000/001/ab1/48d92a75ec6f3443-largethumbnail.jpg",
  //                                                                          "https://agat-group.com/upload/d8/d8ea86d6a10ab4dce97309292afc228d.jpg",
  //                                                                          "https://agat-group.com/upload/c5/c573fd43221a4bd93a2ebfb2b4440dfd.jpg"] ),
  // Cars(12, 'Lada 4x4 Urban', 'Внедорожник, 1.7 л, 5МТ, 83 л.с.', 1200000,["https://ladacenter.ru/ds/cars/about/img/preview/1406547908_lada_4x4_urban_31_01.jpg",
  //                                                                         "https://cardana.ru/img/auto/vaz/4x4_urban/4x4_urban_6b.jpg",
  //                                                                         "https://www.avtosreda.ru/upload/iblock/119/11967b51a5471de374aa18aad59b9c44.jpg"] ),
  // Cars(13, 'Lada 4x4 Bronto', 'Внедорожник, 1.7 л, 5МТ, 83 л.с.', 1300000,["https://motor.ru/thumb/1816x0/filters:quality(75):no_upscale()/imgs/2020/04/10/07/3860354/791f0a4b279b2c6136f63ef9696772264f60dbaa.jpg",
  //                                                                          "https://rg.ru/T6yQ5kF78/0427b266/6tNM3yTWn5j9bzo68VJGsoGsPOcFdHxSIrQTUzSZI1H_Tkkkufwmf5pyXbllQlZRhTddM2M4_Ce8mvTgaPO_e_qy3buj0k_bSJ3-CsB2Nidg_7v0NjKvkfFnhFSTKYZgi2vrhk",
  //                                                                          "https://www.major-lada.ru/files/resources/main_bronto.jpg"]),
  // Cars(14, 'Aurus Senat', 'Седан, 4.4 л, АВТ, 598 л.с.', 22000000,["https://s.auto.drom.ru/i24230/c/photos/generations/500x_aurus_senat_g8376.jpg?876743",
  //                                                                 "https://st4.zr.ru/_ah/img/47_INLbvRqyReb-_I1bTVg=s800",
  //                                                                 "https://31t433rm3n.a.trbcdn.net/i/files2/auto/2023/02/Aurus_Senat_2023_zastavka_01.jpg"]),
  // Cars(15, 'Aurus Arsenal', 'Минивэн, 4.4 л, АВТ, 598 л.с.', 26000000,["https://motor.ru/thumb/1816x0/filters:quality(75):no_upscale()/imgs/2021/09/11/19/4886725/a4bb7bda3cd38b9a0a06100211b1971cde008846.jpg",
  //                                                                      "https://autoreview.ru/images/gallery/%D0%9D%D0%BE%D0%B2%D0%BE%D1%81%D1%82%D0%B8/2021/September/13/aurus-arsenal3.jpg",
  //                                                                      "https://autoreview.ru/images/gallery/%D0%9D%D0%BE%D0%B2%D0%BE%D1%81%D1%82%D0%B8/2021/September/13/aurus-arsenal2.jpg"]),
  // Cars(16, 'Sollers UAZ Hunter', 'Внедорожник, 2.7 л, 5МТ, 145 л.с.', 1400000,["https://sollers-auto.com/about/products/img/uaz-hunter.jpg",
  //                                                                              "https://s2.usedcars.ru/photos/2020/05/main/Jzz0M4wrUuWrNdZLp075.jpg",
  //                                                                              "https://image-server.autospot.ru/images/1/1/0/10/1/3/1307833/resize/635x476/1307833.png"]),
];


List<Cars> cart = [
  carsList[0]
];


List<Cars> favorite = [];

List<String> characteristicName = [
  "Тип машины",
  "Масса",
  "Тип двигателя",
  "Рабочий объем двигателя",
  "Мощность двигателя (л/с)",
  "Расход на 100 км, л",
  "Коробка передач"
];
