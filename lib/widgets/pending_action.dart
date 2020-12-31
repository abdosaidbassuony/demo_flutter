import 'package:flutter/material.dart';

class PendingAction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Align(
          alignment: Alignment.center,
          child: CircularProgressIndicator(),
        ),
        // ModalBarrier(
        //   dismissible: true,
        //   color: Colors.black.withOpacity(0.3),
        // ),
      ],
    );
  }
}
