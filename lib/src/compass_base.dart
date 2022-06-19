import 'dart:math';

import 'package:compass/src/position.dart';

class Compass {
  final Position destination;

  Compass(this.destination);

  /// Returns the bearing in degrees from the given position to destination
  double bearingFrom(Position position) {
    final deltaLong = destination.longitude - position.longitude;
    final x = cos(destination.latitude) * sin(deltaLong);
    final y = cos(position.latitude) * sin(destination.latitude) -
        sin(position.latitude) * cos(destination.latitude) * cos(deltaLong);
    return atan2(x, y) * 180 / pi;
  }
}
