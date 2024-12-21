import 'package:flutter/material.dart';
import 'package:login_testing/dashboard.dart';
import 'package:login_testing/login.dart';
import 'package:login_testing/providers/auth_provider.dart';
import 'package:provider/provider.dart';

class VerifEmail extends StatefulWidget {
  const VerifEmail({super.key});

  @override
  State<VerifEmail> createState() => _VerifEmailState();
}

class _VerifEmailState extends State<VerifEmail> {
  final _emailForgotPass = TextEditingController();

  void _forgotPass(BuildContext context) async {
    final emailForgotPass = _emailForgotPass.text.trim();

    if (emailForgotPass.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Email harus diisi!")),
      );
      return;
    }

    try {
      await Provider.of<AuthProvider>(context, listen: false).isEmailAvailable(
        _emailForgotPass.text,
      );
      showDialog(
        context: context,
        builder: (ctx) => AlertDialog(
          title: Text("Berhasil"),
          content: Text("Lupa Password Berhasil, silahkan cek email kalian."),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (ctx) => const DashboardScreen(),
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
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 20.0),
                const Text(
                  'Forgot Password',
                  style: TextStyle(
                    fontSize: 27,
                    color: Color(0xff1877F2),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20.0),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: _emailForgotPass,
                    autocorrect: true,
                    textInputAction: TextInputAction.next,
                    decoration: const InputDecoration(
                      label: Text("Email"),
                      border: OutlineInputBorder(),
                      hintText: "Email",
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (ctx) => LoginScreen()),
                          );
                        },
                        child: Text(
                          "Back",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        onPressed: () => _forgotPass(context),
                        child: Text(
                          "Send",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
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
