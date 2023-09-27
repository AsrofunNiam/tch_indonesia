import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tch_indonesia/src/app/bloc/clinic_list_query/clinic_list_query_bloc.dart';
import 'package:tch_indonesia/src/app/view/page/login/login_page.dart';
import 'package:tch_indonesia/src/app/view/page/welcome/welcome_page.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen._();

  static Widget prepare() {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              ClinicListQueryBloc()..add(const ClinicListQueryEvent.get()),
        ),
        // BlocProvider(
        //   create: (context) => SaveTokenBloc(),
        // )
      ],
      child: const SettingScreen._(),
    );
  }

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
            size: 25,
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        const SizedBox(
          child: ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage('assets/images/person.png'),
            ),
            title: Text(
              'Asrofun Niam',
              style: TextStyle(fontSize: 20),
            ),
            subtitle: Text('Profile User'),
          ),
        ),
        const Divider(
          height: 20,
        ),
        const SizedBox(
          height: 20,
        ),
        ListTile(
          onTap: () {},
          leading: Container(
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
                color: Color.fromARGB(235, 85, 173, 231),
                shape: BoxShape.circle),
            child: const Icon(
              Icons.person,
              color: Colors.black,
              size: 20,
            ),
          ),
          title: const Text(
            'Profile',
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
          ),
          trailing: const Icon(Icons.arrow_forward_ios_rounded),
        ),
        const SizedBox(
          height: 20,
        ),
        ListTile(
          onTap: () {},
          leading: Container(
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
                color: Color.fromARGB(235, 145, 151, 240),
                shape: BoxShape.circle),
            child: const Icon(
              Icons.notifications_none_outlined,
              color: Colors.deepPurple,
              size: 20,
            ),
          ),
          title: const Text(
            'Notification',
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
          ),
          trailing: const Icon(Icons.arrow_forward_ios_rounded),
        ),
        const SizedBox(
          height: 20,
        ),
        ListTile(
          onTap: () {},
          leading: Container(
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
                color: Color.fromARGB(255, 138, 153, 236),
                shape: BoxShape.circle),
            child: const Icon(
              Icons.privacy_tip_outlined,
              color: Colors.indigo,
              size: 20,
            ),
          ),
          title: const Text(
            'Privacy',
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
          ),
          trailing: const Icon(Icons.arrow_forward_ios_rounded),
        ),
        const SizedBox(
          height: 20,
        ),
        ListTile(
          onTap: () {},
          leading: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.green.shade100, shape: BoxShape.circle),
            child: const Icon(
              Icons.settings_suggest_outlined,
              color: Colors.green,
              size: 20,
            ),
          ),
          title: const Text(
            'Privacy',
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
          ),
          trailing: const Icon(Icons.arrow_forward_ios_rounded),
        ),
        const SizedBox(
          height: 20,
        ),
        ListTile(
          onTap: () {},
          leading: Container(
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
                color: Color.fromARGB(255, 245, 198, 128),
                shape: BoxShape.circle),
            child: const Icon(
              Icons.info_outline_rounded,
              color: Colors.orange,
              size: 20,
            ),
          ),
          title: const Text(
            'About Use',
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
          ),
          trailing: const Icon(Icons.arrow_forward_ios_rounded),
        ),
        const SizedBox(
          height: 20,
        ),
        ListTile(
          onTap: () {
            Navigator.push(context, LoginPage.route(context));
          },
          leading: Container(
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
                color: Color.fromARGB(255, 238, 132, 124),
                shape: BoxShape.circle),
            child: const Icon(
              Icons.logout,
              color: Colors.red,
              size: 20,
            ),
          ),
          title: const Text(
            'Log Out',
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
          ),
          trailing: const Icon(Icons.arrow_forward_ios_rounded),
        ),
      ],
    );
  }
}
