// ignore_for_file: public_member_api_docs, sort_constructors_first
class UserModel {
  final String fullName;
  final String? position;
  final String? direction;
  final String? department;
  final String? dateOfBirth;
  final String? email;
  final String? phoneNumber;
  final String imageUrl;

  UserModel({
    required this.fullName,
    this.position,
    this.direction,
    this.department,
    this.dateOfBirth,
    this.email,
    this.phoneNumber,
    required this.imageUrl,
  });
}

List<UserModel> employeeList = [
  UserModel(
    fullName: 'Жыпаркулов Мырзабек Жыпаркулович',
    position: 'Генеральный директор',
    direction: 'Дирекция управления',
    department: 'Отдел управления',
    dateOfBirth: '16.09.1972',
    email: 'mjyparkulov@gosecotech.kg',
    phoneNumber: '+996702345678',
    imageUrl: 'assets/images/ava1.png',
  ),
  UserModel(
    fullName: 'Артыкбаев Расул Саткынович',
    position: 'Главный бухгалтер',
    direction: 'Бухгалтерия',
    department: 'Отдел бухгалтерского учета',
    dateOfBirth: '16.09.1961',
    email: 'rartykbaev@gosecotech.kg',
    phoneNumber: '+996772345678',
    imageUrl: 'assets/images/ava2.png',
  ),
  UserModel(
    fullName: 'Жан Клод Ван Дам',
    position: 'Специалист по закупкам',
    direction: 'Государственные тендеры',
    department: 'Отдел закупок',
    dateOfBirth: '17.09.1968',
    email: 'jcvandamme@gosecotech.kg',
    phoneNumber: '+996554345678',
    imageUrl: 'assets/images/ava3.png',
  ),
  UserModel(
    fullName: 'Атабеков Мирбек Атабекович',
    position: 'Специалист по маркетингу',
    direction: 'Маркетинг',
    department: 'Отдел культуры',
    dateOfBirth: '17.09.1986',
    email: 'matabekov@gosecotech.kg',
    phoneNumber: '+996702345678',
    imageUrl: 'assets/images/ava4.png',
  ),
];

List<UserModel> birthdayList = [
  UserModel(
    fullName: 'Жыпаркулов Мырзабек Жыпаркулович',
    position: 'Генеральный директор',
    direction: 'Дирекция управления',
    department: 'Отдел управления',
    dateOfBirth: '16.09.1972',
    email: 'mjyparkulov@gosecotech.kg',
    phoneNumber: '+996702345678',
    imageUrl: 'assets/images/ava1.png',
  ),
  UserModel(
    fullName: 'Артыкбаев Расул Саткынович',
    position: 'Главный бухгалтер',
    direction: 'Бухгалтерия',
    department: 'Отдел бухгалтерского учета',
    dateOfBirth: '16.09.1961',
    email: 'rartykbaev@gosecotech.kg',
    phoneNumber: '+996772345678',
    imageUrl: 'assets/images/ava2.png',
  ),
  UserModel(
    fullName: 'Жан Клод Ван Дам',
    position: 'Специалист по закупкам',
    direction: 'Государственные тендеры',
    department: 'Отдел закупок',
    dateOfBirth: '17.09.1968',
    email: 'jcvandamme@gosecotech.kg',
    phoneNumber: '+996554345678',
    imageUrl: 'assets/images/ava3.png',
  ),
];

List<UserModel> tomorrowBirthdayList = [
  UserModel(
    fullName: 'Жан Клод Ван Дам',
    position: 'Специалист по закупкам',
    direction: 'Государственные тендеры',
    department: 'Отдел закупок',
    dateOfBirth: '17.09.1968',
    email: 'jcvandamme@gosecotech.kg',
    phoneNumber: '+996554345678',
    imageUrl: 'assets/images/ava3.png',
  ),
  UserModel(
    fullName: 'Атабеков Мирбек Атабекович',
    position: 'Специалист по маркетингу',
    direction: 'Маркетинг',
    department: 'Отдел культуры',
    dateOfBirth: '17.09.1986',
    email: 'matabekov@gosecotech.kg',
    phoneNumber: '+996702345678',
    imageUrl: 'assets/images/ava4.png',
  ),
];
