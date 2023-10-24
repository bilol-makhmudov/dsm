import 'package:dsm/config/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20),
        child: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: Image.asset("assets/logos/logoTransparent.png",
              height: 50, fit: BoxFit.cover),
          title: Text("CONNECT", style: theme().textTheme.titleMedium),
          actions: [
            IconButton(
              icon: Icon(Icons.message, color: theme().colorScheme.secondary),
              onPressed: () {},
            ),
            IconButton(
                icon: Icon(Icons.person, color: theme().colorScheme.secondary),
                onPressed: () {})
          ],
          centerTitle: true,
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(60);
}
