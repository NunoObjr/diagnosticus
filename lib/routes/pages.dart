import 'package:diagnosticus_action_iv/modules/cases/presenter/cases_binding.dart';
import 'package:diagnosticus_action_iv/modules/cases/presenter/cases_page.dart';
import 'package:diagnosticus_action_iv/modules/home/presenter/home_binding.dart';
import 'package:diagnosticus_action_iv/modules/home/presenter/home_page.dart';
import 'package:diagnosticus_action_iv/modules/homeStudent/presenter/home_student_binding.dart';
import 'package:diagnosticus_action_iv/modules/homeStudent/presenter/home_student_page.dart';
import 'package:diagnosticus_action_iv/modules/login/presenter/login_binding.dart';
import 'package:diagnosticus_action_iv/modules/profile/presenter/profile_binding.dart';
import 'package:diagnosticus_action_iv/modules/profile/presenter/profile_page.dart';
import 'package:diagnosticus_action_iv/modules/simulation/presenter/simulation_binding.dart';
import 'package:diagnosticus_action_iv/modules/simulation/presenter/simulation_page.dart';
import 'package:diagnosticus_action_iv/routes/routes.dart';
import 'package:get/get.dart';

import '../modules/login/presenter/login_page.dart';
class DiagnosticusPages {

  static String home = DiagnosticusRoutes.home;
  static String login = DiagnosticusRoutes.login;
  static String cases = DiagnosticusRoutes.cases;
  static String profile = DiagnosticusRoutes.profile;
  static String simulation = DiagnosticusRoutes.simulation;
  static String homeStudent = DiagnosticusRoutes.homeStudent;
  
  static final routes = [
    GetPage(
      name:  home, 
      page: ()=> const HomePage(),
      binding: HomeBinding()
    ),
    GetPage(
      name:  login, 
      page: ()=> const LoginPage(),
      binding: LoginBinding()
    ),
    GetPage(
      name:  cases, 
      page: ()=> const CasesPage(),
      binding: CasesBinding()
    ),
    GetPage(
      name:  profile, 
      page: ()=> const ProfilePage(),
      binding: ProfileBinding()
    ),
    GetPage(
      name:  simulation, 
      page: ()=> const SimulationPage(),
      binding: SimulationBinding()
    ),
    GetPage(
      name:  homeStudent, 
      page: ()=> const HomeStudentPage(),
      binding: HomeStudentBinding()
    ),
  ];
}