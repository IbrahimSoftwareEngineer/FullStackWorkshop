class Employee {
  final int id;
  final String name;
  final String email;
  final String phone;

  Employee({required this.id, required this.name, required this.email, required this.phone});

  factory Employee.fromJson(Map<String, dynamic> json) {
    return Employee(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      phone: json['phone'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      
      'name': name,
      'email': email,
      'phone': phone,
    };
  }

  @override
bool operator ==(Object other) =>
    identical(this, other) ||
    other is Employee &&
        runtimeType == other.runtimeType &&
        id == other.id &&
        name == other.name &&
        email == other.email &&
        phone == other.phone;

@override
int get hashCode =>
    id.hashCode ^ name.hashCode ^ email.hashCode ^ phone.hashCode;


  @override
String toString() {
  return 'Employee(id: $id, name: $name, email: $email, phone: $phone)';
}

}
