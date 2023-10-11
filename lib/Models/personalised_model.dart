import 'package:equatable/equatable.dart';

class Personalised extends Equatable{

  final String name;
  final String imgUrl;

  const Personalised({
    required this.name,
    required this.imgUrl
});

  @override
  List<Object?> get props => [name, imgUrl];

  static List<Personalised> personalised_items = [
    Personalised(name: "Asus Zenbook Duo", imgUrl: "https://images.unsplash.com/photo-1630794180018-433d915c34ac?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1632&q=80"),
    Personalised(name: "Lenovo Yogabook 9i", imgUrl: "https://images.unsplash.com/photo-1496181133206-80ce9b88a853?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1471&q=80"),
    Personalised(name: "Dell XPS 15", imgUrl: 'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1632&q=80',),
    Personalised(name: "HP Spectre", imgUrl: "https://images.unsplash.com/photo-1589561084283-930aa7b1ce50?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1631&q=80"),
    Personalised(name: "Macbook 15", imgUrl: "https://images.unsplash.com/photo-1684234737917-5c6f223a8a8f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1632&q=80"),
  ];

}