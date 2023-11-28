import 'package:field_service/utils/colors.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomMyBottomNavigationBar extends StatefulWidget {
  CustomMyBottomNavigationBar({
    required this.items,
    required this.indexGet,
    this.backgroundColor = MyTheme.white,
    this.itemBackgroudnColor = MyTheme.white,
    // this.itemBackgroudnColor = Colors.red,
    this.itemOutlineColor = const Color(0XFFFFFFFF),
    // this.selectedItemColor = MyTheme.primaryBlue,
    // this.unselectedItemColor = MyTheme.primaryBlue,
    required this.onTap,
  }) : assert(items.length > 1 && items.length < 6);

  final List<CustomMyBottomNavigationBarItem> items;
  final Color backgroundColor;
  final Color itemBackgroudnColor;
  final Color itemOutlineColor;
  // final Color selectedItemColor;
  // final Color unselectedItemColor;
  final ValueChanged<int> onTap;
  int indexGet;

  @override
  _CustomMyBottomNavigationBarState createState() =>
      _CustomMyBottomNavigationBarState();
}

class CustomMyBottomNavigationBarItem {
  CustomMyBottomNavigationBarItem({
    required this.icon,
    this.titleTextColor = const Color(0XFFFFFFFF),
  });

  final String icon;
  final Color titleTextColor;
}

class _CustomMyBottomNavigationBarState
    extends State<CustomMyBottomNavigationBar> {
  // int _currentIndex = indexGet;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: <Widget>[
        _buildBackground(),
        _buildItems(),
      ],
    );
  }

  Widget _buildBackground() {
    return Container(
      width: double.infinity,
      height: 60.0,
      color: widget.backgroundColor,
    );
  }

  Widget _buildItems() {
    return SizedBox(
      height: 85.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: widget.items.map((item) {
          int index = widget.items.indexOf(item);
          return CustomMyBottomNavigationBarTile(
            item,
            // widget.selectedItemColor,
            // widget.unselectedItemColor,
            widget.itemOutlineColor,
            widget.backgroundColor,
            widget.itemBackgroudnColor,
            index,
            _changeCurrentIndex,
            widget.indexGet,
          );
        }).toList(),
      ),
    );
  }

  void _changeCurrentIndex(int index) {
    widget.onTap(index);
    setState(() {
      widget.indexGet = index;
    });
  }
}

class CustomMyBottomNavigationBarTile extends StatefulWidget {
  CustomMyBottomNavigationBarTile(
      this.item,
      // this.selectedItemColor,
      // this.unselectedItemColor,
      this.itemOutlineColor,
      this.backgroundColor,
      this.itemBackgroudnColor,
      this.index,
      this.onChanged,
      this.currentIndex);

  final CustomMyBottomNavigationBarItem item;
  // final Color selectedItemColor;
  // final Color unselectedItemColor;
  final Color itemOutlineColor;
  final Color backgroundColor;
  final Color itemBackgroudnColor;

  final int index;
  final ValueChanged<int> onChanged;

  final int currentIndex;
  @override
  _CustomMyBottomNavigationBarTileState createState() {
    return _CustomMyBottomNavigationBarTileState();
  }
}

class _CustomMyBottomNavigationBarTileState
    extends State<CustomMyBottomNavigationBarTile> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: selectItem,
      child: SizedBox(
        height: 120.0,
        width: 70.0,
        child: _buildItem(),
      ),
    );
  }

  Widget _buildItem() {
    return Stack(
      children: <Widget>[
        Container(
          // color: Colors.red,
          margin: const EdgeInsets.only(bottom: 4.0),
          child: AnimatedAlign(
            curve: Curves.easeOutCirc,
            duration: const Duration(milliseconds: 300),
            // alignment: Alignment.topLeft,
            alignment: widget.currentIndex == widget.index
                ? Alignment.topCenter
                : Alignment.bottomCenter,
            child: AnimatedContainer(
              padding: const EdgeInsets.all(15.0),
              curve: Curves.easeOut,
              duration: const Duration(milliseconds: 300),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(
                  Radius.circular(100.0),
                ),
                color: widget.currentIndex == widget.index
                    ? widget.itemBackgroudnColor
                    : widget.backgroundColor,
              ),
              child: Image.asset(
                widget.item.icon,
                // color: widget.currentIndex == widget.index
                //     ? widget.selectedItemColor
                //     : widget.unselectedItemColo r,
                height: 26,
                width: 26, 
                 // fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ],
    );
  }

  void selectItem() {
    widget.onChanged(widget.index); 
  }
}
