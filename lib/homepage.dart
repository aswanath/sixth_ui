import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sixth_ui/custom_widgets.dart';

class SixthUI extends StatelessWidget {
  const SixthUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 2,
        child: Scaffold(
          backgroundColor: Colors.grey[300],
          appBar: AppBarCustom(),
          body: Padding(
            padding: const EdgeInsets.all(15.0),
            child: ListView(
              children: [
                ListTileCustom(header: 'Couch Potato | Women | Black', imageurl: 'https://images.unsplash.com/photo-1550639525-c97d455acf70?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8ZHJlc3N8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60', price: 799),
              ListTileCustom(header: 'Couch Potato | Men | Black', imageurl: 'https://images.unsplash.com/photo-1620012253295-c15cc3e65df4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bWVuJTIwZHJlc3N8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60', price: 799),
              ListTileCustom(header: 'Mug | Explore', imageurl: 'https://media.istockphoto.com/photos/coffee-mug-with-text-happy-bosss-day-in-workplace-background-picture-id1312544779?b=1&k=20&m=1312544779&s=170667a&w=0&h=6V98dmVX-zdqoqxylzrRgxIo8mYSBo0kt2mKzTkHmz4=', price: 399),
              ListTileCustom(header: 'Coffee and Create Mug', imageurl: 'https://images.unsplash.com/photo-1546379753-abb7fd8cfb93?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8bXVnfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60', price: 499),
              ListTileCustom(header: 'Jock and Jeans | Man | L | XL', imageurl: 'https://images.unsplash.com/photo-1541099649105-f69ad21f3246?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8amVhbnN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60', price: 1199),
                ListTileCustom(header: 'Trendy Fashion jeans Shoe | UniSex', imageurl: 'https://images.unsplash.com/photo-1582552938357-32b906df40cb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fGplYW5zfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60', price: 999)
              ],
            ),
          ),
        ),);
  }
}
