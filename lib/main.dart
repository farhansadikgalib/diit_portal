import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:diit_portal/Screens/AuthScreen/ForgetPassPage.dart';
import 'package:diit_portal/Screens/AuthScreen/LoginPage.dart';
import 'package:diit_portal/Screens/Dashboard/Home_Page/Academic_result/Class_test/class_test.dart';
import 'package:diit_portal/Screens/Dashboard/Home_Page/Academic_result/Internal_final/internal_final.dart';
import 'package:diit_portal/Screens/Dashboard/Home_Page/Academic_result/Mid_term/mid_term.dart';
import 'package:diit_portal/Screens/Dashboard/Home_Page/Academic_result/academic_result.dart';
import 'package:diit_portal/Screens/Dashboard/Home_Page/Attendance/Student_attendance_view/student_attendance_detailes.dart';
import 'package:diit_portal/Screens/Dashboard/Home_Page/Attendance/Student_attendance_view/student_course_%20attendanceview.dart';
import 'package:diit_portal/Screens/Dashboard/Home_Page/Attendance/Teacher_takeattendance/course_selecta_attendence.dart';
import 'package:diit_portal/Screens/Dashboard/Home_Page/Attendance/Teacher_takeattendance/date_attendance.dart';
import 'package:diit_portal/Screens/Dashboard/Home_Page/Attendance/Teacher_takeattendance/exam_course.dart';
import 'package:diit_portal/Screens/Dashboard/Home_Page/Attendance/Teacher_takeattendance/exam.dart';
import 'package:diit_portal/Screens/Dashboard/Home_Page/Attendance/Teacher_takeattendance/exam_type.dart';
import 'package:diit_portal/Screens/Dashboard/Home_Page/Attendance/Teacher_takeattendance/student_name_att_list.dart';
import 'package:diit_portal/Screens/Dashboard/Home_Page/Attendance/Teacher_takeattendance/subject_details.dart';
import 'package:diit_portal/Screens/Dashboard/Home_Page/Attendance/Teacher_takeattendance/take_show_attendence.dart';
import 'package:diit_portal/Screens/Dashboard/Home_Page/Attendance/Teacher_takeattendance/teacher_attendance.dart';
import 'package:diit_portal/Screens/Dashboard/Home_Page/Attendance/Teacher_takeattendance/teacher_deshboard.dart';
import 'package:diit_portal/Screens/Dashboard/Home_Page/Attendance/Teacher_takeattendance/view_attendance.dart';
import 'package:diit_portal/Screens/Dashboard/Home_Page/Attendance/Teacher_takeattendance/view_student_attendance.dart';
import 'package:diit_portal/Screens/Dashboard/Home_Page/Attendance/Teacher_takeattendance/view_student_exammark.dart';
import 'package:diit_portal/Screens/Dashboard/Home_Page/Class_routine/DAY/Friday.dart';
import 'package:diit_portal/Screens/Dashboard/Home_Page/Class_routine/DAY/Monday.dart';
import 'package:diit_portal/Screens/Dashboard/Home_Page/Class_routine/DAY/Saturday.dart';
import 'package:diit_portal/Screens/Dashboard/Home_Page/Class_routine/DAY/Sunday.dart';
import 'package:diit_portal/Screens/Dashboard/Home_Page/Class_routine/DAY/Thursday.dart';
import 'package:diit_portal/Screens/Dashboard/Home_Page/Class_routine/DAY/Tuesday.dart';
import 'package:diit_portal/Screens/Dashboard/Home_Page/Class_routine/DAY/Wednesday.dart';
import 'package:diit_portal/Screens/Dashboard/Home_Page/Class_routine/Routine_View.dart';
import 'package:diit_portal/Screens/Dashboard/Home_Page/Club/atten/takeattendance.dart';
import 'package:diit_portal/Screens/Dashboard/Home_Page/Club/club.dart';
import 'package:diit_portal/Screens/Dashboard/Home_Page/Club/helping_birds.dart';
import 'package:diit_portal/Screens/Dashboard/Home_Page/Community/screens/Community.dart';
import 'package:diit_portal/Screens/Dashboard/Home_Page/Diit_notics/diit_notics.dart';
import 'package:diit_portal/Screens/Dashboard/Home_Page/Diit_notics/notics_details.dart';
import 'package:diit_portal/Screens/Dashboard/Home_Page/Faculty_member/Faculty_Member.dart';
import 'package:diit_portal/Screens/Dashboard/Home_Page/NU_Portal/screens/NU_Portal.dart';
import 'package:diit_portal/Screens/Dashboard/Home_Page/Question_bank/dept_bba/bba_question.dart';
import 'package:diit_portal/Screens/Dashboard/Home_Page/Question_bank/dept_bthm/bthm_question.dart';
import 'package:diit_portal/Screens/Dashboard/Home_Page/Question_bank/dept_cse/cse_question.dart';
import 'package:diit_portal/Screens/Dashboard/Home_Page/Question_bank/dept_mba/mba_question.dart';
import 'package:diit_portal/Screens/Dashboard/Home_Page/Question_bank/pdf_view.dart';
import 'package:diit_portal/Screens/Dashboard/Home_Page/Question_bank/question_bank.dart';
import 'package:diit_portal/Screens/Dashboard/Home_Page/HomePage.dart';
import 'package:diit_portal/Screens/Dashboard/Home_Page/Tution_Fees/tution_fees.dart';
import 'package:diit_portal/Screens/Dashboard/Home_Page/quick_pay/QuickPayment.dart';

import 'package:diit_portal/Screens/Dashboard/Dashboard.dart';
import 'package:diit_portal/Screens/Dashboard/Home_Page/Attendance/Student_attendance_view/student_attendanceview_login.dart';
import 'package:diit_portal/Screens/Dashboard/Notification/All_Notification.dart';
import 'package:diit_portal/Screens/Dashboard/Student_Portal/Total_Paid/total_paid.dart';
import 'package:diit_portal/Screens/Dashboard/Student_Portal/Total_due/total_due.dart';


import 'package:diit_portal/Screens/Dashboard/Student_Portal/Total_fine/total_fine.dart';
import 'package:diit_portal/Screens/Dashboard/Student_Portal/Student_Portal.dart';
import 'package:diit_portal/Screens/Dashboard/Student_Profile/student_profile.dart';
import 'package:diit_portal/Screens/IntroScreen/IntroScreen_Start.dart';
import 'package:diit_portal/Screens/NoInternet/NoInternetConnection.dart';
import 'package:diit_portal/Screens/SplashScreen/SplashScreen.dart';
import 'package:diit_portal/Screens/SplashScreen/SplashScreenBinding.dart';
import 'package:diit_portal/bKash_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
 await Firebase.initializeApp();
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);



  AwesomeNotifications().initialize(
      null,
      [
        NotificationChannel(
            channelKey: 'basic_channel',
            channelName: 'Basic notifications',
            channelDescription: 'Notification channel for basic tests',
            defaultColor: Colors.orangeAccent,
            ledColor: Colors.black,
            enableLights: true,
          enableVibration: true,
          playSound: true,

        )
      ]
  );



  // FirebaseMessaging.instance.subscribeToTopic("all");
  // FirebaseMessaging.onBackgroundMessage(firebaseBackgroundMessage);


  runApp(MyApp());
}


Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  print("Handling a background message: ${message.messageId}");
  //call awesomenotification to how the push notification.
  AwesomeNotifications().createNotificationFromJsonData(message.data);
}

Future<void> firebaseBackgroundMessage(RemoteMessage message) async {
  print(message.data);
  AwesomeNotifications().createNotification(
      content: NotificationContent( //with image from URL
          id: 1,
          channelKey: 'basic', //channel configuration key
          title: message.data["title"],
          body: message.data["body"],
          bigPicture: message.data["image"],
          notificationLayout: NotificationLayout.BigPicture,
          payload: {"name":"flutter"}
      )
  );
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        var thing;
        return GetMaterialApp(
          title: 'DiiT Portal',
          initialRoute: '/',
          defaultTransition: Transition.leftToRight,
          getPages: [
            GetPage(
                name: '/',
                page: () => SplashScreen(),
                binding: SplashBinding()),

            GetPage(name: '/IntroScreen', page: ()=> Introscreen_Start()),
            GetPage(name: '/NoInternet', page: ()=>NoInternetConnection()),
            GetPage(name: '/LoginPage', page: () => LoginPage()),
            GetPage(name: '/ForgetPassPage', page: () => ForgetPassPage()),
            GetPage(name: '/DashBoard', page: () => Dashboard()),
            // navigation bar //
            // GetPage(name: '/BottlomNavegatonBar', page: () => Dashboard()),
            // home page //
            GetPage(name: '/HomePage', page: () => HomePage()),
            // question bank cse,bba,bthm, //
            GetPage(name: '/QuestionBank', page: () => QuestionBank()),
            GetPage(name: '/CseDepertment', page: () => CseDepertment()),
            GetPage(name: '/BbaDepertment', page: () => BbaDepertment()),
            GetPage(name: '/BthmDepertment', page: () => BthmDepertment()),
            GetPage(name: '/MBADepertment', page: () => MBADepertment()),
            // question bank close//

            // Class Routine start //
            // GetPage(name: '/ClassRoutine', page: () => const ClassRoutine()),
            GetPage(name: '/Friday', page: ()=>Friday()),
            GetPage(name: '/Saturday', page: ()=>Saturday()),
            GetPage(name: '/Sunday', page: ()=>Sunday()),
            GetPage(name: '/Monday', page: ()=>Monday()),
            GetPage(name: '/Tuesday', page: ()=>Tuesday()),
            GetPage(name: '/Wednesday', page: ()=>Wednesday()),
            GetPage(name: '/Thursday', page: ()=>Thursday()),

             // Club //
            GetPage(name: '/IT_Clube', page: ()=>All_Clubs()),
            GetPage(name: '/Helping_Birds', page: ()=>Helping_Birds()),

            //Club //

            GetPage(name: '/ClassRoutineViewer', page: () => ClassRoutineViewer()),
            //class Routine close //

            // home page close //

            // Student Dashboard//
            GetPage(name: '/StudentDashBoard', page: () => StudentPortal()),
            GetPage(name: '/TOTALPAID', page: () => TOTALPAID()),
            GetPage(name: '/TOTALDUE', page: () => TOTALDUE()),
            GetPage(name: '/TOTALFINE', page: () => TOTALFINE()),
            // Student Dashborad //
            GetPage(name: '/StudentNotification', page: () => AllNotification()),
            GetPage(name: '/StudentProfile', page: () => StudentProfile()),

            // horigental button start//
            GetPage(name: '/FacultyProfile', page: () =>  FacultyProfile()),
            GetPage(name: '/QuickPayment', page: () =>  QuickPayment()),
            GetPage(name: '/bKash', page: () =>  bKashPage(title: 'Quick Pay')),

            GetPage(name: '/NU_Portal', page: () =>  NU_Portal()),
            GetPage(name: '/TutionFees', page: () =>  TutionFees()),

             // AcademicResult
            GetPage(name: '/AcademicResult', page: () =>  AcademicResult()),
            GetPage(name: '/ClassText', page: () =>  ClassText()),
            GetPage(name: '/MidTerm', page: () =>  MidTerm()),
            GetPage(name: '/InternalFinal', page: () =>  InternalFinal()),
            // AcademicResult
            GetPage(name: '/DiitNotics', page: () =>  DiitNotics()),
            GetPage(name: '/NoticsDetails', page: () =>  NoticsDetails()),
            GetPage(name: '/Community', page: () =>  Community()),


            // question pdf //
            GetPage(name: '/pdf_viewPage', page: () => const pdf_viewPage()),

            // Attendance //
            GetPage(name: '/TakeandShowAttendence',page: () => const TakeandShowAttendence()),
            GetPage(name: '/AttendanceTake',page: () => AttendanceTake()),
            GetPage(name: '/TeacherAttendance', page: () => TeacherAttendance()),
            GetPage(name: '/TeacherDashbord', page: () => TeacherDashbord()),
            GetPage(name: '/SelectCourceAttendence', page: () => SelectCourceAttendence()),
            GetPage(name: '/SubjectDetails', page: ()=> SubjectDetails()),
            GetPage(name: '/StudentAttennameList', page: () => StudentAttennameList()),
            GetPage(name: '/TeacherViewAttendance', page: () => TeacherViewAttendance()),
            GetPage(name: '/DateAttendance', page: () => DateAttendance()),
            GetPage(name: '/ViewStudentAttendance', page: () => ViewStudentAttendance()),
            GetPage(name: '/Exam', page: () => Exam()),
            GetPage(name: '/ExamType', page: ()=>ExamType()),
            GetPage(name: '/Exam_Course', page: () => Exam_Course()),
            GetPage(name: '/exam_marks', page: () => exam_marks()),
            // student view attendance //
            GetPage(name: '/StudentViewAttendance',page: () => const StudentViewAttendance()),
            GetPage(name: '/CourseAttendanceView',page: () => CourseAttendanceView()),
            GetPage(name: '/StudentAttendanceDetailes',page: () => StudentAttendanceDetailes()),
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

