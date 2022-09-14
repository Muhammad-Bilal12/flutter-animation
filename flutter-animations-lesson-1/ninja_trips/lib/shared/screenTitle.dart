import 'package:flutter/material.dart';

class ScreenTitle extends StatefulWidget {
  final String text;

  const ScreenTitle({Key key, this.text}) : super(key: key);

  @override
  State<ScreenTitle> createState() => _ScreenTitleState();
}

class _ScreenTitleState extends State<ScreenTitle> {
  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween<double>(begin: 0, end: 1),
      duration: Duration(milliseconds: 1000),
      child: Text(
        widget.text,
        style: TextStyle(fontSize: 36, color: Colors.white, fontWeight: FontWeight.bold),
      ),
      builder: (BuildContext context, double _val, Widget child) {
        return Padding(
          padding: EdgeInsets.only(top: _val * 20),
          child: Opacity(
            opacity: _val,
            child: child,
          ),
        );
      },
    );
  }
}
