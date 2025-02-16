import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 40.0, horizontal: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Profile Avatar
                  const CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage('assets/images/profile.jpg'),
                  ),
                  const SizedBox(height: 30),
                  
                  // Name
                  const Text(
                    'Sahariar Rahman',
                    style: TextStyle(
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                      letterSpacing: 1.2,
                    ),
                  ),
                  const SizedBox(height: 10),
                  
                  // Designation
                  const Text(
                    'Laravel Developer',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 15),
                  
                  // Contact Info
                  const Column(
                    children: [
                      Text(
                        '📧 sahariarshifat2002@gmail.com',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.black54,
                          letterSpacing: 1.0,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        '📱 +880 1234 567890',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.black54,
                          letterSpacing: 1.0,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 25),
                  
                  // Title/Bio
                  const Text(
                    'I am Shahariar Rahman, a dedicated web designer and back-end developer with a strong focus on creating elegant and user-friendly experiences.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.black54,
                      letterSpacing: 1.0,
                      height: 1.4,
                    ),
                  ),
                  const SizedBox(height: 40),
                  
                  // Social Icons Row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      SocialButton(icon: FontAwesomeIcons.instagram),
                      SocialButton(icon: FontAwesomeIcons.linkedin),
                      SocialButton(icon: FontAwesomeIcons.facebook),
                      SocialButton(icon: FontAwesomeIcons.telegram),
                    ],
                  ),
                  const SizedBox(height: 40),
                  
                  // Footer Text
                  const Text(
                    'Create this same App for free by Devartisan',
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.grey,
                      letterSpacing: 0.8,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// Custom Social Icon Widget
class SocialButton extends StatelessWidget {
  final IconData icon;
  const SocialButton({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12.0),
      decoration: BoxDecoration(
        color: const Color(0xFF1976D2),
        shape: BoxShape.circle,
      ),
      child: IconButton(
        icon: FaIcon(icon, color: Colors.white, size: 24.0),
        onPressed: () {},
      ),
    );
  }
}