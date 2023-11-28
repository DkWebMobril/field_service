import 'package:flutter/material.dart';

enum Menu { view, download }

class PopupMenuCommon extends StatefulWidget {
  const PopupMenuCommon({super.key});

  @override
  State<PopupMenuCommon> createState() => _PopupMenuCommonState();
}

class _PopupMenuCommonState extends State<PopupMenuCommon> {
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<Menu>(
      padding: EdgeInsets.all(0),
      onSelected: (Menu item) {
        setState(() {});
      },
      itemBuilder: (BuildContext context) => <PopupMenuEntry<Menu>>[
        PopupMenuItem<Menu>(
          value: Menu.view,
          onTap: () async {},
          child: const Text("View"),
        ),
        PopupMenuItem<Menu>(
          value: Menu.download,
          onTap: () async {},
          child: Text('Download'),
        ),
      ],
    );
  }
}
