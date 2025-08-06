class BussinessModel {
  final String? id; // Nullable because it's not sent during registration
  final String? userId; // Same here
  final String name;
  final String addressLine1;
  final String addressLine2;
  final String city;
  final String state;
  final String pinCode;
  final String country;

  BussinessModel({
    this.id,
    this.userId,
    required this.name,
    required this.addressLine1,
    required this.addressLine2,
    required this.city,
    required this.state,
    required this.pinCode,
    required this.country,
  });

  factory BussinessModel.fromJson(Map<String, dynamic> json) {
    return BussinessModel(
      id: json['id'] == null || json['id'] == 'Null' ? null : json['id'],
      userId: json['userId'] == null || json['userId'] == 'Null'
          ? null
          : json['userId'],
      name: json['name'] ?? '',
      addressLine1: json['addressLine1'] ?? '',
      addressLine2: json['addressLine2'] ?? '',
      city: json['city'] ?? '',
      state: json['state'] ?? '',
      pinCode: json['zip'] ?? '',
      country: json['country'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'addressLine1': addressLine1,
      'addressLine2': addressLine2,
      'city': city,
      'state': state,
      'zip': pinCode,
      'country': country,
    };
  }
}
