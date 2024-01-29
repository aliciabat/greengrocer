import 'package:flutter/material.dart';
import 'package:greengrocer/src/pages/common_widgets/custom_text_field.dart';
import 'package:greengrocer/src/config/app_data.dart' as appData;

class ProfileTab extends StatefulWidget {
  const ProfileTab({super.key});

  @override
  State<ProfileTab> createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'User Profile',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.green,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.logout),
            color: Colors.white,
          )
        ],
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.fromLTRB(16, 32, 16, 16),
        children: [
          CustomTextField(
            icon: Icons.email,
            label: 'Email',
            initialValue: appData.user.email,
            readOnly: true,
          ),
          CustomTextField(
            icon: Icons.person,
            label: 'Name',
            initialValue: appData.user.name,
            readOnly: true,
          ),
          CustomTextField(
            icon: Icons.phone,
            label: 'Phone',
            initialValue: appData.user.phone,
            readOnly: true,
          ),
          CustomTextField(
            icon: Icons.file_copy,
            label: 'CPF',
            isSecret: true,
            initialValue: appData.user.cpf,
            readOnly: true,
          ),
          SizedBox(
            height: 50,
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                side: const BorderSide(color: Colors.green),
              ),
              onPressed: () {
                updatePassword();
              },
              child: const Text(
                'Update password',
                style: TextStyle(color: Colors.green),
              ),
            ),
          )
        ],
      ),
    );
  }

  Future<bool?> updatePassword() {
    return showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 12),
                      child: Text(
                        'Update password',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const CustomTextField(
                      icon: Icons.lock,
                      label: 'Current password',
                      isSecret: true,
                    ),
                    const CustomTextField(
                      icon: Icons.lock_outline,
                      label: 'New password',
                      isSecret: true,
                    ),
                    const CustomTextField(
                      icon: Icons.lock_outline,
                      label: 'Confirm password',
                      isSecret: true,
                    ),
                    SizedBox(
                      height: 45,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                        ),
                        child: const Text(
                          'Update',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Positioned(
                top: 5,
                right: 5,
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.close),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
