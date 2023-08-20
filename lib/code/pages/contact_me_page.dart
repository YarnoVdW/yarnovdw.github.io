import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:portfolio/code/pages/about_page.dart';
import 'package:portfolio/code/styles.dart';
import 'package:url_launcher/url_launcher.dart';


class ContactMePage extends StatelessWidget {
  const ContactMePage({super.key});

  Future<void> _launchMailClient() async {
    final Uri url = Uri.parse('mailto:yarnovandeweyer2@hotmail.com');
    try {
      await launchUrl(url);
    } catch (e) {
      throw 'Could not launch $e';
    }
  }
  Future<void> _launchPhoneClient() async {
    final Uri url = Uri.parse('tel:+32 484 52 40 24');
    try {
      await launchUrl(url);
    } catch (e) {
      throw 'Could not launch $e';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 32),
          const Text(
            'Contact me',
            style: Styles.defaultTitleTextStyle,
          ),
          // small vertical line
          const VerticalDevider(),
          const SizedBox(height: 15),
          ListTile(
            leading: const Icon(Icons.email),
            title: const Text('yarnovandeweyer2@hotmail.com'),
            onTap: () {
              _launchMailClient();
            },
          ),
          ListTile(
            leading: const Icon(Icons.phone),
            title: const Text('+32 484 52 40 24'),
            onTap: () {
              _launchPhoneClient();
            },
          ),
        ],
      ),
    );
  }
}
