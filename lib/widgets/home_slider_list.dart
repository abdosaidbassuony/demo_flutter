import 'package:flutter/material.dart';
import 'package:gpu_flutter_app/data_layer/model/response/data.dart';
import 'package:gpu_flutter_app/widgets/pending_action.dart';

Widget homeSliderList(List<Data> data) {
  return ListView.builder(
      itemExtent: 300,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) => Card(
            clipBehavior: Clip.antiAlias,
            elevation: 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image.network(
                  data[index].propertyImages.first.url,
                  loadingBuilder: (context, child, loadingProgress) =>
                      loadingProgress == null ? child : PendingAction(),
                  fit: BoxFit.fill,
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  top: 90,
                  child: Container(
                    color: Colors.white54,
                    child: Column(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8, right: 8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Text(
                                    "APARTMENT",
                                  ),
                                ),
                                Expanded(
                                  child: Text(data[index].price + " AED",
                                      textAlign: TextAlign.right),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 4, right: 8),
                            child: Text(
                              data[index].address,
                              maxLines: 1,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Row(
                              children: [
                                Icon(Icons.single_bed),
                                Padding(
                                  child: Text(data[index].bedRoom.toString()),
                                  padding: EdgeInsets.only(left: 4),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 4),
                                  child: Icon(Icons.bathtub),
                                ),
                                Padding(
                                  child: Text(data[index].bathRoom.toString()),
                                  padding: EdgeInsets.only(left: 4),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 8),
                                  child: Icon(Icons.event),
                                ),
                                Padding(
                                  child: Text(data[index].area.toString()),
                                  padding: EdgeInsets.only(left: 4),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
      itemCount: data.length);
}
