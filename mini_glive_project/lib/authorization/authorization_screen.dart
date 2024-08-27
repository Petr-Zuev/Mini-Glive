import 'package:flutter/material.dart';

class AuthorizationScreen extends StatefulWidget {
  const AuthorizationScreen({super.key});

  @override
  State<AuthorizationScreen> createState() => AuthorizationScreenState();
}

class AuthorizationScreenState extends State<AuthorizationScreen> {
  final _formKey = GlobalKey<FormState>();

  final _loginController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'Войти в аккаунт',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.black,
                ),
              )
            ],
          ),
          const SizedBox(height: 10),
          Container(
            height: 35,
            width: 200,
            padding: const EdgeInsets.symmetric(horizontal: 2),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              border: Border.all(
                color: const Color(0xFFDBD0C0),
                width: 2,
              ),
            ),
            child: const TextField(
              cursorColor: Colors.black,
              cursorWidth: 2,
              style: TextStyle(fontSize: 14),
              decoration: InputDecoration(
                hintText: 'Логин',
                border: InputBorder.none, //убираем нижнее подчеркивание
              ),
            ),
          ),
          const SizedBox(height: 10),
          Container(
            height: 35,
            width: 200,
            padding: const EdgeInsets.symmetric(horizontal: 2),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              border: Border.all(
                color: const Color(0xFFDBD0C0),
                width: 2,
              ),
            ),
            child: const TextField(
              cursorColor: Colors.black,
              cursorWidth: 2,
              obscureText: true, //скрытие текста при вводе
              style: TextStyle(fontSize: 14),
              decoration: InputDecoration(
                hintText: 'Пароль',
                border: InputBorder.none, //убираем нижнее подчеркивание
              ),
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'или',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
              )
            ],
          ),
          Row(), //здесь въебем форму входа через google
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF3D4552),
                minimumSize: const Size(145, 30),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                textStyle: const TextStyle(fontSize: 18)),
            child: const Text('Вход'),
          ),
          TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              textStyle: const TextStyle(
                decoration: TextDecoration.underline,
              ),
            ),
            child: const Text(
              'Зарегистрироваться',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
