import 'package:flutter/material.dart';
import 'package:diagnosticus_action_iv/core/widgets/simulation_button.dart';
import 'package:get/get.dart';
import 'simulation_controller.dart';

class SimulationPage extends GetView<SimulationController> {
  const SimulationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: ExactAssetImage('assets/background.jpeg'),
                  fit: BoxFit.cover),
            ),
          ),
          Positioned(
            left: 12,
            top: 70,
            child: InkWell(
              onTap: () {
                Get.back();
              },
              child: Row(
                children: [
                  Icon(
                    Icons.arrow_back,
                    size: 26,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    'Voltar',
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 120,
            left: 18.0,
            right: 18.0,
            child: Container(
              height: 690,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xFFF5F5F5),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 18, top: 24),
                    child: Text(
                      'Caso emergêncial 01',
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    width: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                    ),
                    child: Image.asset('assets/avatarPerson.png'),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                    ),
                    width: 300,
                    height: 110,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Center(
                        child: Text(
                          'Descrição do caso do exame clínico conforme informado pelo professor ',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 16),
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                  Container(
                    height: 170,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                      color: Color(0xFFE3E3E3),
                    ),
                    width: double.infinity,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SimulationButtonWidget(
                                index: 0,
                                selected: 0,
                                image: 'assets/icons/estotoscopio.png',
                                onPressed: () => {},
                              ),
                              SimulationButtonWidget(
                                index: 1,
                                selected: 0,
                                image: 'assets/icons/prancheta.png',
                                onPressed: () => {},
                              ),
                              SimulationButtonWidget(
                                index: 2,
                                selected: 0,
                                image: 'assets/icons/pulmao.png',
                                onPressed: () => {},
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SimulationButtonWidget(
                              index: 3,
                              selected: 0,
                              image: 'assets/icons/tubo.png',
                              onPressed: () => {},
                            ),
                            SimulationButtonWidget(
                              index: 4,
                              selected: 0,
                              image: 'assets/icons/kit.png',
                              onPressed: () => {},
                            ),
                            SimulationButtonWidget(
                              index: 5,
                              selected: 0,
                              image: 'assets/icons/coracao.png',
                              onPressed: () => {},
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
