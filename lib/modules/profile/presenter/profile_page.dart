import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'profile_controller.dart';

class ProfilePage extends GetView<ProfileController> {
  const ProfilePage({Key? key}) : super(key: key);

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
          Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 18.0, right: 18.0),
              child: Container(
                height: 550,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0XFFF5F5F5),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 18.0, right: 18, top: 24),
                      child: Text(
                        'Meu perfil - Aluno',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _AvatarWidget(),
                      ],
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 18.0, right: 18),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _InfoWidget(
                            firstText: 'Nome',
                            secondText: 'Drika Barbosa',
                          ),
                          _InfoWidget(
                            firstText: 'E-mail',
                            secondText: 'drika@lab.com.br',
                          ),
                          _InfoWidget(
                            firstText: 'Matrícula',
                            secondText: '201700017715',
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18),
                      child: InkWell(
                        onTap: () => {},
                        child: Row(
                          children: [
                            Text(
                              'Sair da minha conta',
                              style: TextStyle(fontSize: 18),
                            ),
                            Spacer(),
                            Icon(
                              Icons.logout,
                              color: Color(0XFF0B10DB),
                              size: 26,
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _InfoWidget extends StatelessWidget {
  const _InfoWidget(
      {Key? key, required this.firstText, required this.secondText})
      : super(key: key);
  final String firstText;
  final String secondText;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          firstText,
          style: TextStyle(color: Colors.black54, fontSize: 18),
        ),
        Text(
          secondText,
          style: TextStyle(
            fontSize: 18,
          ),
        ),
        SizedBox(
          height: 24,
        ),
      ],
    );
  }
}

class _AvatarWidget extends StatelessWidget {
  const _AvatarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 172,
      width: 155,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: Stack(
        children: [
          Center(child: Image.asset('assets/avatar.png')),
          Positioned(
            bottom: 0,
            child: Stack(
              children: [
                Opacity(
                  opacity: 0.5,
                  child: Container(
                    height: 30,
                    width: 155,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(20),
                            bottomLeft: Radius.circular(20))),
                  ),
                ),
                Container(
                  width: 155,
                  height: 30,
                  child: Center(
                    child: Text(
                      'Trocar Imagem',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
