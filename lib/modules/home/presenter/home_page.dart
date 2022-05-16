import 'package:diagnosticus_action_iv/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'home_controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: ExactAssetImage('assets/background.jpeg'),
                  fit: BoxFit.cover)),
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 18.0),
                child: Text(
                  'Logo',
                  style: TextStyle(fontSize: 24),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 60, top: 8),
                child: Text(
                  'Diagnosticus Action IV',
                  style: TextStyle(
                    fontSize: 32,
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                height: 180,
                width: 260,
                child: Column(
                  children: [
                    _BoardOption(
                      text: 'Criar conta',
                      page: DiagnosticusRoutes.home,
                    ),
                    _BoardOption(
                      text: 'Entrar como professor',
                      page: DiagnosticusRoutes.login,
                    ),
                    _BoardOption(
                      text: 'Entrar como aluno',
                      isLast: true,
                      page: DiagnosticusRoutes.login,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _BoardOption extends StatelessWidget {
  const _BoardOption(
      {Key? key, required this.text, required this.page, this.isLast = false})
      : super(key: key);

  final String text;
  final String page;
  final bool isLast;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.offNamed(page);
      },
      child: SizedBox(
        height: 60,
        width: double.infinity,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: isLast ? 4 : 0),
              child: SizedBox(
                  width: double.infinity,
                  height: 56,
                  child: Center(child: Text(text))),
            ),
            if (!isLast) Spacer(),
            if (!isLast)
              SizedBox(
                  height: 4,
                  child: Divider(
                    thickness: 1.5,
                  )),
          ],
        ),
      ),
    );
  }
}
