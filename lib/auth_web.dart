import 'package:flutter/material.dart';
import 'package:ui_demo/themes.dart';

const primaryColor = Color(0xFF1F2332);
const accentColor = Color(0xff2A92EC);

class AuthWeb extends StatelessWidget {
  const AuthWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: AppThemes.authWeb,
      child: Builder(
        builder: (context) {
          final preHeading = Text(
            "COMECE DE GRAÇA",
            style: Theme.of(context).textTheme.headline5,
          );
          final heading = RichText(
            text: TextSpan(
              style: Theme.of(context).textTheme.headline1,
              children: const [
                TextSpan(text: "Crie uma nova Conta"),
                TextSpan(
                  text: ".",
                  style: TextStyle(color: accentColor),
                ),
              ],
            ),
          );
          final postHeading = RichText(
            text: TextSpan(
              style: Theme.of(context).textTheme.headline4,
              children: const [
                TextSpan(text: "Já é um membro?"),
                TextSpan(
                  text: " Logar-se",
                  style: TextStyle(color: accentColor),
                ),
              ],
            ),
          );
          //
          return Scaffold(
            body: Background(
              child: ListView(
                children: [
                  const MyAppBar(),
                  const SizedBox(height: 100),
                  preHeading,
                  const SizedBox(height: 10),
                  heading,
                  const SizedBox(height: 15),
                  postHeading,
                  const SizedBox(height: 40),
                  const FormFields(),
                  const SizedBox(height: 30),
                  const FormButtons(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class FormButtons extends StatelessWidget {
  const FormButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF5B6074),
          ),
          child: const Text("Mudar Método"),
        ),
        const SizedBox(width: 30),
        ElevatedButton(
          onPressed: () {},
          child: const Text("Criar uma conta"),
        ),
      ],
    );
  }
}

class FormFields extends StatelessWidget {
  const FormFields({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: const [
            SizedBox(
              width: 160,
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Primeiro nome",
                  suffixIcon: Icon(Icons.contacts),
                ),
              ),
            ),
            SizedBox(width: 30),
            SizedBox(
              width: 160,
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Ultimo nome",
                  suffixIcon: Icon(Icons.contacts),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 15),
        const SizedBox(
          width: 350,
          child: TextField(
            decoration: InputDecoration(
              labelText: "Email",
              suffixIcon: Icon(Icons.email),
            ),
          ),
        ),
        const SizedBox(height: 15),
        const SizedBox(
          width: 350,
          child: TextField(
            decoration: InputDecoration(
              labelText: "Senha",
              suffixIcon: Icon(Icons.remove_red_eye),
            ),
          ),
        ),
      ],
    );
  }
}

class Background extends StatelessWidget {
  final Widget? child;

  const Background({super.key, this.child});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Align(
          alignment: Alignment.bottomRight,
          child: Image.asset(
            "assets/images/mountains.jpg",
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 20),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                primaryColor,
                primaryColor,
                primaryColor,
                primaryColor.withOpacity(0.9),
                primaryColor.withOpacity(0.5),
              ],
              // begin: Alignment.bottomLeft,
              // end: Alignment.topRight,
            ),
          ),
          child: child,
        ),
      ],
    );
  }
}

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(radius: 15, backgroundColor: accentColor),
        const SizedBox(width: 10),
        RichText(
          text: TextSpan(
            style: Theme.of(context).textTheme.headline6,
            children: const [
              TextSpan(text: "Aplicativo em qualquer lugar"),
              TextSpan(text: ".", style: TextStyle(color: accentColor)),
            ],
          ),
        ),
        const SizedBox(width: 50),
        Text(
          "Home",
          style: Theme.of(context).textTheme.headline5,
        ),
        const SizedBox(width: 50),
        Text(
          "Juntar",
          style: Theme.of(context).textTheme.headline5,
        ),
      ],
    );
  }
}
