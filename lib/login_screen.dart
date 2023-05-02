import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_course_1/cubit/auth_cubit.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  bool isScure = true;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text('My project'),
            centerTitle: true,
          ),
          // floatingActionButton: FloatingActionButton(
          //   onPressed: () {},
          // ),
          body: Padding(
            padding: const EdgeInsets.all(12.0),
            child: SingleChildScrollView(
              child: Form(
                key: formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: Column(
                        children: [
                          Text(
                            'Login',
                            style: TextStyle(
                                fontSize: 35, fontWeight: FontWeight.w600),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Login to enjoy our app',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15.0),
                      child: Column(
                        children: [
                          TextFormField(
                            controller: emailController,
                            keyboardType: TextInputType.emailAddress,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Email required";
                              } else if (!value.contains('@')) {
                                return "Email not valid";
                              }
                            },
                            // onChanged: (value) {
                            //   print(value);
                            // },
                            // onFieldSubmitted: (value) {
                            //   print(value);
                            // },
                            decoration: InputDecoration(
                                label: Text('Email'),
                                prefixIcon: Icon(Icons.email),
                                hintText: 'example@gmail.com',
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15))),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            controller: passwordController,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Password required";
                              } else if (value.length < 6) {
                                return "Password must be at least 6 characters";
                              }
                            },
                            obscureText: isScure,
                            keyboardType: TextInputType.visiblePassword,
                            decoration: InputDecoration(
                                label: Text('Password'),
                                prefixIcon: Icon(Icons.lock),
                                suffixIcon: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        isScure = !isScure;
                                      });
                                    },
                                    icon: Icon(Icons.visibility)),
                                hintText: 'P@ssw0rd',
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15))),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: Column(
                        children: [
                          Container(
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25)),
                            width: 250,
                            child: ElevatedButton(
                              onPressed: () {
                                if (formKey.currentState!.validate()) {
                                  AuthCubit().get(context).login(
                                      email: emailController.text,
                                      password: passwordController.text);
                                }
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: state is LoginLoadingState
                                    ? CircularProgressIndicator(
                                        color: Colors.white,
                                      )
                                    : Text(
                                        'Login',
                                        textAlign: TextAlign.center,
                                      ),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Don't have account?",
                                style: TextStyle(fontSize: 16),
                              ),
                              TextButton(
                                  onPressed: () {
                                    // Navigator.of(context).push(MaterialPageRoute(
                                    //   builder: (context) => RegisterScreen(),
                                    // ));
                                  },
                                  child: Text('Create one'))
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
