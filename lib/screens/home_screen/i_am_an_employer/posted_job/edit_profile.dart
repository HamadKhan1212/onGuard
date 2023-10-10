import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Profile'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Get.back();
          },
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('assets/images/profile1.jpeg')),
            SizedBox(
              height: 10,
            ),
            Text(
              'Mike Tyson',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Door Supervisor',
              style: TextStyle(fontSize: 15),
            ),
            ReusableTextTile(
              title: 'Name',
              subTitle: 'Mike Tyson',
            ),
            ReusableTextTile(
              title: 'Email',
              subTitle: 'mike123@gmail.com',
            ),
            ReusableTextTile(
              title: 'Business Name',
              subTitle: 'Door Supervisor',
            ),
            ReusableTextTile(
              title: 'Address',
              subTitle: 'Street 02 Unknow place',
            ),
          ],
        ),
      ),
    );
  }
}

class ReusableTextTile extends StatelessWidget {
  final String? title;
  final String? subTitle;
  const ReusableTextTile({
    super.key,
    this.title,
    this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        title: Text(
          '$title:',
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(left: 15.0, top: 10),
          child: Text(
            '$subTitle',
          ),
        ),
      ),
    );
  }
}
