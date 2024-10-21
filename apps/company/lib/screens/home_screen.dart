import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_melos_widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 120,
        centerTitle: true,
        title: Column(
          children: [
            AspectRatio(
                aspectRatio: 4,
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          spreadRadius: 2,
                          blurRadius: 8,
                          blurStyle: BlurStyle.outer),
                    ],
                  ),
                  child: Image(image: Img.logo),
                )),
            Text("SDAIA",
                style: TextStyle(
                    color: context.textColor1,
                    fontSize: context.titleSmall.fontSize)),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () => (),
            icon: Icon(CupertinoIcons.qrcode, size: 40),
          ),
          SizedBox(
            width: 24,
          ),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(1.0),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Divider(
              color: context.bg3,
            ),
          ),
        ),
      ),
      drawer: HomeDrawer(),
      body: SafeArea(
          child: ListView(
        children: [],
      )),
    );
  }
}

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(16),
          children: [
            AspectRatio(
                aspectRatio: 3,
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          spreadRadius: 2,
                          blurRadius: 8,
                          blurStyle: BlurStyle.outer),
                    ],
                  ),
                  child: Image(image: Img.logo),
                )),
            SizedBox(height: 8),
            Align(
              alignment: Alignment.center,
              child: Text('SADIA',
                  style: TextStyle(
                      fontSize: context.titleMedium.fontSize,
                      fontWeight: context.titleLarge.fontWeight)),
            ),
            SizedBox(height: 16),
            Text(
              "Job Fair 123",
              style: context.bodyLarge,
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Icon(
                  CupertinoIcons.calendar,
                  color: context.textColor3,
                  size: 20,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "01/01/2024 - 03/01/2024",
                  style: context.bodySmall,
                ),
              ],
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Icon(
                  CupertinoIcons.person_3_fill,
                  color: context.textColor3,
                  size: 21,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "Total Applicants: ",
                  style: context.bodySmall,
                ),
                Text("200",
                    style: TextStyle(
                        fontSize: context.bodySmall.fontSize,
                        color: context.primary)),
              ],
            ),
            Divider(
              color: context.bg3,
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: Icon(
                CupertinoIcons.circle,
              ),
              title: Text(
                'Update Details',
              ),
              trailing: Icon(Icons.arrow_forward_ios_rounded),
              onTap: () {},
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: Icon(
                CupertinoIcons.circle,
              ),
              title: Text(
                'Privacy Policy',
              ),
              trailing: Icon(Icons.arrow_forward_ios_rounded),
              onTap: () {},
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: Icon(
                CupertinoIcons.circle,
              ),
              title: Text(
                'Dark Mode',
              ),
              trailing: Icon(Icons.arrow_forward_ios_rounded),
              onTap: () {},
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: Icon(
                CupertinoIcons.circle,
              ),
              title: Text(
                'Language',
              ),
              trailing: Icon(Icons.arrow_forward_ios_rounded),
              onTap: () {},
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: Icon(
                CupertinoIcons.circle,
              ),
              title: Text(
                'Logout',
              ),
              trailing: Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      context.primary,
                      context.secondary,
                    ],
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      spreadRadius: 2,
                      blurRadius: 8,
                    ),
                  ],
                ),
                child: Icon(
                  Icons.logout_outlined,
                  size: 20,
                  color: context.bg1,
                ),
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
//Scaffold.of(context).openDrawer();