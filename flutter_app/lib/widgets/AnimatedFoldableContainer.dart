import 'package:flutter/material.dart';

/* example use :

AnimatedFoldableContainer(
                selected: true,
                childWhenFolded: Text("premier truc, plié"),
                childWhenUnfolded: Text("premier truc, déplié"))
 */


class AnimatedFoldableContainer extends StatefulWidget {
  final Widget childWhenFolded;
  Widget childWhenUnfolded;
  bool selected;

  AnimatedFoldableContainer(
      {this.childWhenFolded, this.childWhenUnfolded, this.selected});

  //AnimatedFoldableContainer({Key key, @required this.child}) : super(key: key);

  @override
  _AnimatedFoldableContainerState createState() => _AnimatedFoldableContainerState();
}

class _AnimatedFoldableContainerState extends State<AnimatedFoldableContainer> {
  // Define the various properties with default values. Update these properties
  // when the user taps a FloatingActionButton.
  //Color _color = Colors.green;
  //BorderRadiusGeometry _borderRadius = BorderRadius.circular(8);
  bool selected;

  @override
  void initState() {
    // TODO: implement initState
    selected = widget.selected;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          print("le widget est selected : $selected");
          selected = !selected;
          print("il est maintenant : $selected");
        });
      },
      child: AnimatedContainer(
        //height:100.0,
          color: selected ? Colors.blueAccent : Colors.red,
          height: selected ? 200.0 : 100.0,
          duration: Duration(seconds: 2),
          curve: Curves.fastOutSlowIn,
          child: selected ? widget.childWhenUnfolded : widget.childWhenFolded),
    );
  }
}
