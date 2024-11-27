import 'package:flutter/material.dart';
import 'package:jeeveeapp/Navbar/navbar.dart';
import 'package:jeeveeapp/containers/BabyFoods/baby_foods.dart';
import 'package:jeeveeapp/containers/BabyFormula/baby_formula.dart';
import 'package:jeeveeapp/containers/CategoryMain/category_List.dart';
import 'package:jeeveeapp/containers/Cleansers/cleansers.dart';
import 'package:jeeveeapp/containers/Conditioners/conditioners.dart';
import 'package:jeeveeapp/containers/Diapers/diapers.dart';
import 'package:jeeveeapp/containers/FaceMoisturizer/face_moisturizers.dart';
import 'package:jeeveeapp/containers/FaceWash/facewash.dart';
import 'package:jeeveeapp/containers/FeedingBottleBowls/feeding_bottlebowls.dart';
import 'package:jeeveeapp/containers/HairCreams&Masks/haircreams.dart';
import 'package:jeeveeapp/containers/HairSerum/hairSerum.dart';
import 'package:jeeveeapp/containers/PersonalCare/personal_care.dart';
import 'package:jeeveeapp/containers/Wipes&Buds/wipesBuds.dart';
import 'package:jeeveeapp/containers/mensFragrances/menFragrances.dart';
import 'package:jeeveeapp/containers/serums_essence/categorySerums.dart';

import '../FaceSunscreen/face_sunscreen.dart';
import '../HairOil/hairoil.dart';
import '../Kits&Combo/kitsCombo.dart';
import '../Lotions&Creams/lotionCreams.dart';
import '../Shampoo/shampoo.dart';
import '../WomensFragrances/womenFragrances.dart';

class CategoryMainPage extends StatefulWidget {
  const CategoryMainPage({super.key});

  @override
  State<CategoryMainPage> createState() => _CategoryMainPageState();
}

class _CategoryMainPageState extends State<CategoryMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Navbar(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            MakeUpList(),
            SerumsEssence(),
            PersonalCare(),
            FaceSunscreen(),
            FaceMoisturizers(),
            Facewash(),
            Lotioncreams(),
            Cleansers(),
            Haircreams(),
            Shampoo(),
            Womenfragrances(),
            Menfragrances(),
            Kitscombo(),
            Hairoil(),
            Hairserum(),
            Conditioners(),
            Diapers(),
            BabyFormula(),
            Wipesbuds(),
            BabyFoods(),
            FeedingBottlebowls(),
          ],
        ),
      ),
    );
  }
}
