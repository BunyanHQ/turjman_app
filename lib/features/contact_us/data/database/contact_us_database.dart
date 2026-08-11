
import '../model/contact_us_model.dart';

abstract class ContactDataSource {
  Future<ContactModel> getContactInfo();
}

class ContactDataSourceImpl implements ContactDataSource {
  @override
  Future<ContactModel> getContactInfo() async {
    return ContactModel(
      whatsapp: "+20XXXXXXXXXX",
      email: "flutterdevt@gmail.com",
      instagram: "https://instagram.com/yourapp",
      twitter: "https://twitter.com/yourapp",
      facebook: "https://facebook.com/yourapp",
    );
  }
}