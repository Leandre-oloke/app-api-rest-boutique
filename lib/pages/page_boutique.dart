import 'package:carousel_slider/carousel_slider.dart'; // Assurez-vous d'ajouter carousel_slider dans pubspec.yaml
 //carousel slider permet de faire des diaporama d'images
import 'package:flutter/material.dart';

class PageBoutique extends StatefulWidget {
  const PageBoutique({super.key});

  @override
  State<PageBoutique> createState() => _PageBoutiqueState();
}

class _PageBoutiqueState extends State<PageBoutique> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        foregroundColor: Theme.of(context).appBarTheme.foregroundColor,
        title: const Text("Page Boutique"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,//les elements sont alignés en haut
          mainAxisSize: MainAxisSize.min, //la colonne prend la taille minimale necessaire pour afficher ses enfants
          children: [
            Text("Carousel"),
            //ajout d'un carousel d'images
            CarouselSlider(
              items: [
                Image.asset("assets/images/download.jpeg"),
                Image.asset("assets/images/download.jpeg"),
                Image.asset("assets/images/download.jpeg"),
              ], 
              //definir les options du carousel
              options: CarouselOptions(
                height: 200,
                aspectRatio: 16/9,
                viewportFraction: 0.6,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 3),
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                scrollDirection: Axis.horizontal,
              ),
            ),
            //un espaceur
            Expanded(
              child: SafeArea(
                bottom: true,
                child: Container(
                  width: double.infinity,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.red,
                      width: 3,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  //ajout d'une zone scrollable pour afficher les produits
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical, //definir la direction du scroll
                    child: Column(
                      children: [
                        Text("Les produits ici"),
                        Text("Les produits ici"),
                        Text("Les produits ici"),
                        Text("Les produits ici"),
                        Text("Les produits ici"),
                        Text("Les produits ici"),
                        Text("Les produits ici"),
                        Text("Les produits ici"),
                        Text("Les produits ici"),
                        Text("Les produits ici"),
                        Text("Les produits ici"),
                        Text("Les produits ici"),
                        Text("Les produits ici"),
                        Text("Les produits ici"),
                        Text("Les produits ici"),
                        Text("Les produits ici"),
                        Text("Les produits ici"),
                        Text("Les produits ici"),
                        Text("Les produits ici"),
                        Text("Les produits ici"),
                        Text("Les produits ici"),
                        Text("Les produits ici"),
                        Text("Les produits ici"),
                        Text("Les produits ici"),
                        Text("Les produits ici"),
                        Text("Les produits ici"),
                        Text("Les produits ici"),
                        Text("Les produits ici"),
                        Text("Les produits ici"),
                        Text("Les produits ici"),
                        Text("Les produits ici"),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}