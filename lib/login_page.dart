import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isDesktop = screenWidth > 600;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        toolbarHeight: 0, 
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.symmetric(
          horizontal: isDesktop ? screenWidth * 0.3 : 27,
          vertical: 0,
        ),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(204, 145, 89, 16),
              Color.fromARGB(255, 90, 65, 9),
            ],
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                
                Container(
                  margin: const EdgeInsets.only(bottom: 20),
                  height: 90,
                  child: Image.network(
                    "https://i.ibb.co/27ggsLMW/cajutec-color-cb5c64a4.png",
                    fit: BoxFit.contain,
                    errorBuilder: (context, error, stackTrace) {
                      return const Text(
                        "Erro ao carregar imagem",
                        style: TextStyle(color: Colors.white),
                      );
                    },
                  ),
                ),

                const SizedBox(height: 10),

                const Text(
                  "Digite os dados de acesso nos campos abaixo.",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                  textAlign: TextAlign.center,
                ),

                const SizedBox(height: 30),

                CupertinoTextField(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 14,
                    vertical: 16,
                  ),
                  placeholder: "Digite o seu e-mail",
                  placeholderStyle: const TextStyle(
                    color: Colors.white70,
                    fontSize: 16,
                  ),
                  style: const TextStyle(color: Colors.white70, fontSize: 16),
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),

                const SizedBox(height: 15),

                CupertinoTextField(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 14,
                    vertical: 16,
                  ),
                  placeholder: "Digite a sua senha",
                  obscureText: true,
                  placeholderStyle: const TextStyle(
                    color: Colors.white70,
                    fontSize: 16,
                  ),
                  style: const TextStyle(color: Colors.white70, fontSize: 16),
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),

                const SizedBox(height: 40),

                SizedBox(
                  width: double.infinity,
                  child: CupertinoButton(
                    padding: const EdgeInsets.symmetric(vertical: 18),
                    color: Colors.greenAccent,
                    child: const Text(
                      "Acessar",
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),

                const SizedBox(height: 10),

                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white70, width: 0.8),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: CupertinoButton(
                    child: const Text(
                      "Crie sua conta",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),

                const SizedBox(height: 50),

                FadeInUp(
                  duration: Duration(milliseconds: 1700),
                  child: const Text(
                    "Criar conta ou continue",
                    style: TextStyle(color: Color.fromARGB(255, 236, 236, 236)),
                  ),
                ),

                const SizedBox(height: 30),

                Row(
                  children: <Widget>[
                    Expanded(
                      child: FadeInUp(
                        duration: Duration(milliseconds: 1800),
                        child: MaterialButton(
                          onPressed: () {},
                          height: 50,
                          color: Colors.blue,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: const Center(
                            child: Text(
                              "google",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 30),
                    Expanded(
                      child: FadeInUp(
                        duration: Duration(milliseconds: 1900),
                        child: MaterialButton(
                          onPressed: () {},
                          height: 50,
                          color: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: const Center(
                            child: Text(
                              "Github",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
