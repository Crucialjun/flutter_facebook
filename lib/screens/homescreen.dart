import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_facebook/data/data.dart';
import 'package:flutter_facebook/screens/rooms.dart';
import 'package:flutter_facebook/widgets/circle_icon_button.dart';
import 'package:flutter_facebook/widgets/create_post_container.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../config/palette.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          systemOverlayStyle: const SystemUiOverlayStyle(
            // Status bar color
            statusBarColor: Colors.white,

            // Status bar brightness (optional)
            statusBarIconBrightness:
                Brightness.dark, // For Android (dark icons)
            statusBarBrightness: Brightness.light,
          ),
          centerTitle: false,
          floating: true,
          backgroundColor: Colors.white,
          title: const Text(
            "facebook",
            textScaleFactor: 1,
            style: TextStyle(
                color: Palette.facebookBlue,
                fontSize: 28,
                fontWeight: FontWeight.bold,
                letterSpacing: -1.2),
          ),
          actions: [
            CircleIconButton(
                icon: Icons.search, iconSize: 30.0, onPressed: () {}),
            CircleIconButton(
                icon: MdiIcons.facebookMessenger,
                iconSize: 30.0,
                onPressed: () {})
          ],
        ),
        const SliverToBoxAdapter(
            child: CreatePostConrainer(currentuser: currentUser)),
        SliverPadding(
          padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 5.0),
          sliver: SliverToBoxAdapter(
            child: Rooms(onlineUsers: onlineUsers),
          ),
        )
      ],
    ));
  }
}
