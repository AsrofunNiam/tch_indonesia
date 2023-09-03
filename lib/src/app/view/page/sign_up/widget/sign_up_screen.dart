import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tch_indonesia/src/app/bloc/clinic_list_query/clinic_list_query_bloc.dart';
import 'package:tch_indonesia/src/app/bloc/create_user/create_user_bloc.dart';
import 'package:tch_indonesia/src/app/view/page/login/login_page.dart';
import 'package:tch_indonesia/src/app/view/page/welcome/welcome_page.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});
  static Route<void> route() {
    return MaterialPageRoute(
      builder: (context) => MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => CreateUserBloc(),
          ),
          //   BlocProvider(
          //   create: (context) =>
          //       ClinicListQueryBloc()..add(const ClinicListQueryEvent.get()),
          // ),
        ],
        child: const SignUpScreen(),
      ),
    );
  }

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  // final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _emailController = TextEditingController();
  final _userNameController = TextEditingController();
  // final _requiredValidator = RequiredValidator(
  //   errorText: pleaseFillOutThisField,
  // );

  void getCreateUser() {
    late CreateUserEvent event;
    event = CreateUserEvent.createUser(
        name: _nameController.text,
        password: _passwordController.text,
        email: _emailController.text,
        username: _userNameController.text);

    context.read<CreateUserBloc>().add(event);
  }

  @override
  void setState(VoidCallback fn) {
    // TODO: implement setState
    super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    bool? passToggle = true;
    return BlocListener<CreateUserBloc, CreateUserState>(
      listener: (context, state) {
        state.maybeWhen(
            orElse: () {},
            success: () {
              // Navigator.push(context, MaterialPageRoute(builder: (context) {
              //   return const LoginPage();
              // }));
            });
      },
      child: Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Image.asset(
                  'assets/images/add.png',
                  height: 200,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                child: TextField(
                  controller: _nameController,
                  decoration: const InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 10),
                      border: OutlineInputBorder(),
                      label: Text('Full Name'),
                      prefixIcon: Icon(Icons.person)),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                child: TextField(
                  controller: _userNameController,
                  decoration: const InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 10),
                      border: OutlineInputBorder(),
                      label: Text('User Name'),
                      prefixIcon: Icon(Icons.person)),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                child: TextField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 10),
                      border: OutlineInputBorder(),
                      label: Text('Phone Number'),
                      prefixIcon: Icon(Icons.phone)),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                child: TextField(
                  controller: _emailController,
                  decoration: const InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 10),
                      border: OutlineInputBorder(),
                      label: Text('Email Address'),
                      prefixIcon: Icon(Icons.email)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: TextField(
                  controller: _passwordController,
                  obscureText: passToggle,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 10),
                      border: const OutlineInputBorder(),
                      label: const Text('Input Password'),
                      prefixIcon: const Icon(Icons.lock),
                      suffixIcon: InkWell(
                        onTap: () {
                          if (passToggle == true) {
                            passToggle = false;
                          } else {
                            passToggle = true;
                          }
                          setState(() {});
                        },
                        child: passToggle
                            ? const Icon(CupertinoIcons.eye_slash_fill)
                            : const Icon(
                                CupertinoIcons.eye_fill), // belum clear
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: SizedBox(
                  width: double.infinity,
                  child: Material(
                    color: const Color.fromARGB(235, 85, 94, 218),
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      onTap: () {
                        getCreateUser();
                      },
                      child: const Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                          child: Center(
                            child: Text(
                              'Create Account',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 23,
                                  fontWeight: FontWeight.bold),
                            ),
                          )),
                    ),
                  ),
                ),
              ),
              // Text('Testing'),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Allready have account ?',
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(context, LoginPage.route(context));
                      },
                      child: const Text(
                        'Log In',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Color.fromARGB(235, 85, 94, 218)),
                      ))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Back to welcomeScreen  ?',
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const WelcomePage();
                        }));
                      },
                      child: const Text(
                        'Welcome Screen',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Color.fromARGB(235, 85, 94, 218)),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
