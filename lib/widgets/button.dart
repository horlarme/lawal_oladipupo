import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Button extends StatelessWidget {
  final String text;

  final Color color;
  final Color splashColor;
  final Color textColor;

  final EdgeInsets padding;

  final VoidCallback onPressed;

  const Button(this.text,
      {Key key, this.color, this.padding, this.splashColor, this.textColor, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        child: new RaisedButton(
            child: Text(
              text,
              style: TextStyle(
                  fontSize: 16,
                  color: (textColor is Color)
                      ? textColor
                      : Color.fromRGBO(144, 123, 73, 1)),
              textAlign: TextAlign.center,
            ),
            color: (color is Color) ? color : Colors.white,
            padding: (padding is EdgeInsets)
                ? padding
                : EdgeInsets.fromLTRB(45, 20, 40, 20),
            elevation: 4.0,
            splashColor: (splashColor is Color) ? splashColor : Colors.grey,
            onPressed: (this.onPressed is VoidCallback) ? this.onPressed : null,
    )
    );
  }
}
