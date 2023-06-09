
import 'package:flutter_bloc_test/api_model/posts_json_api.dart';

abstract class PostsState{}

class LoadingPostsState extends PostsState {}

class LoadedPostsState extends PostsState {
  List<Post> posts;
  LoadedPostsState({ required this.posts});

}

class FailedToLoadPostsState extends PostsState {
   Error ?error;
  FailedToLoadPostsState(Object e, { this.error});
}
