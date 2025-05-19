import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:itcs424_assignment_6588069_code/pages/applied_job.dart';
import 'package:itcs424_assignment_6588069_code/pages/profile.dart';
void main() {
  runApp(MyApp());
}
final GoRouter _router = GoRouter(
    routes:[
      GoRoute(
        path: '/',
        builder: (context, state) => AppliedJob(),
      ),
      GoRoute(
        path: '/Profile',
        builder: (context, state) => Profile(),
      ),
    ] 
  );
class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
    );
  }
}

class TopNavigationBar extends StatelessWidget {
  const TopNavigationBar({super.key});
  @override
   Widget build(BuildContext context) {
    return AppBar(
      title: Container(
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(100),
        ),
        padding: EdgeInsets.all(2),
        child: Row(
          children: [
            Text(
              'Jobby',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold
              ),
                
            ),
            TextButton(
              onPressed: (){}, 
              child: Text(
                'About us',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12
                ),
              )
            ),
            TextButton(
              onPressed: (){}, 
              child: Text(
                'Find Jobs',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12
                ),
              )
            ),
            TextButton(
              onPressed: (){}, 
              child: Text(
                'Contact',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12
                ),
              )
            ),
            ElevatedButton.icon(
              onPressed: (){
                context.go('/Profile');
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                backgroundColor: Color(0xFF219EBC),
                padding: EdgeInsets.all(4),
              ), 
              label: Text(
                'Profile',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12
                ),
              ),
              icon: Icon(Icons.person,color: Colors.white),
            ),
          ]
        ),
      )
    );
  }
}