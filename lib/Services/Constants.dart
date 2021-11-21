import 'package:flutter/material.dart';
List itemsTab = [
  {"icon": Icons.home, "size": 28.0},
  {"icon": Icons.map, "size": 22.0},
  {"icon": Icons.shopping_bag, "size": 22.0},
  {"icon": Icons.more_horiz, "size": 40.0},
];

const List<Map> categories = [
  {
    
    'title': 'Cat',
    
    'img' : ['https://zoo1.by/image/cache/catalog/tovar/reyting-suhih-kormov-dlya-koshek-41-768x960-800x800.jpg',
    'https://zoo1.by/image/cache/catalog/tovar/477306_400x400-800x800.jpg',
    'https://zoo1.by/image/cache/catalog/tovar/396987_1600x1600-800x800.jpg',
    'https://zoo1.by/image/cache/catalog/screenshot_17-800x800.png',
    'https://zoo1.by/image/cache/catalog/screenshot_12-800x800.png',
    'https://zoo1.by/image/cache/catalog/tovar/9097-800x800.jpg',
    'https://zoo1.by/image/cache/catalog/tovar/434524_400x400-800x800.jpg',
    'https://zoo1.by/image/cache/catalog/tovar/13314-800x800.png',
    ],
    'producttitle' : ['"Мяу" cухой корм для кошек Аппетитная Печенка, 11 кг',
    '"Мяу" cухой корм для кошек Аппетитная Печенка, 11 кг',
    'APPLAWS Беззерновой корм для Котят "Курица/Овощи"',
    'APPLAWS Беззерновой корм для Котят "Курица/Овощи"',
    'Gimcat BEAUTY-KISS Лакомство для кошек, 40 гр',
    'Gimcat BEAUTY-KISS Лакомство для кошек, 40 гр',
    'Applaws консервы для кошек с куриной грудкой и сыром, Cat Chicken Breast & Cheese',
    'MONGE CAT Grill Kitten Salmon (пауч 85 г) кусочки в желе с лососем для котят',
    ],
    'price' : [
      '53.20',
      '30.00',
      '23.42',
      '18.56',
      '5.06',
      '7.06',
      '6.62',
      '2.20'
    ],
    
    'imgUrl':
        'https://aplicacion-para.net/wp-content/uploads/2018/04/Google-photos.jpg',
  },
  {
    'title': 'Dog',
    'img' : ['https://zoo1.by/image/cache/catalog/2021-02-28_11-38-21-800x800.png',
    'https://zoo1.by/image/cache/catalog/31-800x800.jpg',
    'https://zoo1.by/image/cache/catalog/tovar/gav-myasnoe-assorti_b-700x700-800x800.jpg',
    'https://zoo1.by/image/cache/catalog/tovar/111422_1-800x800.jpg',
    'https://zoo1.by/image/cache/catalog/screenshot_41-800x800.png',
    'https://zoo1.by/image/cache/catalog/products/10151002_dl-18000_2-800x800.jpeg',
    'https://zoo1.by/image/cache/catalog/indejka-800x800.jpg',
    'https://zoo1.by/image/cache/catalog/screenshot_77-800x800.png',
    ],
    'producttitle' : ['ProBalance Dog Immuno Adult Light, 15 кг',
    '"Optimeal" 12 кг защита иммунитета сухой корм для собак средних пород (гипоаллергенный) с лососем',
    '"Optimeal" 12 кг защита иммунитета сухой корм для собак средних пород (гипоаллергенный) с лососем',
    'Brit Care Dog Functional Snack Antistress с креветками (Эффект «Антистресс») 150 g',
    'Harper №1/1 Стики из говядины',
    'BRH6 Кость узловая белая, 50-55г',
    '"Optimeal" Беззерновой полнорационный консервированный корм для собак малых и миниатюрных пород с индейкой и печенью в тыквенном желе (9+3) 1,02кг',
    'ProBalance Adult Small&Medium для взрослых собак малых и средних пород (пауч), 100 гр',
    ],
    'price' : [
      '84.20',
      '164.91',
      '12.67',
      '14.03',
      '12.96',
      '41.29',
      '20.76',
      '0.69'
    ],
    
    'imgUrl':
        'https://i.imgur.com/glxeOgS.jpg',
  },
  {
    'title': 'Bird',
    'img' : ['https://zoo1.by/image/cache/catalog/les-800x800.jpg',
    'https://zoo1.by/image/cache/catalog/kormpopugaj-800x800.png',
    'https://zoo1.by/image/cache/catalog/tovar/13077-800x800.png',
    'https://zoo1.by/image/cache/catalog/511760_400x400-213x278-800x800.jpg',
    'https://zoo1.by/image/cache/catalog/1efbb624163403bf85336e8926247c77-800x800.jpg',
    'https://zoo1.by/image/cache/catalog/19919878_1-800x800.jpg',
    'https://zoo1.by/image/cache/catalog/256-kletka-lori-kraska.crop-230x230.603bf0fea4-800x800.jpg',
    'https://zoo1.by/image/cache/catalog/5471-800x800.png',
    ],
    'producttitle' : ['RIO Корм для лесных птиц, 500 г',
    'RIO Корм для крупных попугаев',
    'Корм для декоративных птиц и гызунов DR. HVOSTOFF Просо красное 0,5 кг',
    'RIO Витаминно-минеральные гранулы для волнистых и средних попугаев, 120 г',
    'RIO Палочки для волнистых попугаев и экзотических птиц с медом, 2х40г',
    'RIO Палочки для всех видов птиц с яйцом и ракушечником, 2х40г',
    'RIO Палочки для всех видов птиц с яйцом и ракушечником, 2х40г',
    'Подвесная чаша с держателем для проволоки, пластик',
    ],
    'price' : [
      '5.41',
      '11.10',
      '2.50',
      '4.37',
      '4.02',
      '4.02',
      '60.94',
      '2.88'
    ],
    'imgUrl':
        'https://avatars.mds.yandex.net/get-zen_doc/1686199/pub_5e3ff838f028171317e12c0a_5e40090ea183c0189690f034/scale_1200',
  },
  {
    'title': 'Rodent',
    'img' : ['https://zoo1.by/image/cache/catalog/degu-800x800.jpg',
    'https://zoo1.by/image/cache/catalog/tovar/bf1e20a4462b71e3cc4cece2a8c96ac8_xl-800x800.jpg',
    'https://zoo1.by/image/cache/catalog/tovar/5d231997759398fd54d0c1f438d55347_xl-800x800.jpg',
    'https://zoo1.by/image/cache/catalog/915cf0f39634f01c2f4c8522dc602b98-800x800.jpg',
    'https://zoo1.by/image/cache/catalog/121019wm-800x800.jpg',
    'https://zoo1.by/image/cache/catalog/5eb8040c58c1a26ecac9194599fa2e0c-800x800.jpg',
    'https://zoo1.by/image/cache/catalog/products/0dfc1ed0dd063e5d5aedad380b3027b7d0a091bc-800x800.jpeg',
    'https://zoo1.by/image/cache/catalog/tovar/p20-50-800x800.png',
    ],
    'producttitle' : ['Little One Зеленая долина для дегу 750 г',
    'VITAPOL Полнорационный корм для кролей',
    'VITAPOL Karma Economic д/кролей 1.200 гр',
    'Little One Колокольчик. Лакомство – игрушка для всех видов грызунов, 150 г',
    'Little One Бисквиты для мелких грызунов с морковью и шпинатом, 5*7г',
    'Little One Витамин С. Лакомство для всех видов грызунов, 180 г',
    '3305 Клетка для мелких животных, эмаль, 345*280*215мм',
    'Triol Поилка G2-50 для мелких животных, 50мл',
    ],
    'price' : [
      '10.00',
      '4.80',
      '8.50',
      '6.25',
      '3.10',
      '6.66',
      '49.92',
      '7.60'
    ],
    'imgUrl':
        'https://funart.pro/uploads/posts/2021-07/1627760391_16-funart-pro-p-sonevie-grizuni-zhivotnie-krasivo-foto-18.jpg',
  },
  {
    'title': 'Aquariums',
    'img' : ['https://zoo1.by/image/cache/catalog/tovar/2108/6494fdfcbb22d2895832f240494579e03b3e1ee1-800x800.jpg',
    'https://zoo1.by/image/cache/catalog/tovar/2108/5bc48ff6bc6b13b1c50dfb26a9815545da9962d9-800x800.jpg',
    'https://zoo1.by/image/cache/catalog/tovar/2108/bec5c1851047e84b5d7f5c0e688729379d80682f-800x800.jpg',
    'https://zoo1.by/image/cache/catalog/products/243733_885979-800x800.jpeg',
    'https://zoo1.by/image/cache/catalog/products/bedd6563f0bb97443caaab5f3be15421172ade8c-800x800.jpeg',
    'https://zoo1.by/image/cache/catalog/tovar/2108/65fb66e78357faa4ec009272c123e59fe81ca034-800x800.jpg',
    'https://zoo1.by/image/cache/catalog/tovar/2108/ddb840f4c0fb9e8d1f47b7b421a2a64dba8dfe73-800x800.jpg',
    'https://zoo1.by/image/cache/catalog/tovar/2108/750480405603fdca599858_original-800x800.jpg',
    ],
    'producttitle' : ['Laguna грот "Амфора Фараон", песочная, 147*112* 120мм',
    'Laguna грот "Амфора Фараон", песочная, 147*112* 120мм',
    'Фильтр навесной 508BF, 10Вт, 980л/ч, 233*166*218мм',
    'Светильник светодиодный 603HBc навесной, 3Вт, 149*39*20мм',
    'Софит погружной 101LEDW, 0,4Вт, белый, 35*35*35мм, Laguna',
    'Софит погружной 101LEDW, 0,4Вт, белый, 35*35*35мм, Laguna',
    'Нагреватель Optima 100Вт LE100W с керамическим греющим элементом',
    'Компрессор 108, 2,5Вт, 1*1,5л/мин, 88*53*39мм',
    ],
    'price' : [
      '12.88',
      '32.64',
      '81.76',
      '55.28',
      '30.56',
      '3.68',
      '21.60',
      '18.72'
    ],
    'imgUrl':
        'https://i.sunhome.ru/journal/118/harakter-rib-v2.orig.jpg',
  },
];
const List news = [
  {
    'title': 'Tetra Аквариум "Cascade Globe Glass", 6,8 л',
    'price': '30',
    'imgUrl':
        'https://garfield.by/upload/iblock/350/350a2c39b31bb147b801960f9edc90f3.jpg',
  },
  {
    'title': 'Royal Canin Chihuahua Adult (паштет)',
    'price': '35',
    'imgUrl':
        'https://zoo1.by/image/cache/catalog/tovar/k_chihuahua_wet-800x800.jpg',
  },
  {
    'title': 'Hill''s Science Plan Optimal Care для взрослых кошек (тунец) 1 кг',
    'price': '25',
    'imgUrl':
        'https://zoo1.by/image/cache/catalog/tovar/156-380x380.jpg',
  },
  {
    'title': 'Аппетитные колбаски из курицы для собак, 40 гр',
    'price': '30',
    'imgUrl':
        'https://zoo1.by/image/cache/catalog/tovar/2108/8bf8b535828689354d0ff3a72d7c950fbbf3267b-380x380.jpg',
  },
  {
    'title': '"Optimeal" 85 г защита иммунитета консервированный корм для кошек с ягненком и овощами в желе',
    'price': '20',
    'imgUrl':
        'https://zoo1.by/image/cache/catalog/4-380x380.jpg',
  }
];
const List sales = [
  {
    'title': '"Royal Canin Ageing 12+" Сухой корм для взрослых кошек старше 12 лет',
    'oldprice': '9.30',
    'price': '7.44',
    'imgUrl':
        'https://zoo1.by/image/cache/catalog/tovar/015-800x800.jpg',
  },
  {
    'title': 'Royal Canin Sterilised влажный корм для стерилизованных кошек (в соусе) 85 гр.',
    'oldprice': '2.00',
    'price': '1.60',
    'imgUrl':
        'https://zoo1.by/image/cache/catalog/tovar/099-800x800.png',
  },
  {
    'title': '"TRIXIE" Намордник регулируемый, мягкий, XS',
    'oldprice': '6.40',
    'price': '5.12',
    'imgUrl':
        'https://zoo1.by/image/cache/catalog/tovar/192-700x700-800x800.jpg',
  },
  {
    'title': '"Gina Dog Denmark Salmon & Rice" корм для собак с лососем и рисом 1 кг. весовка',
    'oldprice': '82.58',
    'price': '66.06',
    'imgUrl':
        'https://zoo1.by/image/cache/catalog/tovar/27-800x800.png',
  },
  {
    'title': '"TRIXIE" Миска Керамическая для Кошек с Рисунком',
    'oldprice': '101.84',
    'price':'81.47',
    'imgUrl':
        'https://zoo1.by/image/cache/catalog/products/1429c347fa503481bdf2883bb322dce522ffea91-800x800.jpeg',
  },
  {
    'title': 'Triol Комбинезон зимний "Веселые мордашки"',
    'oldprice': '8.50',
    'price': '6.8',
    'imgUrl':
        'https://zoo1.by/image/cache/catalog/tovar/qqbnltk6-800x800.jpg',
  },
  {
    'title': 'Имак переноска д/животных KIM 60 на колесах, новые цвета в ассортименте, 60х40х45см',
    'oldprice': '46.00',
    'price': '36.8',
    'imgUrl':
        'https://zoo1.by/image/cache/catalog/brands/5fccdb3d14dafc463989062e530ad53551e931f0-800x800.jpg',
  },
  {
    'title': '"Optimeal" 85 г защита иммунитета консервированный корм для кошек с ягненком и овощами в желе',
    'oldprice': '197.04',
    'price': '157.63',
    'imgUrl':
        'https://zoo1.by/image/cache/catalog/tovar/2108/product_img_4018-800x800.jpeg',
  }
];