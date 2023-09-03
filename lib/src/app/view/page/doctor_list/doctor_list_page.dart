import 'package:flutter/material.dart';
import 'package:tch_indonesia/src/app/model/clinic_list.dart';
import 'package:tch_indonesia/src/app/view/page/clinic/widget/clinic_screen.dart';
import 'package:tch_indonesia/src/app/view/page/clinic/widget/clinic_screen_footer.dart';
import 'package:tch_indonesia/src/app/view/page/doctor_list/widget/doctor_list_screen.dart';

class DoctorListPage extends StatefulWidget {
  const DoctorListPage._();

  static Route<bool?> route() {
    return MaterialPageRoute(builder: (context) {
      return const DoctorListPage._();
      // return MultiBlocProvider(
      //   providers: const [
      //     // BlocProvider(
      //     //   create: (context) =>
      //     //       RestaurantsQueryBloc()..add(const RestaurantsQueryEvent.get()),
      //     // ),
      //     // BlocProvider(
      //     //   create: (context) => SaveTokenBloc(),
      //     // )
      //   ],
      //   child: NavBarRootsMain._(user: user),
      // );
    });
  }

  @override
  State<DoctorListPage> createState() => _DoctorListPageState();
}

class _DoctorListPageState extends State<DoctorListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(235, 231, 232, 247),
      body: SingleChildScrollView(
        child: DoctorListScreen.prepare(),
      ),
      bottomNavigationBar: const ClinicScreenFooter(),
    );
  }
}
