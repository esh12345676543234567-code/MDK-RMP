import 'package:flutter/material.dart';

void main() {
  runApp(const UniqueFigmaApp());
}

class UniqueFigmaApp extends StatelessWidget {
  const UniqueFigmaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Практическая работа №1',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        useMaterial3: true,
      ),
      home: const CustomNavigationMenu(),
    );
  }
}

class CustomNavigationMenu extends StatelessWidget {
  const CustomNavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Отчёт: Практическая №1'), centerTitle: true, backgroundColor: Colors.teal.shade50),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text('Page 1 — Простые макеты (Модифицированные)', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.teal)),
            const Divider(),
            ElevatedButton(
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const CalmspaceWelcomeScreen())),
              child: const Text('1. Экран Welcome (calmspace)'),
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const CustomOrganizerScreen())),
              child: const Text('2. Экран профиля Organizer (Elena R.)'),
            ),
            const SizedBox(height: 24),
            const Text('Page 2 — Сложные макеты (Модифицированные)', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.indigo)),
            const Divider(),
            ElevatedButton(
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const RelaxMeMainScreen())),
              child: const Text('3. Экран списков (RelaxMe)'),
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const CustomCourseDetailsScreen())),
              child: const Text('4. Экран деталей курса (UI Animation)'),
            ),
          ],
        ),
      ),
    );
  }
}

class CalmspaceWelcomeScreen extends StatelessWidget {
  const CalmspaceWelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF006666),
      body: SafeArea(
        child: Column(
          children: [
            const Spacer(),
            const Text('calmspace', style: TextStyle(color: Colors.white, fontSize: 42, fontWeight: FontWeight.bold, letterSpacing: 1.0)),
            const Text('Find Your Inner Peace', style: TextStyle(color: Colors.white70, fontSize: 15)),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.black, backgroundColor: Colors.white,
                      minimumSize: const Size(double.infinity, 52),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(26)),
                    ),
                    child: const Text('Connect via Apple ID', style: TextStyle(fontWeight: FontWeight.w600)),
                  ),
                  const SizedBox(height: 12),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.black, backgroundColor: const Color(0xFFE0F2F1),
                      minimumSize: const Size(double.infinity, 52),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(26)),
                    ),
                    child: const Text('Register with Email', style: TextStyle(fontWeight: FontWeight.w600)),
                  ),
                  const SizedBox(height: 12),
                  TextButton(
                    onPressed: () {},
                    child: const Text('Skip and Continue with Google', style: TextStyle(color: Colors.white, fontSize: 15)),
                  ),
                ],
              ),
            ),
            const Spacer(),
            Container(
              height: 200,
              width: double.infinity,
              color: Colors.transparent,
              child: const Icon(Icons.wb_twilight, size: 100, color: Colors.white24),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomOrganizerScreen extends StatelessWidget {
  const CustomOrganizerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(color: Colors.teal),
        title: const Text('ArtHub Creator', style: TextStyle(fontWeight: FontWeight.bold)),
        actions: [IconButton(icon: const Icon(Icons.more_horiz, color: Colors.teal), onPressed: () {})],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const CircleAvatar(radius: 52, backgroundColor: Colors.teal, child: Icon(Icons.camera_alt, size: 45, color: Colors.white)),
            const SizedBox(height: 16),
            const Text('Elena Rostova', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildStat('4.820', 'Subscribers'),
                _buildStat('195', 'Following'),
                _buildStat('28', 'Workshops'),
              ],
            ),
            const SizedBox(height: 24),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.add, color: Colors.white),
                    label: const Text('Subscribe', style: TextStyle(color: Colors.white)),
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.teal, padding: const EdgeInsets.symmetric(vertical: 14)),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: OutlinedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.mail_outline, color: Colors.teal),
                    label: const Text('Contact', style: TextStyle(color: Colors.teal)),
                    style: OutlinedButton.styleFrom(side: const BorderSide(color: Colors.teal), padding: const EdgeInsets.symmetric(vertical: 14)),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildTab('Biography', isActive: true),
                _buildTab('Portfolio', isActive: false),
                _buildTab('Feedback', isActive: false),
              ],
            ),
            const SizedBox(height: 20),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text('About Studio', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
            ),
            const SizedBox(height: 8),
            Text(
              'Professional visual creator and mentor based in Eastern Europe. Conducting international masterclasses about lighting, composition, and mobile app interface design principles.',
              style: TextStyle(color: Colors.grey.shade800, height: 1.4),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStat(String number, String label) {
    return Column(
      children: [
        Text(number, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        Text(label, style: const TextStyle(color: Colors.grey, fontSize: 13)),
      ],
    );
  }

  Widget _buildTab(String label, {required bool isActive}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 10),
      decoration: BoxDecoration(
        color: isActive ? Colors.teal : Colors.transparent,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.teal),
      ),
      child: Text(label, style: TextStyle(color: isActive ? Colors.white : Colors.teal, fontWeight: FontWeight.bold, fontSize: 13)),
    );
  }
}


class RelaxMeMainScreen extends StatelessWidget {
  const RelaxMeMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RelaxMe', style: TextStyle(fontWeight: FontWeight.bold)),
        actions: [IconButton(icon: const Icon(Icons.search_rounded), onPressed: () {})],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  _buildChip('Popular', isSelected: true),
                  _buildChip('Ocean Sounds'),
                  _buildChip('Forest Breath'),
                  _buildChip('ASMR'),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(color: const Color(0xFFE1BEE7), borderRadius: BorderRadius.circular(16)),
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 110, child: Center(child: Icon(Icons.nights_stay, size: 65, color: Colors.deepPurple))), 
                  const Text('Echo of Sea Waves', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  const Text('Deep relaxation practices', style: TextStyle(color: Colors.black54)),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text('♡ 12 Audio tracks', style: TextStyle(color: Colors.black45, fontSize: 13)),
                      Text('Listen ➔', style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 16),
            GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              childAspectRatio: 1.15,
              children: [
                _buildGridCard('Night Rain', 'By DJ Chill', '4 tracks', const Color(0xFFB3E5FC)),
                _buildGridCard('Cosmic Travel', 'M. Sparks', '15 mins', const Color(0xFFFFF9C4)),
                _buildGridCard('Zen Garden', 'Traditional', '6 tracks', const Color(0xFFC8E6C9)),
                _buildGridCard('White Noise', 'Studio Record', '20 mins', const Color(0xFFFFCCBC)),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _buildChip(String label, {bool isSelected = false}) {
    return Container(
      margin: const EdgeInsets.only(right: 8),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: isSelected ? Colors.deepPurple.shade400 : Colors.grey.shade200,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(label, style: TextStyle(color: isSelected ? Colors.white : Colors.black87, fontWeight: FontWeight.w500)),
    );
  }

  Widget _buildGridCard(String title, String author, String subtitle, Color color) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(color: color, borderRadius: BorderRadius.circular(12)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.black87, fontSize: 14)),
          Text(author, style: const TextStyle(color: Colors.black54, fontSize: 11)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(subtitle, style: const TextStyle(color: Colors.black45, fontSize: 11)),
              const Text('Play ➔', style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold)),
            ],
          )
        ],
      ),
    );
  }
}

class CustomCourseDetailsScreen extends StatelessWidget {
  const CustomCourseDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
        title: const Text('UI Animation Pro', style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 100),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Container(
                    height: 190,
                    width: double.infinity,
                    color: Colors.teal.shade800,
                    child: const Icon(Icons.motion_photos_on, size: 75, color: Colors.white),
                  ),
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    _buildBadge('⭐ 4.8', Colors.amber.shade50, Colors.amber.shade900),
                    const SizedBox(width: 8),
                    _buildBadge('👥 1.250 students', Colors.teal.shade50, Colors.teal),
                    const SizedBox(width: 8),
                    _buildBadge('Top Rate', Colors.teal, Colors.white),
                  ],
                ),
                const SizedBox(height: 16),
                const Text('UI Animation Pro', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                const SizedBox(height: 8),
                const Text(
                  'Master the art of motion design inside mobile applications. Learn how to transform static wireframes into lively interactable modern prototypes.',
                  style: TextStyle(color: Colors.grey, height: 1.4, fontSize: 14),
                ),
                const SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text('18 Lectures (12 hours)', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                    Text('View all', style: TextStyle(color: Colors.teal, fontWeight: FontWeight.bold)),
                  ],
                ),
                const SizedBox(height: 12),
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade200),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: ListTile(
                    leading: Container(width: 44, height: 44, decoration: BoxDecoration(color: Colors.teal.shade100, borderRadius: BorderRadius.circular(8)), child: const Icon(Icons.play_arrow, color: Colors.teal)),
                    title: const Text('Principles of Timing', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                    subtitle: const Text('15 mins duration'),
                    trailing: const Icon(Icons.check_circle, color: Colors.teal),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 20,
            left: 20,
            right: 20,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal,
                minimumSize: const Size(double.infinity, 54),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
              ),
              child: const Text('Enroll Course - \$19.99', style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildBadge(String text, Color bgColor, Color textColor) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(color: bgColor, borderRadius: BorderRadius.circular(10)),
      child: Text(text, style: TextStyle(color: textColor, fontSize: 12, fontWeight: FontWeight.bold)),
    );
  }
}
