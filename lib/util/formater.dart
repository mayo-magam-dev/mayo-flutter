import 'package:intl/intl.dart';

class Formater {
  static String moneyFormat(dynamic value) {
    var f = NumberFormat('###,###,###,###');
    return f.format(value);
  }
  static dateFormat(dynamic value){
    var f = DateFormat('yyyymmdd');
    return f.format(value);
  }
}
