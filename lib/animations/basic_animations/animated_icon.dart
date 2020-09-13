import 'package:flutter/material.dart';

class AnimatedIconScreen extends StatefulWidget {
  @override
  _AnimatedIconScreenState createState() => _AnimatedIconScreenState();
}

class _AnimatedIconScreenState extends State<AnimatedIconScreen>
    with SingleTickerProviderStateMixin {
  bool isPlaying = false;
  Animation animation;
  AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        duration: const Duration(milliseconds: 500), vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            IconButton(
              iconSize: 50.0,
              onPressed: () {
                _onPressed();
              },
              icon: AnimatedIcon(
                icon: AnimatedIcons.search_ellipsis,
                progress: controller,
              ),
            ),
            SizedBox(height: 16.0,),
            IconButton(
              iconSize: 50.0,
              onPressed: () {
                _onPressed();
              },
              icon: AnimatedIcon(
                icon: AnimatedIcons.play_pause,
                progress: controller,
              ),
            ),

            SizedBox(height: 16.0,),
            IconButton(
              iconSize: 50.0,
              onPressed: () {
                _onPressed();
              },
              icon: AnimatedIcon(
                icon: AnimatedIcons.home_menu,
                progress: controller,
              ),
            ),

            SizedBox(height: 16.0,),
            IconButton(
              iconSize: 50.0,
              onPressed: () {
                _onPressed();
              },
              icon: AnimatedIcon(
                icon: AnimatedIcons.add_event,
                progress: controller,
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  _onPressed() {
    setState(() {
      isPlaying = !isPlaying;
      isPlaying ? controller.forward() : controller.reverse();
    });
  }
}
