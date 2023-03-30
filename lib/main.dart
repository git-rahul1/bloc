
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_test/bloc/posts_bloc.dart';
import 'package:flutter_bloc_test/bloc/posts_event.dart';
import 'package:flutter_bloc_test/post_views.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BlocProvider<PostsBloc>(
            create: (context) => PostsBloc()..add(LoadPostsEvent()),
            child: PostsView()));
  }
}
