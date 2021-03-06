import 'package:diagnosticus_action_iv/core/widgets/custom_button.dart';
import 'package:diagnosticus_action_iv/core/widgets/custom_input.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'login_controller.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: ExactAssetImage('assets/background.jpeg'),
              fit: BoxFit.cover),
        ),
        child: Align(
          alignment: Alignment.center,
          child: SizedBox(
            height: 550,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Container(
                      width: double.infinity,
                      height: 400,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(22)),
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [],
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                    top: 10,
                    left: (MediaQuery.of(Get.context!).size.width / 2) - 386,
                    right: (MediaQuery.of(Get.context!).size.width / 2) - 386,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 133,
                          height: 133,
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(blurRadius: 4, spreadRadius: 0.3)
                              ],
                              color: Color(0XFF00569C),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(100))),
                          child: Center(
                              child: Image.asset(
                            'assets/icons/coracao.png',
                            width: 80,
                            height: 120,
                            color: Colors.white,
                          )),
                        ),
                      ],
                    )),
                Positioned(
                  bottom: 80,
                  left: 10,
                  right: 10,
                  child: SizedBox(
                    height: 300,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 28, right: 28),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          CustomInputWidget(
                            label: 'Username',
                            controller: controller.username,
                          ),
                          CustomInputWidget(
                            label: 'Senha',
                            isPassword: true,
                            controller: controller.password,
                          ),
                          Obx(() => Container(
                              width: double.infinity,
                              height: 40,
                              child: CustomButtonWidget(
                                label: 'Entrar',
                                onPressed: () {
                                  controller.login();
                                },
                                isLoading: controller.isLoading.value,
                              ))),
                          Column(
                            children: [
                              Text(
                                'N??o possui uma conta?',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                    fontSize: 18),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Text('Cadastre-se',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF0B10DB),
                                        fontSize: 18)),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
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
