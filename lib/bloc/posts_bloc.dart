
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_test/api_model/data_service.dart';
import 'package:flutter_bloc_test/bloc/posts_event.dart';
import 'package:flutter_bloc_test/bloc/posts_state.dart';

class PostsBloc extends Bloc<PostsEvent, PostsState> {
  PostsBloc() : super(LoadingPostsState()) {
    on<PostsEvent>((event, emit) async* {
      final _dataService = DataServies();
      // TODO: implement event handler
      if (event is LoadPostsEvent || event is PullToRefreshEvent) {
        LoadingPostsState();
        try {
          final posts = await _dataService.getPosts();
          emit(LoadedPostsState(posts: posts));
        } catch (e) {
          emit(FailedToLoadPostsState(e));
        }
      }
    });
  }
}
