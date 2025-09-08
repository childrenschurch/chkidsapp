
import 'package:ch_kids/app/auth/auth_service.dart';
import 'package:ch_kids/app/constants/colors.dart';
import 'package:ch_kids/app/constants/strings.dart';
import 'package:ch_kids/app/screens/children_screen.dart';
import 'package:ch_kids/app/screens/login_screen.dart';
import 'package:ch_kids/app/screens/new_service_screen.dart';
import 'package:ch_kids/app/screens/parents_screen.dart';
import 'package:ch_kids/app/screens/services_history_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    HomeTab(),
    ChildrenScreen(),
    ParentsScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.appName),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.child_care),
            label: 'Children',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'Parents',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: AppColors.primary,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const NewServiceScreen()),
              );
            },
            child: const Text(AppStrings.newService),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ServicesHistoryScreen()),
              );
            },
            child: const Text(AppStrings.servicesHistory),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              // This should be handled by the bottom navigation bar
            },
            child: const Text(AppStrings.childrenRecords),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              // This should be handled by the bottom navigation bar
            },
            child: const Text(AppStrings.parentsRecords),
          ),
        ],
      ),
    );
  }
}

class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = FirebaseAuth.instance.currentUser;
    final authService = ref.watch(authServiceProvider);

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Name: ${user?.displayName ?? 'N/A'}'),
          const SizedBox(height: 8),
          Text('Email: ${user?.email ?? 'N/A'}'),
          const SizedBox(height: 32),
          ElevatedButton(
            onPressed: () async {
              await authService.signOut();
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => const LoginScreen()),
                (route) => false,
              );
            },
            child: const Text('Sign Out'),
          ),
        ],
      ),
    );
  }
}
