import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 90),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text(
            'Welcome to TMS,\nSelect An option',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Main Menu',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w300,
              color: Colors.white70,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            children: [
              InkWell(
                child: Container(
                    padding: const EdgeInsets.all(16),
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      color: Colors.lightBlue,
                      borderRadius: const BorderRadius.all(Radius.circular(5)),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                          color: Colors.black.withOpacity(0.15),
                          blurRadius: 10,
                          offset: const Offset(2, 3),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Image.asset('assets/images/ic_form.png'),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          'Validation Request',
                          style: TextStyle(fontSize: 16, color: Colors.white70),
                        ),
                      ],
                    )),
                onTap: () {},
              ),
              const Spacer(),
              InkWell(
                child: Container(
                    padding: const EdgeInsets.all(16),
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      color: Colors.lightBlue,
                      borderRadius: const BorderRadius.all(Radius.circular(5)),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                          color: Colors.black.withOpacity(0.15),
                          blurRadius: 10,
                          offset: const Offset(2, 3),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Image.asset('assets/images/ic_parking.png'),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          'Part-lots',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white70,
                          ),
                        ),
                      ],
                    )),
                onTap: () {},
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            children: [
              InkWell(
                child: Container(
                    padding: const EdgeInsets.all(16),
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      color: Colors.lightBlue,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(5),
                      ),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                          color: Colors.black.withOpacity(0.15),
                          blurRadius: 10,
                          offset: const Offset(2, 3),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Image.asset('assets/images/ic_history4.png',
                            width: 70, height: 65),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          'History',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white70,
                          ),
                        ),
                      ],
                    )),
                onTap: () {},
              ),
              const Spacer(),
              InkWell(
                child: Container(
                    padding: const EdgeInsets.all(16),
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      color: Colors.lightBlue,
                      borderRadius: const BorderRadius.all(Radius.circular(5)),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                          color: Colors.black.withOpacity(0.15),
                          blurRadius: 10,
                          offset: const Offset(2, 3),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/ic_queried.png',
                          width: 70,
                          height: 70,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          'Queried',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white70,
                          ),
                        ),
                      ],
                    )),
                onTap: () {},
              ),
            ],
          )
        ],
      ),
    ),);
  }
}
