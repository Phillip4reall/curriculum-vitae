import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ExperienceScreen extends StatelessWidget {
  const ExperienceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: IconButton(onPressed: (){
        Navigator.pop(context);
      }, icon: Icon(Icons.arrow_back_ios,color:Colors.white)),
        centerTitle: true,title: const Text("Experience",style: TextStyle(color: Colors.white),), backgroundColor: Colors.teal[700]),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const Text("Work Experience", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            _experienceItem(
              "Mobile App Developer(Internship)",
              "Hngx Fintech",
              "Mar 2023 - Aug 2023 |  6 mos",
            ),
                 const SizedBox(height: 10),
            _experienceItem(
              "Flutter Engineer(Internship)",
              "Zidio Fintech",
              "15 Feb 2024 - 15 Mar 2024 | 1 mos",
            ),
            const SizedBox(height: 10),
            _experienceItem(
              "Flutter Engineer(Internship)",
              "Hngx Fintech",
              "1 Mar 2024 - 31 Aug 2024 | 6 mos",
            ),
            const SizedBox(height: 10),
            _experienceItem(
              "Mobile Engineer(Internship)",
              "Nxg Digital Hub",
              "1 Mar 2025 - 31 Mar 2025 | 1 mos",
            ),
          ],
        ),
      ),
    );
  }

  Widget _experienceItem(String role, String company, String duration) {
    return Card(
      color: Colors.teal.shade50,
      child: ListTile(
        leading: const Icon(FontAwesomeIcons.briefcase, size: 40,color: Colors.teal),
        title: Text(role, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text("$company\n$duration"),
        isThreeLine: true,
      ),
    );
  }
}
