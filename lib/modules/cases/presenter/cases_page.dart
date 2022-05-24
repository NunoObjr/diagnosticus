import 'package:diagnosticus_action_iv/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'cases_controller.dart';

class CasesPage extends GetView<CasesController> {
  const CasesPage({Key? key}) : super(key: key);

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
                Get.offNamed(DiagnosticusRoutes.homeStudent);
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
              height: 650,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0XFFF5F5F5),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 12,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 24, top: 16),
                    child: Text(
                      'Lista de casos',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                    child: Divider(
                      thickness: 1.5,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  controller.cases.isEmpty ? _EmptyCases() : _ShowCases()
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _ShowCases extends StatelessWidget {
  const _ShowCases({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding:
                  const EdgeInsets.only(bottom: 16.0, left: 8.0, right: 8.0),
              child: Text(
                'Turma: Grupo do Guanabara',
                style: TextStyle(fontSize: 18),
              )),
          _CaseWidget(
            valueComplete: '0',
            title: 'Caso emergêncial 01',
          ),
          _CaseWidget(
            valueComplete: '25',
            title: 'Caso emergêncial 02 - URGÊNCIA',
          ),
          _CaseWidget(
            valueComplete: '100',
            title: 'Caso emergêncial 03 - Ponto extra',
            nota: true,
            actioncase: 'Repetir Caso',
          ),
          _CaseWidget(
            valueComplete: '0',
            title: 'Caso de teste',
          )
        ],
      ),
    );
  }
}

class _EmptyCases extends StatelessWidget {
  const _EmptyCases({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 50,
          ),
          Text(
            'Você ainda não está em nenhuma turma',
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          SizedBox(
            height: 5,
          ),
          Text('Buscar turma',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                  fontSize: 20)),
        ],
      ),
    );
  }
}

class _CaseWidget extends StatelessWidget {
  const _CaseWidget(
      {Key? key,
      this.title = '',
      this.valueComplete = '0',
      this.nota = false,
      this.actioncase = 'Iniciar Caso'})
      : super(key: key);

  final String title;
  final String actioncase;
  final bool nota;
  final String valueComplete;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 12),
      child: Container(
        height: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Color(0xFFCFD4D8),
        ),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 16,
                  ),
                  SizedBox(
                      child: Text(
                    'Titutlo: $title',
                    style: TextStyle(fontSize: 16),
                  )),
                ],
              ),
              SizedBox(
                height: 22,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 16,
                  ),
                  Text('Concluido: $valueComplete%'),
                  Spacer(),
                  InkWell(
                    onTap: () {
                      Get.defaultDialog(
                          title: '',
                          custom: Icon(Icons.close),
                          content: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 8.0),
                                child: Text(
                                  'Concluido: $valueComplete%',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                              Text(
                                title,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 19),
                              ),
                              SizedBox(height: 32),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Professor: '),
                                  SizedBox(
                                    width: 12,
                                  ),
                                  Container(
                                    width: 200,
                                    child: Text(
                                      'Gustavo Guanabara',
                                      textAlign: TextAlign.justify,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 12),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Descrição: '),
                                  SizedBox(
                                    width: 12,
                                  ),
                                  Container(
                                    width: 200,
                                    child: Text(
                                      'Lorem ipsum dolor sit ament, consectur adpsicing Lorem ipsum dolor sit ament, consectur adpsicing',
                                      textAlign: TextAlign.justify,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                          actions: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 24.0),
                              child: InkWell(
                                onTap: () {
                                  if (actioncase == 'Iniciar Caso') {
                                    Get.toNamed(DiagnosticusRoutes.simulation);
                                  }
                                },
                                child: Text(
                                  actioncase,
                                  style: TextStyle(
                                    color: Colors.green,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                            if (nota)
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 24.0,
                                  left: 16.0,
                                ),
                                child: Text(
                                  'Ver nota',
                                  style: TextStyle(
                                    color: Color(0xFF005696),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              )
                          ]);
                    },
                    child: Text(
                      'Detalhes',
                      style: TextStyle(
                          color: Colors.blue,
                          decoration: TextDecoration.underline),
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
