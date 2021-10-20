import 'package:flutter/material.dart';
import 'package:wakkenfun/models/post_model.dart';
import 'package:wakkenfun/repositories/feed_repository.dart';

class FeedController with ChangeNotifier {
  final _feedRepository = FeedRepository();
  final List<PostModel> posts = [];

  Future<void> loadPosts() async {
    final data = await _feedRepository.listAll();
    for (final post in data) {
      posts.add(PostModel.fromJson(post));
    }

    notifyListeners();
  }
}
