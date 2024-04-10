import 'package:therapist/data/mocks/therapists_list.dart';
import 'package:therapist/data/models/therapist_model.dart';

class TherapistRepository {
  List<Therapist> fetchTherapistList() {
    return TherapistsList.therapists;
  }
}
