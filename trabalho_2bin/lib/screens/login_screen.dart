import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../widgets/primary_button.dart';
import '../widgets/app_topbar.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  String? _email, _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppTopbar(title: 'Entrar'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
        child: Column(
          children: [
            SizedBox(height: 12),
            Text('Bem-vindo ao ComparaItajubá', style: Theme.of(context).textTheme.headline6),
            SizedBox(height: 8),
            Text('Faça login para continuar e receber notificações de promoções.'),
            SizedBox(height: 24),
            Form(
              key: _formKey,
              child: Column(children: [
                TextFormField(
                  decoration: InputDecoration(labelText: 'E-mail'),
                  onSaved: (v) => _email = v,
                  validator: (v) => (v == null || v.isEmpty) ? 'Informe o e-mail' : null,
                ),
                SizedBox(height: 12),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Senha'),
                  obscureText: true,
                  onSaved: (v) => _password = v,
                  validator: (v) => (v == null || v.isEmpty) ? 'Informe a senha' : null,
                ),
                SizedBox(height: 20),
                PrimaryButton(
                  label: 'Entrar',
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      // Navegação direta (mock)
                      context.go('/home');
                    }
                  },
                ),
                SizedBox(height: 12),
                TextButton(
                  onPressed: () => context.go('/home'),
                  child: Text('Entrar sem cadastro (demo)'),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}