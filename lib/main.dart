import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navegación con Tabs',
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.amber[400],
            foregroundColor: Colors.black,
            title: const Text('Navegación con Tabs'),
            bottom: const TabBar(
              labelColor: Colors.black,
              indicatorColor: Colors.black,
              tabs: [
                Tab(icon: Icon(Icons.newspaper), text: 'Noticias'),
                Tab(icon: Icon(Icons.message), text: 'Mensajes'),
                Tab(icon: Icon(Icons.person), text: 'Perfil'),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              NoticiasTab(),
              MensajesTab(),
              PerfilTab(),
            ],
          ),
        ),
      ),
    );
  }
}

class NoticiasTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Pestaña de Noticias'),
    );
  }
}

class MensajesTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Pestaña de Mensajes'),
    );
  }
}

class PerfilTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Pestaña de Perfil'),
    );
  }
}