import 'package:compass/compass.dart';
import 'package:test/test.dart';

void main() {
  test('Calculate the degree between duisburg (germany) and qibla', () {
    final duisburg = Position(51.435146, 6.762692);
    final qibla = Position(21.422487, 39.826206);
    final compass = Compass(qibla);
    expect(compass.bearingFrom(duisburg), -79.82712459395981);
  });
}
