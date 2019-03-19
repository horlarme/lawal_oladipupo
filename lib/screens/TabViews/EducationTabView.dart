import 'package:flutter/material.dart';
import 'package:lawal_oladipupo/widgets/CustomCircularLoading.dart';

class EducationTabView extends StatefulWidget {
  @override
  _EducationTabView createState() => new _EducationTabView();
}

class _EducationTabView extends State<EducationTabView> {
  bool loading = true;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (loading == true) {
      return CustomCircularLoading(text: 'Education');
    } else {
      return null;
    }
  }
}
