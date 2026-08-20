
import '../database/contact_us_database.dart';
import '../model/contact_us_model.dart';
import 'contact_repo.dart';

class ContactRepositoryImpl implements ContactRepository {
  final ContactDataSource dataSource;

  ContactRepositoryImpl(this.dataSource);

  @override
  Future<ContactModel> getContactInfo() => dataSource.getContactInfo();
}