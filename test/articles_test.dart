import 'package:flutter_test/flutter_test.dart';
import 'package:like/models/article.dart';
import 'package:like/models/articles.dart';

void main() {
  Articles articles;
  setUp(() {
    articles = Articles(
      <Article>[
        Article(
          'Flutter today',
          DateTime(2019, 4, 23),
          false,
          15,
        ),
        Article(
          'Master of Dart',
          DateTime(2018, 3, 13),
          false,
          4,
        ),
        Article(
          '10 most popular Softwares built with Flutter',
          DateTime(2018, 11, 4),
          false,
          93,
        ),
        Article(
          'The awesome tricks you must know!',
          DateTime(2017, 8, 1),
          false,
          23,
        ),
        Article(
          'Have you tried FlutterHub?',
          DateTime(2019, 10, 11),
          true,
          5,
        ),
        Article(
          'Discussion - Provider vs Redux',
          DateTime(2019, 8, 3),
          false,
          31,
        ),
      ],
    );
  });

  group('dataSource test', () {
    test("dataSource has 6 data, same as initial data count", () {
      expect(
        articles.dataSource.length,
        6,
      );
    });

    test("dataSource has 7 data count in total after adding one data", () {
      articles.add(
        Article(
          "Flutter ver 1.10",
          DateTime(2019, 12, 12),
          false,
          0,
        ),
      );
      expect(
        articles.dataSource.length,
        7,
      );
    });
  });

  group('order of dataSource', () {
    test('the first data is most popular', () {
      expect(
        articles.dataSource.first.title,
        '10 most popular Softwares built with Flutter',
      );
    });

    test('the last data is "Master of Dart"', () {
      expect(
        articles.dataSource.last.title,
        'Master of Dart',
      );
    });
  });

  group('total like count', () {
    test('total like count is 171', () {
      expect(
        articles.totalLikeCount,
        171,
      );
    });
  });
}
