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
                  Obx(
                    () => PageContent(tab: controller.selected.value),
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
                              Obx(
                                () => SimulationButtonWidget(
                                  index: 0,
                                  selected: controller.isSelected(0),
                                  image: 'assets/icons/estotoscopio.png',
                                  onPressed: () => controller.setSelected(0),
                                ),
                              ),
                              Obx(
                                () => SimulationButtonWidget(
                                  index: 1,
                                  selected: controller.isSelected(1),
                                  image: 'assets/icons/prancheta.png',
                                  onPressed: () => controller.setSelected(1),
                                ),
                              ),
                              Obx(
                                () => SimulationButtonWidget(
                                  index: 2,
                                  selected: controller.isSelected(2),
                                  image: 'assets/icons/pulmao.png',
                                  onPressed: () => controller.setSelected(2),
                                ),
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
                            Obx(
                              () => SimulationButtonWidget(
                                index: 3,
                                selected: controller.isSelected(3),
                                image: 'assets/icons/tubo.png',
                                onPressed: () => controller.setSelected(3),
                              ),
                            ),
                            Obx(
                              () => SimulationButtonWidget(
                                index: 4,
                                selected: controller.isSelected(4),
                                image: 'assets/icons/kit.png',
                                onPressed: () => controller.setSelected(4),
                              ),
                            ),
                            Obx(
                              () => SimulationButtonWidget(
                                index: 5,
                                selected: controller.isSelected(5),
                                image: 'assets/icons/coracao.png',
                                onPressed: () => controller.setSelected(5),
                              ),
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

class PageContent extends StatelessWidget {
  final int tab;
  const PageContent({Key? key, required this.tab}) : super(key: key);

  Widget _getPage() {
    switch (tab) {
      case 0:
        return Column(
          children: [
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
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                  ),
                ),
              ),
            ),
          ],
        );
      case 1:
        return Column(
          children: [
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
                    'Tela para solicitar exames ',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                  ),
                ),
              ),
            ),
          ],
        );
      case 2:
        return Column(
          children: [
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
                    'Tela pra fornecer diagnostico',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                  ),
                ),
              ),
            ),
          ],
        );
      default:
        return Column(
          children: [
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
                    'Tela em construção',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                  ),
                ),
              ),
            ),
          ],
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return _getPage();
  }
}
