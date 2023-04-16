import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_course_1/cubit_states/cubit.dart';
import 'package:flutter_course_1/cubit_states/states.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppCubit(),
      child: BlocConsumer<AppCubit, AppStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: Text('My project'),
              centerTitle: true,
            ),
            body: Padding(
              padding: const EdgeInsets.all(12.0),
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
                          keyboardType: TextInputType.emailAddress,
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
                          obscureText: AppCubit().get(context).isScure,
                          keyboardType: TextInputType.visiblePassword,
                          decoration: InputDecoration(
                              label: Text('Password'),
                              prefixIcon: Icon(Icons.lock),
                              suffixIcon: IconButton(
                                  onPressed: () {
                                    AppCubit().get(context).scureText();
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
                            onPressed: () {},
                            child: Text(
                              'Login',
                              textAlign: TextAlign.center,
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
                                onPressed: () {}, child: Text('Create one'))
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
