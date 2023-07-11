import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:payment_stripe/homescreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Stripe.publishableKey = '';
  await Stripe.instance.applySettings();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:flutter/animation.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: EmojiPage(),
//     );
//   }
// }

// class EmojiPage extends StatefulWidget {
//   const EmojiPage({Key? key}) : super(key: key);

//   @override
//   _EmojiPageState createState() => _EmojiPageState();
// }

// class _EmojiPageState extends State<EmojiPage> with TickerProviderStateMixin {
//   List<Widget> emojis = []; // List to store emojis
//   AnimationController? _controller;
//   Animation<Offset>? _animation;

//   @override
//   void initState() {
//     super.initState();
//     _controller = AnimationController(
//       duration: const Duration(seconds: 1),
//       vsync: this,
//     );
//     _animation = Tween<Offset>(
//       begin: const Offset(0.0, -10.0), // Starting position of emojis
//       end: Offset.zero, // Final position of emojis
//     ).animate(_controller!);
//   }

//   void addEmoji() {
//     setState(() {
//       emojis.clear(); // Clear the list to remove existing emojis
//       // Add a new emoji widget to the list
//       emojis.add(
//         SlideTransition(
//           position: _animation!,
//           child: const Text(
//             '😄',
//             style: TextStyle(fontSize: 24.0),
//           ),
//         ),
//       );
//     });
//     _controller!.reset();
//     _controller!.forward();

//     // Delay removal of the emoji after 3 seconds
//     Future.delayed(const Duration(seconds: 3), () {
//       setState(() {
//         emojis.clear(); // Remove the emoji from the list
//       });
//     });
//   }

//   @override
//   void dispose() {
//     _controller!.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Floating Emojis'),
//       ),
//       body: Align(
//         alignment: Alignment.bottomRight,
//         child: Padding(
//           padding: const EdgeInsets.only(right: 30.0, bottom: 80),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.end,
//             children: emojis,
//           ),
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: addEmoji,
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }
