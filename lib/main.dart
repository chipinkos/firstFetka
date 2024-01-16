import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar
      (
        centerTitle: true,
        backgroundColor: const Color.fromARGB(225, 40, 168, 104),
        title: const Text("Приложение"),
        actions: const [Icon(Icons.time_to_leave),
        Icon(Icons.message),
        ],
      ),

      body: Column(
        children: [
          ElevatedButton(onPressed: (){}, child: Text("Кнопка")),
          OutlinedButton(onPressed: (){}, child: Text("Кнопка")),
          IconButton(onPressed: (){}, icon: Icon(Icons.add)),
          TextButton(onPressed: (){}, child: Text("Кнопка")),
          Row(
            children: [
          ElevatedButton(onPressed: (){}, child: Text("Кнопка")),
          OutlinedButton(onPressed: (){}, child: Text("Кнопка")),
          IconButton(onPressed: (){}, icon: Icon(Icons.add)),
          TextButton(onPressed: (){}, child: Text("Кнопка"))],
          )
        ],
      ),

      drawer: Drawer(),

      bottomNavigationBar: const ListTile(
        title: Text("Заголовок"),
        subtitle: Text("Подзаголовок"),
        leading: Icon(Icons.account_box),
        trailing: Icon(Icons.new_label),
      ),
    );
  }
}
