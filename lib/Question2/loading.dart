abstract class LargeDataSet {
  List<String>? data;

  List<String>? getData(){
    if(data == null)
      return _loadData();
    else
      return data;
  }

  List<String> _loadData();
}
