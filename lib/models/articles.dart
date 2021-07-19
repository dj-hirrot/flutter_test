import 'package:like/models/article.dart';

class Articles {
  final List<Article> articles;

  const Articles(this.articles);

  List<Article> get dataSource {
    articles.sort((_a1, _a2) => _a2.likeCount - _a1.likeCount);
    return articles;
  }

  int get totalLikeCount {
    return articles.fold(0, (current, next) => current + next.likeCount);
  }

  void add(Article article) {
    articles.add(article);
  }
}
