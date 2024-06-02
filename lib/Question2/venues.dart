import 'package:ptc_quiz1/Question2/get_items.dart';
import 'package:ptc_quiz1/Question2/loading.dart';

class Venues extends LargeDataSet {
  @override
  List<String> _loadData() {
    return getVenues();
  }
}
