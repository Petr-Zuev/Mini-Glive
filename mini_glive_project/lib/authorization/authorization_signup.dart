import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'Регистрация нового пользователя',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Container(
          height: 40,
          width: 250,
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
          height: 40,
          width: 250,
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
        const SizedBox(height: 10),
        Container(
          height: 40,
          width: 250,
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
              hintText: 'email',
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
            ),
          ],
        ),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF3D4552),
              minimumSize: const Size(145, 30),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              textStyle: const TextStyle(fontSize: 18)),
          child: const Text('Зарегистрироваться'),
        ),
      ],
    ));
  }
}

class Verification extends StatelessWidget {
  const Verification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'Проверочный код',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Container(
            height: 40,
            width: 250,
            padding: const EdgeInsets.symmetric(horizontal: 2),
            decoration: BoxDecoration(
              color: const Color(0xFFDBD0C0),
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
                hintText: 'Проверочный код',
                border: InputBorder.none, //убираем нижнее подчеркивание
              ),
            ),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF3D4552),
                minimumSize: const Size(200, 35),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                textStyle: const TextStyle(fontSize: 18)),
            child: const Text('Подтвердить'),
          ),
        ],
      ),
    );
  }
}
