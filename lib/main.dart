import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const ProfilePage(),
    const EducationPage(),
    const ExperiencePage(),
    const ConnectPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue[800],
        unselectedItemColor: Colors.grey[600],
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'About',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Education',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.work),
            label: 'Experience',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.connect_without_contact),
            label: 'Connect',
          ),
        ],
      ),
    );
  }
}

// Profile Page (Existing)
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            _buildHeader(),
            Transform.translate(
              offset: const Offset(0, -80),
              child: _buildProfileCard(context),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileCard(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      decoration: _buildCardDecoration(),
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.blue[100],
              backgroundImage: const AssetImage('assets/images/profile.jpg'),
            ),
            const SizedBox(height: 20),
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
            const SizedBox(height: 20),
            Divider(color: Colors.grey[300]),
            const SizedBox(height: 15),
            _buildInfoRow(Icons.email, 'sahariarshifat2002@gmail.com'),
            const SizedBox(height: 12),
            _buildInfoRow(Icons.phone, '+880 1234 567890'),
            const SizedBox(height: 25),
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
    );
  }
}

// Education Page
class EducationPage extends StatelessWidget {
  const EducationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            _buildHeader(),
            Transform.translate(
              offset: const Offset(0, -80),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: _buildCardDecoration(),
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Column(
                    children: [
                      Text(
                        'Education',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w800,
                          color: Colors.grey[800],
                        ),
                      ),
                      const SizedBox(height: 20),
                      Divider(color: Colors.grey[300]),
                      const SizedBox(height: 15),
                      _buildEducationItem(
                        'Bachelor of Science in Computer Science',
                        'University of Engineering & Technology',
                        '2019 - 2023',
                        'CGPA: 3.85',
                      ),
                      const SizedBox(height: 20),
                      _buildEducationItem(
                        'Higher Secondary Certificate',
                        'City College',
                        '2016 - 2018',
                        'GPA: 5.00',
                      ),
                      const SizedBox(height: 20),
                      _buildEducationItem(
                        'Secondary School Certificate',
                        'City School',
                        '2014 - 2016',
                        'GPA: 5.00',
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildEducationItem(String degree, String institution, String period, String grade) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          degree,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Color(0xFF2962FF),
          ),
        ),
        const SizedBox(height: 5),
        Text(
          institution,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Color(0xFF424242),
          ),
        ),
        const SizedBox(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              period,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[600],
              ),
            ),
            Text(
              grade,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Color(0xFF2962FF),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

// Experience Page
class ExperiencePage extends StatelessWidget {
  const ExperiencePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            _buildHeader(),
            Transform.translate(
              offset: const Offset(0, -80),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: _buildCardDecoration(),
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Column(
                    children: [
                      Text(
                        'Experience',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w800,
                          color: Colors.grey[800],
                        ),
                      ),
                      const SizedBox(height: 20),
                      Divider(color: Colors.grey[300]),
                      const SizedBox(height: 15),
                      _buildExperienceItem(
                        'Senior Laravel Developer',
                        'Tech Solutions Ltd.',
                        'Jan 2022 - Present',
                        [
                          'Leading a team of 5 developers',
                          'Developed and maintained multiple web applications',
                          'Implemented CI/CD pipelines',
                          'Optimized database performance',
                        ],
                      ),
                      const SizedBox(height: 20),
                      _buildExperienceItem(
                        'Web Developer',
                        'Digital Innovations',
                        'Mar 2020 - Dec 2021',
                        [
                          'Built responsive web applications',
                          'Integrated payment gateways',
                          'Developed RESTful APIs',
                          'Managed client relationships',
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildExperienceItem(String position, String company, String period, List<String> responsibilities) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          position,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Color(0xFF2962FF),
          ),
        ),
        const SizedBox(height: 5),
        Text(
          company,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Color(0xFF424242),
          ),
        ),
        const SizedBox(height: 5),
        Text(
          period,
          style: TextStyle(
            fontSize: 14,
            color: Colors.grey[600],
          ),
        ),
        const SizedBox(height: 10),
        ...responsibilities.map((responsibility) => Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('• ', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                  Expanded(
                    child: Text(
                      responsibility,
                      style: const TextStyle(fontSize: 14),
                    ),
                  ),
                ],
              ),
            )),
      ],
    );
  }
}

// Connect Page
class ConnectPage extends StatelessWidget {
  const ConnectPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            _buildHeader(),
            Transform.translate(
              offset: const Offset(0, -80),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: _buildCardDecoration(),
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Column(
                    children: [
                      Text(
                        'Connect with me',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w800,
                          color: Colors.grey[800],
                        ),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        'Let\'s connect and collaborate!',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey[600],
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Divider(color: Colors.grey[300]),
                      const SizedBox(height: 25),
                      Wrap(
                        spacing: 20,
                        runSpacing: 20,
                        alignment: WrapAlignment.center,
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
                      const SizedBox(height: 25),
                      Text(
                        'Feel free to reach out to me through any of these platforms. I\'m always open to discussing new projects, creative ideas, or opportunities to be part of your visions.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey[700],
                          height: 1.5,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Shared Widgets and Helper Functions
Widget _buildHeader() {
  return Container(
    height: 150,
    decoration: BoxDecoration(
      color: Colors.blue[800],
      borderRadius: const BorderRadius.only(
        bottomLeft: Radius.circular(40),
        bottomRight: Radius.circular(40),
      ),
    ),
  );
}

BoxDecoration _buildCardDecoration() {
  return BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(20),
    boxShadow: [
      BoxShadow(
        color: const Color.fromRGBO(158, 158, 158, 0.3),
        spreadRadius: 2,
        blurRadius: 10,
        offset: const Offset(0, 5),
      ),
    ],
  );
}

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

class SocialButton extends StatelessWidget {
  final IconData icon;
  final Color color;

  const SocialButton({
    super.key,
    required this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
      child: IconButton(
        icon: FaIcon(icon, color: Colors.white, size: 22),
        onPressed: () {},
      ),
    );
  }
}