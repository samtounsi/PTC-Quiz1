import 'package:ptc_quiz1/Question2/get_items.dart';
import 'package:ptc_quiz1/Question2/loading.dart';

class Languages extends LargeDataSet {
  @override
  List<String> get _loadData {
    return getLanguages();
  }
}
