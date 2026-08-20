
import '../model/contact_us_model.dart';

abstract class ContactRepository {
  Future<ContactModel> getContactInfo();
}