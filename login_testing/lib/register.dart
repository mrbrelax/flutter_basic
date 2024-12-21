import 'package:flutter/material.dart';
import 'package:login_testing/forgotpass.dart';
import 'package:login_testing/login.dart';
import 'package:login_testing/providers/auth_provider.dart';
import 'package:provider/provider.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _name = TextEditingController();
  final _email = TextEditingController();
  final _password = TextEditingController();
  final _avatar = TextEditingController();

  void _register(BuildContext context) async {
    final name = _name.text.trim();
    final email = _email.text.trim();
    final password = _password.text.trim();
    final avatar = _avatar.text.trim();

    if (name.isEmpty || email.isEmpty || password.isEmpty || avatar.isEmpty) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("Semua field harus diisi")));
      return;
    }

    try {
      await Provider.of<AuthProvider>(context, listen: false).register(
        _name.text,
        _email.text,
        _password.text,
        _avatar.text,
      );
      showDialog(
        context: context,
        builder: (ctx) => AlertDialog(
          title: Text("Berhasil"),
          content: Text("Registrasi Berhasil, silahkan cek email kalian."),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (ctx) => const VerifEmail(),
                  ),
                );
              },
              child: Text('OK'),
            ),
          ],
        ),
      );
    } catch (error) {
      showDialog(
        context: context,
        builder: (ctx) => AlertDialog(
          title: Text("Error"),
          content: Text(
            error.toString(),
          ),
          actions: [
            TextButton(
                onPressed: () => Navigator.of(ctx).pop(), child: Text('OK')),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 10),
                const Text(
                  "Signup Testing",
                  style: TextStyle(
                    color: Color(0xff1877F2),
                    fontWeight: FontWeight.bold,
                    fontSize: 27,
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: _name,
                    autocorrect: true,
                    textInputAction: TextInputAction.next,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text("Name"),
                      hintText: "Name",
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: _email,
                    autocorrect: true,
                    textInputAction: TextInputAction.next,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text("Email"),
                      hintText: "Email",
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: _password,
                    autocorrect: true,
                    textInputAction: TextInputAction.next,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text("Password"),
                      hintText: "Password",
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: _avatar,
                    autocorrect: true,
                    textInputAction: TextInputAction.next,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text("Photo"),
                      hintText: "Photo",
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 9.0,
                        bottom: 15.0,
                        right: 9.0,
                        left: 9.0,
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (ctx) => const LoginScreen(),
                            ),
                          );
                        },
                        child: Text(
                          "Back",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(7),
                            ),
                            backgroundColor: Colors.blue),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 9.0,
                        bottom: 15.0,
                        left: 9.0,
                        right: 9.0,
                      ),
                      child: ElevatedButton(
                        onPressed: () => _register(context),
                        child: Text(
                          "Signup",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7),
                          ),
                          backgroundColor: Colors.green,
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
