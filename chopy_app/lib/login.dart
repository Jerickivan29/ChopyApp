import 'package:chopy_app/main.dart';
import 'package:flutter/material.dart';


class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Login to account'),
        ),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: HomePage(),
        ),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _formKey = GlobalKey<FormState>();
  var isLoading = false;

  void _submit() {
    final isValid = _formKey.currentState?.validate() ?? false;
    if (!isValid) {
      return;
    }
    _formKey.currentState?.save();

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const MyHomePage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(labelText: 'E-Mail Address'),
                    keyboardType: TextInputType.emailAddress,
                    onFieldSubmitted: (value) {
                      // Validator
                    },
                    validator: (value) {
                      if (value == null ||
                          value.isEmpty ||
                          !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                              .hasMatch(value)) {
                        return 'Enter a valid email!';
                      } else if (value != "sample@gmail.com") {
                        return 'Account not found';
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.width * 0.1,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(labelText: 'Password'),
                    keyboardType: TextInputType.text,
                    onFieldSubmitted: (value) {},
                    obscureText: true,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Enter a valid password!';
                      } else if (value != "password") {
                        return "Wrong password. Try again.";
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.width * 0.1,
                  ),
                  SizedBox(height: 20.0),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 15.0,
                      ),
                      textStyle: const TextStyle(
                        fontSize: 24.0,
                      ),
                    ),
                    child: const Text("Login"),
                    onPressed: () => _submit(),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
