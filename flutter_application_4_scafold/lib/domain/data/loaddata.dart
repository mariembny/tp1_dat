// lib/data/loaddata.dart
import './AppConstants.dart';
import '../affirmation.dart';

List<Affirmation> loaddata() {
  return List<Affirmation>.generate(
    AppConstants.affirmations.length,
    (index) {
      return Affirmation(
        image: AppConstants.photos[index],
        desc: AppConstants.affirmations[index],
      );
    },
  );
}
