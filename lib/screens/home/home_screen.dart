import 'package:dsm/config/theme.dart';
import 'package:dsm/models/user_model.dart';
import 'package:dsm/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static const routeName = "/home";
  static Route route() {
    return MaterialPageRoute(
        settings: RouteSettings(name: routeName),
        builder: (context) => HomeScreen());
  }

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: CustomAppBar(),
          body: Column(
            children: [
              Draggable(
                feedback: UserCard(user: User.users[0]),
                child: UserCard(user: User.users[0]),
                childWhenDragging: UserCard(user: User.users[1]),
                onDragEnd: (drag) {
                  if (drag.velocity.pixelsPerSecond.dx < 0) {
                    print("Swiped Left");
                  } else {
                    print("Swiped Right");
                  }
                },
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 60),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ChoiceButton(
                      width: 65,
                      height: 65,
                      size: 25,
                      color: theme().colorScheme.primary,
                      withGradient: false,
                      iconData: Icons.clear_rounded,
                    ),
                    ChoiceButton(
                      width: 75,
                      height: 75,
                      size: 35,
                      color: Colors.white,
                      withGradient: true,
                      iconData: Icons.favorite,
                    ),
                    ChoiceButton(
                      width: 65,
                      height: 65,
                      size: 25,
                      color: theme().colorScheme.primary,
                      withGradient: false,
                      iconData: Icons.watch_later_outlined,
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
