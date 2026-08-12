import 'package:flutter/material.dart';

class GridViewExample extends StatelessWidget {
  const GridViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    final listGambar = [
      'https://images.pexels.com/photos/911810/pexels-photo-911810.jpeg',
      'https://images.pexels.com/photos/34406872/pexels-photo-34406872.jpeg',
      'https://images.pexels.com/photos/31621550/pexels-photo-31621550.jpeg',
      'https://images.pexels.com/photos/30459056/pexels-photo-30459056.jpeg',
    ];

    final listJudul = [
      'Demam Matcha 2026',
      'Babymonster Rilis "MOON" ',
      'Japanese Milk Bread Viral',
      'Notalgia Era 2010-an'
    ];

    final listDeskripsi = [
      'Matcha semakin populer dan digunakan dalam berbagai minuman, dessert, hingga parfum.',
      'BABYMONSTER menarik perhatian penggemar lewat perilisan MV MOON dan tur dunia mereka.',
      'Japanese Milk Bread atau roti susu Jepang viral di TikTok karena teksturnya yang lembut dan fluffy.',
      'Konten bernuansa tahun 2010-an kembali populer melalui lagu, filter, dan editan vintage di media sosial',
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown.shade800,
        title: const Text(
          'Berita Terbaru',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          mainAxisExtent: 350,
        ),
        itemCount: 4,
        itemBuilder: (BuildContext context, index) {
          return Container(
            margin: const EdgeInsets.all(8),
            child: Card(
              elevation: 4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: const BorderRadius.vertical(
                        top: Radius.circular(4),
                      ),
                      child: Image.network(
                        listGambar[index],
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          listJudul[index],
                          style: TextStyle(
                            fontWeight: FontWeight.bold, 
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                        listDeskripsi[index], 
                        style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
