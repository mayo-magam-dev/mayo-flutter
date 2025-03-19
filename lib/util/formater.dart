import 'package:intl/intl.dart';

class Formater {
  static String moneyFormat(dynamic value) {
    var f = NumberFormat('###,###,###,###');
    return f.format(value);
  }
}
