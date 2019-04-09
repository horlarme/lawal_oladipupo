import 'package:flutter/widgets.dart';
import 'package:lawal_oladipupo/widgets/Rating/Rate.dart';
import 'package:lawal_oladipupo/widgets/Rating/Summary.dart';

class ReviewsTab extends StatefulWidget {
  final user;

  ReviewsTab({Key key, @required this.user}) : super(key: key);

  @override
  _ReviewsTabState createState() => new _ReviewsTabState();
}

class _ReviewsTabState extends State<ReviewsTab> {
  PageController _viewController;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(children: <Widget>[Summary(ratings: 4), Rate(), Rate()]));
  }
}
