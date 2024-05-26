import 'package:flutter/material.dart';
// Assurez-vous que ce chemin est correct

class Connection extends StatefulWidget {
  const Connection({super.key});

  @override
  State<Connection> createState() => _ConnectionState();
}

class _ConnectionState extends State<Connection> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Connection'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                controller: _emailController,
                decoration: const InputDecoration(
                  labelText: 'Email',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'L\'entrée doit contenir un e-mail';
                  } else if (value.contains('@gmail.com')) {
                    return value  ;
                  }
                  return '';
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: 'Mot de passe',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'L\'entrée doit contenir un mot de passe';
                  }
                  return '/carte';
                },
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    Navigator.pushNamed(context, '/carte');
                  }
                },
                child: const Text('Connectez-vous'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
