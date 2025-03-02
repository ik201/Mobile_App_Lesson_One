import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const title = 'Floating App Bar';
    return MaterialApp(
      title: title,
      home: Scaffold(
         // No appbar provided to the Scaffold,only a body with a.
         // CustomScrollView.
         body: CustomScrollView(
           slivers: [       
             // Add the app bar to the CustomScrollView.
             const SliverAppBar(
              // Provide a standard title.
               title : Text(title),
               // Allows the user to reveal the app bar if they begin scrolling
               //back up the list of items.
               floating: true,
               // Display a Placeholder widget to visualize the shrinking size.
               flexibleSpace: Placeholder(),
               // Make the initial height of the SliverAppBar larger than normal.
               expandedHeight: 200,
             ),
             // Next, create a SliverList
             SliverList(   
              // Use a delegate to build items as they are scrolled on screen.
              delegate: SliverChildBuilderDelegate(    
                // The builder function returns a ListTile with a tile that
                //displays the index of the current item.
               (context, index) => ListTile(title: Text('Item #$index')),
               // Builds 1000 ListTiles
                childCount: 1000,
            ),
           ),
         ], //slivers
        ),
      ),
    );
  }
}
          