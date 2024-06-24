// ignore_for_file: public_member_api_docs, sort_constructors_first
class EmployeeModel {
  final String fullName;
  final String position;
  final String direction;
  final String department;
  final String dateOfBirth;
  final String email;
  final String mobilePhone;

  EmployeeModel({
    required this.fullName,
    required this.position,
    required this.direction,
    required this.department,
    required this.dateOfBirth,
    required this.email,
    required this.mobilePhone,
  });
}

List<EmployeeModel> employeeList = [
  EmployeeModel(
    fullName: 'Жыпаркулов Мырзабек Жыпаркулович',
    position: 'Генеральный директор',
    direction: 'Дирекция управления',
    department: 'Отдел управления',
    dateOfBirth: '16.09.1972',
    email: 'mjyparkulov@gosecotech.kg',
    mobilePhone: '+996702345678',
  ),
EmployeeModel(
    fullName: 'Артыкбаев Расул Саткынович',
    position: 'Главный бухгалтер',
    direction: 'Бухгалтерия',
    department: 'Отдел бухгалтерского учета',
    dateOfBirth: '16.09.1961',
    email: 'rartykbaev@gosecotech.kg',
    mobilePhone: '+996772345678',
  ),
EmployeeModel(
    fullName: 'Атамбаев Сооронбай Нуркожоевич',
    position: 'Специалист по закупкам',
    direction: 'Государственные тендеры',
    department: 'Отдел закупок',
    dateOfBirth: '17.09.1968',
    email: 'satambaev@gosecotech.kg',
    mobilePhone: '+996554345678',
  ),
  EmployeeModel(
    fullName: 'Атабеков Мирбек Атабекович',
    position: 'Специалист по маркетингу',
    direction: 'Маркетинг',
    department: 'Отдел культуры',
    dateOfBirth: '17.09.1986',
    email: 'satambaev@gosecotech.kg',
    mobilePhone: '+996702345678',
  ),
];
