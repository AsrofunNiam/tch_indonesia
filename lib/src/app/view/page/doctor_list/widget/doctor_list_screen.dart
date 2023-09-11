import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tch_indonesia/src/app/bloc/clinic_list_query/clinic_list_query_bloc.dart';
import 'package:tch_indonesia/src/app/model/doctor_list.dart';

class DoctorListScreen extends StatefulWidget {
  const DoctorListScreen._({required this.doctorList});
  final DoctorList? doctorList;

  static Widget prepare({
    required DoctorList doctorList,
  }) {
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
      child: DoctorListScreen._(doctorList: doctorList),
    );
  }

  @override
  State<DoctorListScreen> createState() => _DoctorListScreenState();
}

class _DoctorListScreenState extends State<DoctorListScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.1,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage('${widget.doctorList!.photo}')),
                  borderRadius: const BorderRadius.all(Radius.circular(20))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 10,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(235, 193, 196, 243),
                              Color.fromARGB(235, 188, 192, 250),
                              Color.fromARGB(235, 170, 176, 252),
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Column(
                          children: [
                            const Text(
                              'Patents',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(
                              '${widget.doctorList?.patient}',
                              style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            const Text(
                              'Experience',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(
                              '${widget.doctorList?.flightHours} Hour',
                              style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            const Text(
                              'Rating',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(
                              '${widget.doctorList?.rating}',
                              style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${widget.doctorList?.name}',
                style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              Row(
                children: [
                  const Icon(
                    Icons.heart_broken_outlined,
                    color: Colors.red,
                    size: 30,
                  ),
                  const SizedBox(width: 7),
                  Text(
                    '${widget.doctorList?.description}',
                    style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ],
              ),
              const SizedBox(
                height: 7,
              ),
              const Text(
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry is standard dummy text ever since the 1500',
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              const SizedBox(
                height: 7,
              ),
              const Text(
                'Booking Date',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(
                height: 70,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return InkWell(
                      child: Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 5),
                        padding: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 25),
                        decoration: BoxDecoration(
                            color: index == 1 ? Colors.blue : Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: index == 1 ? Colors.white : Colors.blue,
                                blurRadius: 4,
                                spreadRadius: 2,
                              )
                            ]),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '${index + 8}',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color:
                                      index == 1 ? Colors.white : Colors.black),
                            ),
                            Text(
                              'SEP',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color:
                                      index == 1 ? Colors.white : Colors.black),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 10,
              ),
              const Text(
                'Booking Time',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(
                height: 50,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return InkWell(
                      child: Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                        padding:
                            EdgeInsets.symmetric(vertical: 8, horizontal: 25),
                        decoration: BoxDecoration(
                            color: index == 1 ? Colors.blue : Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: index == 1 ? Colors.white : Colors.blue,
                                blurRadius: 4,
                                spreadRadius: 2,
                              )
                            ]),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '0.${index + 8}  A.M',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color:
                                      index == 1 ? Colors.white : Colors.black),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 70,
              )
            ],
          ),
        )
      ],
    );
  }
}
