import 'package:flutter/material.dart';

class ItemLoader extends StatelessWidget {
  final double _height;
  final Color color;

  ItemLoader(this._height, {this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.all(3),
      height: _height,
      child: Center(
        child: SizedBox(
          width: 33,
          height: 33,
          child: CircularProgressIndicator(
            strokeWidth: 3,
          ),
        ),
      ),
    );
  }
}
