import 'package:intl/intl.dart';

class Formater {
  static String moneyFormat(Object value) {
    var f = NumberFormat('###,###,###,###');
    return f.format(value);
  }
}
