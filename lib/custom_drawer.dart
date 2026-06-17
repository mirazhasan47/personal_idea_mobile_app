import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.pink, Colors.redAccent],
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.favorite,
                    color: Colors.pink,
                    size: 35,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "বিবাহ বন্ধন Welcome",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "আপনার জীবনসঙ্গী খুঁজুন",
                  style: TextStyle(
                    color: Colors.white70,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text("হোম"),
            onTap: () {
              Navigator.pop(context);
              // Handle your navigation to Home here if needed
            },
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text("প্রোফাইল"),
            onTap: () {
              Navigator.pop(context); // Close drawer before navigating
              // TODO: Navigate to ProfilePage
            },
          ),
          ListTile(
            leading: const Icon(Icons.favorite),
            title: const Text("পছন্দের তালিকা"),
            onTap: () {
              Navigator.pop(context);
              // TODO: Navigate to FavoritesPage
            },
          ),
          ListTile(
            leading: const Icon(Icons.chat),
            title: const Text("মেসেজ"),
            onTap: () {
              Navigator.pop(context);
              // TODO: Navigate to MessagesPage
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text("সেটিংস"),
            onTap: () {
              Navigator.pop(context);
              // TODO: Navigate to SettingsPage
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text("লগ আউট"),
            onTap: () {
              Navigator.pop(context);
              // TODO: Handle logout logic
            },
          ),
        ],
      ),
    );
  }
}