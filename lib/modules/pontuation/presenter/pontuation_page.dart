import 'package:diagnosticus_action_iv/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'pontuation_controller.dart';

class PontuationPage extends GetView<PontuationController> {
  const PontuationPage({Key? key}) : super(key: key);

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
                Get.offAllNamed(DiagnosticusRoutes.homeStudent);
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
              height: 600,
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
                      'Ver Pontuação',
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
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: const EdgeInsets.only(
                                bottom: 16.0, left: 8.0, right: 8.0),
                            child: Text(
                              'Turma: Grupo do Guanabara',
                              style: TextStyle(fontSize: 18),
                            )),
                        _CaseWidget(
                          nota: 10,
                          title: 'Caso emergêncial 01',
                        ),
                        _CaseWidget(
                          nota: 10,
                          title: 'Caso emergêncial 02 - URGÊNCIA',
                        ),
                        _CaseWidget(
                          nota: 10,
                          title: 'Caso emergêncial 03 - Ponto extra',
                        ),
                        _CaseWidget(
                          nota: 10,
                          title: 'Caso de teste',
                        )
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

class _CaseWidget extends StatelessWidget {
  const _CaseWidget(
      {Key? key,
      this.title = '',
      required this.nota,
      this.actioncase = 'Iniciar Caso'})
      : super(key: key);

  final String title;
  final String actioncase;
  final int nota;

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
                    'Titulo: $title',
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
                  Text('Nota: $nota'),
                  Spacer(),
                  InkWell(
                    onTap: () {},
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
