import 'package:diagnosticus_action_iv/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'home_student_controller.dart';

class HomeStudentPage extends GetView<HomeStudentController> {
  const HomeStudentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: ExactAssetImage('assets/background.jpeg'),
              fit: BoxFit.cover),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 88.0, left: 8, right: 8),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _IconPhoneWidget(
                      text: 'Novos Casos',
                      color: Colors.white,
                      icon: Icons.add_circle_outline,
                      iconColor: Color(0xFF0B10DB),
                    ),
                    _IconPhoneWidget(
                      text: 'Meus Casos',
                      color: Colors.green,
                      icon: Icons.fact_check_outlined,
                      onTap: () {
                        Get.toNamed(DiagnosticusRoutes.cases);
                      },
                    ),
                    _IconPhoneWidget(
                      text: 'Ver Pontuação',
                      color: Colors.red,
                      icon: Icons.star_border_outlined,
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _IconPhoneWidget(
                        text: 'Buscar Turma',
                        color: Colors.blue,
                        icon: Icons.groups,
                      ),
                      _IconPhoneWidget(
                        text: 'Meu Perfil',
                        color: Color(0xFF303030),
                        icon: Icons.person,
                        onTap: () {
                          Get.toNamed(DiagnosticusRoutes.profile);
                        },
                      ),
                      _IconPhoneWidget(
                        text: 'Sobre',
                        color: Colors.grey,
                        icon: Icons.info,
                      )
                    ],
                  ),
                ),
                Spacer(),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 8.0, bottom: 28, right: 8),
                  child: SizedBox(
                    height: 110,
                    width: double.infinity,
                    child: Stack(children: [
                      Container(
                        width: double.infinity,
                        height: 110,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(35),
                          color: Colors.white24,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          _IconPhoneWidget(
                              color: Colors.green, icon: Icons.message),
                          _IconPhoneWidget(
                            color: Colors.white,
                            iconColor: Color(0xFF0BDBCA),
                            icon: Icons.music_note,
                          ),
                          _IconPhoneWidget(
                            color: Colors.grey,
                            icon: Icons.settings,
                          )
                        ],
                      )
                    ]),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _IconPhoneWidget extends StatelessWidget {
  const _IconPhoneWidget(
      {Key? key, this.color, this.iconColor, this.icon, this.onTap, this.text})
      : super(key: key);

  final Color? color;
  final Color? iconColor;
  final IconData? icon;
  final String? text;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          width: 100,
          height: 140,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                    color: color, borderRadius: BorderRadius.circular(20)),
                child: Center(
                  child: Icon(
                    icon,
                    color: iconColor ?? Colors.white,
                    size: 40,
                  ),
                ),
              ),
              if (text != null)
                SizedBox(
                  height: 8,
                ),
              if (text != null)
                Text(
                  text!,
                  style: TextStyle(fontSize: 16, color: Colors.white),
                  textAlign: TextAlign.center,
                )
            ],
          ),
        ),
      ),
    );
  }
}
