import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gpu_flutter_app/data_layer/model/response/data.dart';
import 'package:gpu_flutter_app/widgets/pending_action.dart';

Widget homePropertyList(List<Data> data) {
  return ListView.builder(
      itemExtent: 150,
      scrollDirection: Axis.vertical,
      physics: PageScrollPhysics(),
      itemCount: data.length,
      itemBuilder: (context, index) => Padding(

        padding: EdgeInsets.all(8),
        child: Card(
          clipBehavior: Clip.antiAlias,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
          elevation: 3,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.only(right: 4),
                  child: Image.network(
                    data[index].propertyImages.first.url,
                    loadingBuilder: (context, child, loadingProgress) =>
                        loadingProgress == null ? child : PendingAction(),
                    fit: BoxFit.fill,
                    width: 100,
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Padding(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(data[index].category),
                            Icon(Icons.favorite_border),
                          ],
                        ),
                        padding: EdgeInsets.fromLTRB(0, 4, 8, 4),
                      ),
                    ),
                    Expanded(child: Text(data[index].price + " AED")),
                    Expanded(child: Text(data[index].address)),
                    Expanded(
                      child: Row(
                        children: [
                          Icon(Icons.single_bed),
                          Padding(
                            child: Text(data[index].bedRoom.toString()),
                            padding: EdgeInsets.fromLTRB(4, 0, 0, 0),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(4, 0, 0, 0),
                            child: Icon(Icons.bathtub),
                          ),
                          Padding(
                            child: Text(data[index].bathRoom.toString()),
                            padding: EdgeInsets.fromLTRB(4, 0, 0, 0),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                            child: Icon(Icons.event),
                          ),
                          Padding(
                            child: Text(data[index].area.toString() + " sqft"),
                            padding: EdgeInsets.fromLTRB(4, 0, 0, 0),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
  );
}
