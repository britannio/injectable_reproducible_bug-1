import 'dart:developer';

import 'package:injectable_ordering/injectable_ordering.dart';

void main() {
  final authVM = getIt<AuthVM>();
  log(authVM.toString());
}
