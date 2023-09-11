import 'package:flutter/material.dart';
import 'package:tch_indonesia/src/app/model/doctor_list.dart';
import 'package:tch_indonesia/src/app/view/page/clinic/widget/clinic_screen_footer.dart';
import 'package:tch_indonesia/src/app/view/page/doctor_list/widget/doctor_list_screen.dart';

class DoctorListPage extends StatelessWidget {
  const DoctorListPage._({required this.doctorList});

  final DoctorList? doctorList;

  static Route<bool?> route({DoctorList? doctorList}) {
    return MaterialPageRoute(builder: (context) {
      return DoctorListPage._(
        doctorList: doctorList,
      );
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
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(235, 231, 232, 247),
      body: SingleChildScrollView(
        child: DoctorListScreen.prepare(doctorList: doctorList!),
      ),
      bottomNavigationBar: ClinicScreenFooter(price: doctorList?.pricing),
    );
  }
}
