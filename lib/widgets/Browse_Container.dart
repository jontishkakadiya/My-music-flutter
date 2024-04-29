import 'package:flutter/material.dart';

class browseContainer extends StatelessWidget {
  List<String> namedata = [];
  var colors = [];

  browseContainer({
    super.key,
    required this.namedata,
    required this.colors,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0, right: 15.0),
      child: GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 15,
            crossAxisSpacing: 15,
            childAspectRatio: 2,
          ),
          scrollDirection: Axis.vertical,
          itemCount: namedata.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
                // height: 50,
                // width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: colors[index],
                ),
                child: Stack(children: [
                  Positioned(
                      top: 8,
                      left: 8,
                      child: Text(
                        namedata[index],
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ))
                ]));
          }),
    );
  }
}
