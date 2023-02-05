import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class job extends StatefulWidget {
  const job({super.key});

  @override
  State<job> createState() => _jobState();
}

class _jobState extends State<job> {
  var formKey = GlobalKey<FormState>();
  var title = TextEditingController();
  var descri = TextEditingController();
  var tybe = TextEditingController();
  var salary = TextEditingController();
  var start = TextEditingController();
  var end = TextEditingController();
  var role = TextEditingController();
  final CollectionReference _jobs =
      FirebaseFirestore.instance.collection('gobs');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'job',
                  style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 40.0,
                ),
                TextFormField(
                  controller: title,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    labelText: 'title',
                    border: OutlineInputBorder(),
                  ),
                ),
                TextFormField(
                  controller: descri,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    labelText: 'description',
                    border: OutlineInputBorder(),
                  ),
                ),
                TextFormField(
                  controller: tybe,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    labelText: 'type',
                    border: OutlineInputBorder(),
                  ),
                ),
                TextFormField(
                  controller: salary,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    labelText: 'salary',
                    border: OutlineInputBorder(),
                  ),
                ),
                TextFormField(
                  controller: role,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    labelText: 'role',
                    border: OutlineInputBorder(),
                  ),
                ),
                TextFormField(
                  controller: start,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    labelText: 'start',
                    border: OutlineInputBorder(),
                  ),
                ),
                TextFormField(
                  controller: end,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    labelText: 'end',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  color: Colors.blue,
                  child: MaterialButton(
                    onPressed: () async {
                      await FirebaseFirestore.instance.collection('jobs').add({
                        'title': title.text,
                        'description': descri.text,
                        'role': role.text,
                        'salary': salary.text,
                        'tybe': tybe.text,
                        'start': start.text,
                        'end': end.text
                      });
                    },
                    child: Text("save"),
                    // print(emailController.text);
                    // print(passwordController.text);
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
