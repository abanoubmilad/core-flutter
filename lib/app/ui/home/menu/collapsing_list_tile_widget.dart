import 'package:core_app/app/extentions/style_ext.dart';
import 'package:core_app/app/extentions/ui_funcs.dart';
import 'package:flutter/material.dart';

export 'collapsing_list_tile_widget.dart';
export 'collapsing_navigation_drawer_widget.dart';
export 'navigation_model.dart';

class CollapsingListTile extends StatefulWidget {
  final String title;
  final IconData icon;
  final AnimationController animationController;
  final bool isSelected;
  final Function onTap;

  CollapsingListTile({@required this.title,
    @required this.icon,
    @required this.animationController,
    this.isSelected = false,
    this.onTap});

  @override
  _CollapsingListTileState createState() => _CollapsingListTileState();
}

class _CollapsingListTileState extends State<CollapsingListTile> {
  Animation<double> widthAnimation, sizedBoxAnimation;

  @override
  void initState() {
    super.initState();
    widthAnimation =
        Tween<double>(begin: 200, end: 70).animate(widget.animationController);
    sizedBoxAnimation =
        Tween<double>(begin: 10, end: 0).animate(widget.animationController);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => widget.onTap(),
      child: Container(
        decoration: widget.isSelected
            ? buildMenuButtonBoxDecoration()
            : BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
            color: Colors.transparent),
        width: widthAnimation.value,
        margin: EdgeInsets.symmetric(horizontal: 8.0),
        padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
        child: Row(
          children: <Widget>[
            Icon(
              widget.icon,
              color: widget.isSelected ? Colors.white : silverGray,
              size: 38.0,
            ),
            SizedBox(width: sizedBoxAnimation.value),
            (widthAnimation.value >= 190)
                ? Text(widget.title,
                style: TextStyle(
                    color: widget.isSelected ? Colors.white : silverGray,
                    fontSize: 18.0,
                    fontFamily: "WorkSansMedium"))
                : Container()
          ],
        ),
      ),
    );
  }
}
