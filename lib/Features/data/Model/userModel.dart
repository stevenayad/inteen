class UserModel {
  final String name;
  final String id;
  final String imageUrl;
  final String phone;
  final String email;
  final String date;

  UserModel({
    String? name,
    String? id,
    String? imageUrl,
    String? phone,
    String? email,
    String? date,
  }) : name = name ?? 'Guest',
       id = id ?? '',
       imageUrl = _validateImageUrl(imageUrl),
       phone = phone ?? '',
       email = email ?? '',
       date = date ?? '';

  static String _validateImageUrl(String? url) {
    if (url == null || url.isEmpty || !url.startsWith('http')) {
      return 'assets/images/WhatsApp Image 2025-06-01 at 09.49.14_f2f8c633.jpg';
    }
    return url;
  }

  factory UserModel.fromMap(Map<String, dynamic>? map) {
    if (map == null) return UserModel();
    return UserModel(
      name: map['name']?.toString(),
      id: map['id']?.toString(),
      imageUrl: map['urlimage']?.toString(),
      phone: map['phone']?.toString(),
      email: map['email']?.toString(),
      date: map['date']?.toString(),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'id': id,
      'urlimage': imageUrl.startsWith('assets/') ? '' : imageUrl,
      'phone': phone,
      'email': email,
      'date': date,
    };
  }

  UserModel copyWith({
    String? name,
    String? id,
    String? imageUrl,
    String? phone,
    String? email,
    String? date,
  }) {
    return UserModel(
      name: name ?? this.name,
      id: id ?? this.id,
      imageUrl: imageUrl ?? this.imageUrl,
      phone: phone ?? this.phone,
      email: email ?? this.email,
      date: date ?? this.date,
    );
  }
}
