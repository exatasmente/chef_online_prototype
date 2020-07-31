import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class ChefButton extends StatelessWidget {
  ChefButton({this.title, this.color, @required this.onPressed});

  final Color color;
  final String title;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Material(
          elevation: 5.0,
          color: color,
          borderRadius: BorderRadius.circular(4),
          child: MaterialButton(
            onPressed: onPressed,
            minWidth: MediaQuery.of(context).size.width,
            height: 42.0,
            child: Text(
              title,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}