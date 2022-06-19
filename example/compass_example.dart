import 'package:compass/compass.dart';

void main() {
  var duisburg = Position(51.435146, 6.762692);
  var qibla = Position(21.422487, 39.826206);
  var compass = Compass(qibla);
  print(compass.bearingFrom(duisburg));
}
