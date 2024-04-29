import 'package:flutter/material.dart';

class LibraryListview extends StatelessWidget {
  final List<String> libleadImg;
  final List<String> liblisttitle;

  const LibraryListview({
    super.key,
    required this.libleadImg,
    required this.liblisttitle,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: liblisttitle.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: SizedBox(
            height: 70,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 13.0),
                  child: ClipOval(
                    child: Image.network(
                      libleadImg[index],
                      width: 65,
                      height: 65,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        liblisttitle[index],
                        style: const TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const Text(
                        'Artist',
                        textAlign: TextAlign.start,
                        style: TextStyle(fontSize: 13, color: Colors.white),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
