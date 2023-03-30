import 'dart:async';





import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_test/api_model/data_service.dart';
import 'package:flutter_bloc_test/bloc/posts_event.dart';
import 'package:flutter_bloc_test/bloc/posts_state.dart';

class PostsBloc extends Bloc<PostsEvent ,PostsState>{
  final _dataService = DataServies();
//constractor
  PostsBloc() : super(LoadingPostsState());

@override
Stream<PostsState> mapEventToState(PostsEvent event) async* {
  if (event is LoadPostsEvent || event is PullToRefreshEvent) {
    yield LoadingPostsState();

    try {
      final posts = await _dataService.getPosts();
      yield LoadedPostsState(posts: posts);
    } catch (e) {
     //yield FailedToLoadPostsState(error: e);
    }
  }
}

}