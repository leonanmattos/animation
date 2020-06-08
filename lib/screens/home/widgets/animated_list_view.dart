import 'package:animation/screens/home/widgets/list_data.dart';
import 'package:flutter/material.dart';

class AnimatedListView extends StatelessWidget {

  final Animation<EdgeInsets> listSlidePosition;

  AnimatedListView({ @required this.listSlidePosition });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: <Widget>[
        ListData(
          title: 'Estudar Flutter',
          subTitle: 'Com o curso do Daniel',
          image: AssetImage('images/perfil.jpg'),
          margin: listSlidePosition.value * 1,
        ),
        ListData(
          title: 'Estudar Flutter',
          subTitle: 'Com o curso do Daniel',
          image: AssetImage('images/perfil.jpg'),
          margin: listSlidePosition.value * 0,
        )
      ],
    );
  }
}