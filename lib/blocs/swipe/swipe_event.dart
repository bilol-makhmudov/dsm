part of "swipe_bloc.dart";

class SwipeEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class LoadUsersEvent extends SwipeEvent {
  final List<User> users;

  LoadUsersEvent({required this.users});
}

class SwipeLeftEvent extends SwipeEvent {
  final User user;

  SwipeLeftEvent({required this.user});
}

class SwipeRightEvent extends SwipeEvent {
  final User user;

  SwipeRightEvent({required this.user});
}
