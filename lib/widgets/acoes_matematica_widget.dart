import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AcoesMatematica extends StatelessWidget {
  final void Function() soma;
  final void Function() sub;
  final void Function() mult;
  final void Function() div;

  const AcoesMatematica(
      {super.key,
      required this.soma,
      required this.sub,
      required this.mult,
      required this.div});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: soma,
          icon: Icon(
            Icons.add,
            color: Colors.amber,
          ),
        ),
        IconButton(
          onPressed: sub,
          icon: Icon(
            Icons.remove,
            color: Colors.green,
          ),
        ),
        IconButton(
          onPressed: mult,
          icon: Icon(
            Icons.close,
            color: Colors.blue,
          ),
        ),
        IconButton(
          onPressed: div,
          icon: Icon(
            FontAwesomeIcons.divide,
            color: Colors.pink,
          ),
        ),
      ],
    );
  }
}
