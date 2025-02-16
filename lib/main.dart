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
        backgroundColor: Colors.grey[100],
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                // Header Design
                Container(
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.blue[800],
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40),
                    ),
                  ),
                ),

                // Profile Card
                Transform.translate(
                  offset: const Offset(0, -80),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromRGBO(
                            158,
                            158,
                            158,
                            0.3,
                          ), // Fixed line
                          spreadRadius: 2,
                          blurRadius: 10,
                          offset: const Offset(0, 5),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Column(
                        children: [
                          // Profile Image
                          CircleAvatar(
                            radius: 50,
                            backgroundColor: Colors.blue[100],
                            backgroundImage: const AssetImage(
                              'assets/images/profile.jpg',
                            ),
                          ),
                          const SizedBox(height: 20),

                          // Name & Designation
                          Column(
                            children: [
                              Text(
                                'Sahariar Rahman',
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.grey[800],
                                ),
                              ),
                              const SizedBox(height: 5),
                              Text(
                                'Laravel Developer',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey[600],
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),

                          // Divider
                          Divider(color: Colors.grey[300]),
                          const SizedBox(height: 15),

                          // Contact Info
                          _buildInfoRow(
                            Icons.email,
                            'sahariarshifat2002@gmail.com',
                          ),
                          const SizedBox(height: 12),
                          _buildInfoRow(Icons.phone, '+880 1234 567890'),
                          const SizedBox(height: 25),

                          // Bio Text
                          Text(
                            'I am Shahariar Rahman, a dedicated web designer and back-end developer with a strong focus on creating elegant and user-friendly experiences. My passion lies in developing exceptional software that enriches the lives of those in my community.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.grey[700],
                              height: 1.5,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                // Social Media Section
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 30,
                  ),
                  child: Column(
                    children: [
                      Text(
                        'Connect with me',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey[700],
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          SocialButton(
                            icon: FontAwesomeIcons.instagram,
                            color: Colors.pink,
                          ),
                          SocialButton(
                            icon: FontAwesomeIcons.linkedin,
                            color: Colors.blue,
                          ),
                          SocialButton(
                            icon: FontAwesomeIcons.github,
                            color: Colors.black,
                          ),
                          SocialButton(
                            icon: FontAwesomeIcons.twitter,
                            color: Colors.lightBlue,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                // Footer
                Container(
                  padding: const EdgeInsets.all(20),
                  // color: Colors.blue[800],
                  child: const Text(
                    'Designed by Devartisan | In Shifat',
                    style: TextStyle(
                      color: Color.fromARGB(255, 19, 112, 233),
                      fontSize: 14,
                      letterSpacing: 0.8,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Custom Info Row Widget
  Widget _buildInfoRow(IconData icon, String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, size: 20, color: Colors.blue[800]),
        const SizedBox(width: 10),
        Text(
          text,
          style: TextStyle(
            fontSize: 16,
            color: Colors.grey[700],
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}

// Custom Social Button
class SocialButton extends StatelessWidget {
  final IconData icon;
  final Color color;
  const SocialButton({super.key, required this.icon, this.color = Colors.blue});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(color: color, shape: BoxShape.circle),
      child: IconButton(
        icon: FaIcon(icon, color: Colors.white, size: 22),
        onPressed: () {},
      ),
    );
  }
}
