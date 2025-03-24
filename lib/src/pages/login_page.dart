import 'package:flutter/material.dart';
import 'package:app_fluxolivrep/src/widget/input_login_widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/img_fundologin.png'), // Verifique se a imagem está no local correto
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(26.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Logo
              const SizedBox(
                height: 200,
                width: 200,
                child: Image(image: AssetImage('assets/images/et.png')),
              ),
              const SizedBox(height: 30),

              // Campos de entrada
              const InputLoginWidget(
                icon: Icons.person_outline,
                hint: 'Usuário',
                obscure: false,
              ),
              const InputLoginWidget(
                icon: Icons.lock_outline,
                hint: 'Senha',
                obscure: true,
              ),
              const SizedBox(height: 30),

              // Botão de Login
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFAFAE24),
                  minimumSize: const Size(double.infinity, 60),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                ),
                onPressed: () {
                  // Navega para a Home após o login
                  Navigator.of(context).pushReplacementNamed('/home');
                },
                child: const Text(
                  'Acessar',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF031C5F),
                  ),
                ),
              ),
              const SizedBox(height: 15),

              // Botão para Cadastro
              GestureDetector(
                onTap: () {
                  // Navega para a tela de Cadastro
                  Navigator.of(context).pushNamed('/cadastrar');
                },
                child: const Text(
                  'Novo Usuário',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    decoration: TextDecoration.underline, // Adiciona um sublinhado para destacar o botão
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
