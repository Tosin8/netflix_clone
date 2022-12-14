import 'package:flutter/material.dart';

class ContentHeader extends StatelessWidget {
  final Content featuredContent;
  const ContentHeader({
    required Key key,
    @required this.featuredContent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 500.0,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage(featuredContent.imageUrl),
            fit: BoxFit.cover,
          )),
        ),
        Container(
          height: 500.0,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            colors: [Colors.black, Colors.transparent],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          )),
        ),
        Positioned(
            bottom: 110,
            child: SizedBox(
                width: 250, child: Image.asset(featuredContent.titleImageUrl))),
        Positioned(
            left: 0,
            right: 0,
            bottom: 40.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                VerticalIconButton(
                  icon: Icons.add,
                  title: 'List',
                  onTap: () => print('My List'),
                ),
                _PlayButton(), 
                VerticalIconButton(
                  icon: Icons.add,
                  title: 'Info',
                  onTap: () => print('My Info'),
                ),
              ],
            )),
      ],
    );
  }
}

class _PlayButton extends StatelessWidget {
  const _PlayButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FlatButton.icon(
      padding: const EdgeInsets.fromLTRB(15.0, 5.0, 20.0, 5.0), 
      onPressed: () => print('Play'),  
      color: Colors.white, 
      icon: Icon(Icons.play_arrow, size: 30.0), 
      label: Text(
        'Play',
       style: TextStyle(
        fontSize: 16.0, 
        fontWeight: FontWeight.w600, 
      )), 
    );
  }
}