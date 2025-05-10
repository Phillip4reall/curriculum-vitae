import 'package:flutter/material.dart';

class BackgroundScreen extends StatelessWidget {
  const BackgroundScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(leading: IconButton(onPressed: (){
        Navigator.pop(context);
      }, icon: Icon(Icons.arrow_back_ios,color:Colors.white)),
        centerTitle: true,title: const Text("Background/Education",style: TextStyle(color: Colors.white),), backgroundColor: Colors.teal[700]),
      body: SingleChildScrollView(
        
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const Text("Education", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            _eduItem("Lagos State Polytechnic", "Computer Science(Distinction)", "2018 - 2021"),
            _eduItem("The Polytechnic Ibadan", "Computer Science(Upper Credit)", "2012 - 2014"),
            const SizedBox(height: 20),
            const Text("Skills", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            _skillItem("Flutter", 0.9),
            _skillItem("Dart", 0.8),
            _skillItem("Cloud Firebase", 0.7),
            _skillItem("Mongodb", 0.6),
            _skillItem("Figma", 0.7),
            _skillItem("Git", 0.6),
             _skillItem("Riverpod", 0.7),
              _skillItem("Provider", 0.7),
          ],
        ),
      ),
    );
  }

  Widget _eduItem(String title, String subtitle, String date) {
    return Card(
      color: Colors.teal.shade50,
      child: ListTile(
        leading: const Icon(Icons.school, size: 40,color: Colors.teal,),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text("$subtitle\n$date"),
        isThreeLine: true,
      ),
    );
  }

  Widget _skillItem(String skill, double level) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(skill),
        LinearProgressIndicator(value: level, backgroundColor: Colors.grey[300], color: Colors.teal.shade700),
        const SizedBox(height: 10),
      ],
    );
  }
}
