import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:itcs424_assignment_6588069_code/main.dart';

class Profile extends StatefulWidget{
  const Profile({super.key});
  @override
  _Profile createState() => _Profile();
}

class _Profile extends State<Profile> {
  String? name;
  String? username;
  String? email;
  String? bio;
  String? link;
  bool isEditing = false;

  final nameController = TextEditingController();
  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final bioController = TextEditingController();
  final linkController = TextEditingController();

  void saveProfile() {
    setState(() {
      name = nameController.text;
      username = usernameController.text;
      email = emailController.text;
      bio = bioController.text;
      link = linkController.text;
      isEditing = false;
    });
  }

  void editProfile() {
    setState(() {
      isEditing = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: TopNavigationBar()),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            const SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () {
                context.go('/');
              },
              icon: const Icon(Icons.arrow_back),
              label: const Text("Back"),
            ),
            const SizedBox(height: 20),
            const Text(
              'Profile',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 40),
            ),
            const SizedBox(height: 30),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(width: 10),
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.black, width: 2.0),
                  ),
                  child: CircleAvatar(
                    backgroundImage:
                        const AssetImage('assets/image/profile_picture.png'),
                    backgroundColor: Colors.grey[100],
                    radius: 60,
                  ),
                ),
                const SizedBox(width: 20),
                isEditing
                ? ProfileForm(
                    name: nameController,
                    username: usernameController,
                    email: emailController,
                    bio: bioController,
                    link: linkController,
                    onsave: saveProfile,
                )
                : ProfileDisplay(
                    name: name,
                    username: username,
                    email: email,
                    bio: bio,
                    link: link,
                    onEdit: editProfile,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileForm extends StatelessWidget {
  final TextEditingController name;
  final TextEditingController username;
  final TextEditingController email;
  final TextEditingController bio;
  final TextEditingController link;
  final VoidCallback onsave;

  const ProfileForm({
    super.key,
    required this.name,
    required this.username,
    required this.email,
    required this.bio,
    required this.link,
    required this.onsave
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 220,
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: Colors.grey[50],
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.black, width: 2.0),
          ),
          child: Column(
            children: [
              TextField(
                controller: name, 
                decoration: InputDecoration(labelText: 'Name')
              ),
              TextField(
                controller: username, 
                decoration: InputDecoration(labelText: 'Username')
              ),
              TextField(
                controller: email, 
                decoration: InputDecoration(labelText: 'Email')
              ),
              TextField(
                controller: bio, 
                decoration: InputDecoration(labelText: 'Bio')
              ),
              TextField(
                controller: link, 
                decoration: InputDecoration(labelText: 'Link')
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: onsave,
          child: const Text('Save'),
        ),
      ],
    );
  }
}

class ProfileDisplay extends StatelessWidget {
  final String? name;
  final String? username;
  final String? email;
  final String? bio;
  final String? link;
  final VoidCallback onEdit;

  const ProfileDisplay({
    super.key,
    this.name,
    this.username,
    this.email,
    this.bio,
    this.link,
    required this.onEdit,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 220,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.grey[50],
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.black, width: 2.0),
          ),
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Name: ${name ?? '-'}"),
              Text("Username: ${username ?? '-'}"),
              Text("Email: ${email ?? '-'}"),
              Text("Bio: ${bio ?? '-'}"),
              Text("Link: ${link ?? '-'}"),
            ],
          )
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: onEdit,
          child: const Text('Edit'),
        ),
      ],
    );
  }
}
