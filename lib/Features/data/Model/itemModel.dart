class Orderitem {
  final String name;
  final String date;
  final String status;
  final double price;
  final int qty;
  final String image;
  final double totalPrice;
  final String description;

  Orderitem({
    required this.description,
    required this.name,
    required this.date,
    required this.status,
    required this.price,
    required this.qty,
    required this.image,
  }) : totalPrice = price * qty;
}

final List<Orderitem> orders = [
  Orderitem(
    description:
        'Minimalist nightstand with smooth oak finish and two storage drawers',
    name: 'Serenity Nightstand',
    date: 'May 15',
    status: 'Delivered',
    price: 7.5,
    qty: 1,
    image:
        'https://images.unsplash.com/photo-1555041469-a586c61ea9bc?w=800&auto=format&fit=crop',
  ),
  Orderitem(
    description:
        'Ceramic lamp with hand-painted blue glaze and linen shade (15" height)',
    name: 'Blue Table Lamp',
    date: 'May 22',
    status: 'Canceled',
    price: 25,
    qty: 2,
    image:
        'https://images.unsplash.com/photo-1586023492125-27b2c045efd7?w=800&auto=format&fit=crop',
  ),
  Orderitem(
    description: 'Solid reclaimed wood table (36" diameter) with iron base',
    name: 'Wooden Coffee Table',
    date: 'June 5',
    status: 'Shipped',
    price: 89.99,
    qty: 1,
    image:
        'https://images.unsplash.com/photo-1567538096630-e0c55bd6374c?w=800&auto=format&fit=crop',
  ),
  Orderitem(
    description:
        'Mid-century armchair with emerald green velvet upholstery and walnut legs',
    name: 'Velvet Armchair',
    date: 'June 12',
    status: 'Processing',
    price: 149.99,
    qty: 2,
    image:
        'https://images.unsplash.com/photo-1556905055-8f358a7a47b2?w=800&auto=format&fit=crop',
  ),
];
