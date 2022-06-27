
import 'package:diit_portal/Screens/AuthScreen/ForgetPassPage.dart';
import 'package:diit_portal/Screens/AuthScreen/LoginPage.dart';
import 'package:diit_portal/Screens/Dashboard/Home_Page/Attendance/Student_attendance_view/student_attendance_detailes.dart';
import 'package:diit_portal/Screens/Dashboard/Home_Page/Attendance/Student_attendance_view/student_course_%20attendanceview.dart';
import 'package:diit_portal/Screens/Dashboard/Home_Page/Attendance/Teacher_takeattendance/course_selecta_attendence.dart';
import 'package:diit_portal/Screens/Dashboard/Home_Page/Attendance/Teacher_takeattendance/studentname_attendencelist.dart';
import 'package:diit_portal/Screens/Dashboard/Home_Page/Attendance/Teacher_takeattendance/take&show_attendence.dart';
import 'package:diit_portal/Screens/Dashboard/Home_Page/Attendance/Teacher_takeattendance/teacher_attendance.dart';
import 'package:diit_portal/Screens/Dashboard/Home_Page/Attendance/Teacher_takeattendance/teacher_deshboard.dart';
import 'package:diit_portal/Screens/Dashboard/Home_Page/Class_routine/Cse/cse_routine.dart';
import 'package:diit_portal/Screens/Dashboard/Home_Page/Class_routine/Routine_View.dart';
import 'package:diit_portal/Screens/Dashboard/Home_Page/Class_routine/Class_Routine.dart';
import 'package:diit_portal/Screens/Dashboard/Home_Page/Faculty_member/Faculty_Member.dart';
import 'package:diit_portal/Screens/Dashboard/Home_Page/NU_Portal/screens/NU_Portal.dart';
import 'package:diit_portal/Screens/Dashboard/Home_Page/Question_bank/dept_bba/bba_question.dart';
import 'package:diit_portal/Screens/Dashboard/Home_Page/Question_bank/dept_bthm/bthm_question.dart';
import 'package:diit_portal/Screens/Dashboard/Home_Page/Question_bank/dept_cse/cse_question.dart';
import 'package:diit_portal/Screens/Dashboard/Home_Page/Question_bank/dept_mba/mba_question.dart';
import 'package:diit_portal/Screens/Dashboard/Home_Page/Question_bank/pdf_view.dart';
import 'package:diit_portal/Screens/Dashboard/Home_Page/Question_bank/question_bank.dart';
import 'package:diit_portal/Screens/Dashboard/Home_Page/HomePage.dart';
import 'package:diit_portal/Screens/Dashboard/Home_Page/quick_pay/QuickPayment.dart';

import 'package:diit_portal/Screens/Dashboard/Dashboard.dart';
import 'package:diit_portal/Screens/Dashboard/Home_Page/Attendance/Student_attendance_view/student_attendanceview_login.dart';
import 'package:diit_portal/Screens/Dashboard/Notification/Notification.dart';
import 'package:diit_portal/Screens/Dashboard/Student_Dashboard/student_dashboard.dart';
import 'package:diit_portal/Screens/Dashboard/Student_Profile/student_profile.dart';
import 'package:diit_portal/Screens/SplashScreen/SplashScreen.dart';
import 'package:diit_portal/Screens/SplashScreen/SplashScreenBinding.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';



void main() async {
  WidgetsFlutterBinding?.ensureInitialized();
  await Firebase.initializeApp();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);



  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context,child){

        return GetMaterialApp(

          title: 'DiiT Portal',
          initialRoute: '/',
          defaultTransition: Transition.leftToRight,
          getPages: [
            GetPage(name: '/', page: () => SplashScreen(), binding: SplashBinding()),
            GetPage(name: '/LoginPage', page: ()=>LoginPage()),
            GetPage(name: '/ForgetPassPage', page: ()=>ForgetPassPage()),
            GetPage(name: '/DashBoard', page: () => Dashboard()),


            // navigation bar //
            // GetPage(name: '/BottlomNavegatonBar', page: () => Dashboard()),
            // home page //
            GetPage(name: '/HomePage', page: () => HomePage()),
            // question bank cse,bba,bthm, //
            GetPage(name: '/QuestionBank', page: ()=>QuestionBank()),
            GetPage(name: '/CseDepertment', page: ()=>CseDepertment()),
            GetPage(name: '/BbaDepertment', page: ()=>BbaDepertment()),
            GetPage(name: '/BthmDepertment', page: ()=>BthmDepertment()),
            GetPage(name: '/MBADepertment', page: ()=>MBADepertment()),
            // question bank close//

            // Class Routine start //
            GetPage(name: '/ClassRoutine', page: ()=>ClassRoutine()),
            GetPage(name: '/ClassRoutineViewer', page: ()=>ClassRoutineViewer()),
            //class Routine close //

            // home page close //
            GetPage(name: '/StudentDashBoard', page: () => StudentDashBoard()),
            GetPage(name: '/StudentNotification', page: () => AllNotification()),
            GetPage(name: '/StudentProfile', page: () => StudentProfile()),

            // horigental button//
            GetPage(name: '/FacultyProfile', page: ()=>FacultyProfile()),
            GetPage(name: '/QuickPayment', page: ()=>QuickPayment()),
            GetPage(name: '/CSERoutine', page: ()=>CSERoutine()),
            GetPage(name: '/NU_Portal', page: ()=>NU_Portal()),
            // question pdf //
            GetPage(name: '/pdf_viewPage', page: ()=> pdf_viewPage()),

            // Attendance //
            GetPage(name: '/TakeandShowAttendence', page: ()=> TakeandShowAttendence()),
            GetPage(name: '/TeacherAttendance', page: ()=> TeacherAttendance()),
            GetPage(name: '/TeacherDashbord', page: ()=> TeacherDashbord()),
            GetPage(name: '/SelectCourceAttendence', page: ()=> SelectCourceAttendence()),
            GetPage(name: '/StudentNameAttendencelist', page: ()=> StudentNameAttendencelist()),
            // student view attendance //
            GetPage(name: '/StudentViewAttendance', page: ()=> StudentViewAttendance()),
            GetPage(name: '/CourseAttendanceView', page: ()=> CourseAttendanceView()),
            GetPage(name: '/StudentAttendanceDetailes', page: ()=> StudentAttendanceDetailes()),


          ],
          theme: ThemeData(
            primarySwatch: Colors.orange,

          ),
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}
