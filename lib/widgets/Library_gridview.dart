import 'package:flutter/material.dart';

class LibGridView extends StatelessWidget {
  final List<String> libleadImg;
  final List<String> liblisttitle;

  const LibGridView(
      {Key? key, required this.libleadImg, required this.liblisttitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 15,
        crossAxisSpacing: 15,
        childAspectRatio: 4 / 3,
      ),
      itemCount: libleadImg.length,
      scrollDirection: Axis.vertical,
      itemBuilder: (BuildContext context, int index) {
        return SizedBox(
          height: 200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ClipOval(
                child: Image.network(
                  libleadImg[index],
                  width: 115,
                  height: 115,
                  fit: BoxFit.cover,
                ),
              ),
              Text(
                liblisttitle[index],
                style: const TextStyle(
                  fontSize: 18,
                  overflow: TextOverflow.ellipsis,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
