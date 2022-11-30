import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:signup/DoubleAuthentication.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.app_registration,
                  color: CupertinoColors.white,
                  size: 22,
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.light_mode,
                  color: CupertinoColors.white,
                  size: 22,
                )),
          ],
        ),
        // backgroundColor: Colors.deepPurple,
        drawer: Drawer(
          backgroundColor: CupertinoColors.inactiveGray.darkColor,
          child: DrawerHeader(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image:
                    DecorationImage(image: AssetImage(''), fit: BoxFit.fill)),
            child: Container(
              padding: EdgeInsets.only(left: 10, top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.black38.withRed(3),
                    backgroundImage: AssetImage('images/avatar.jpg'),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    'DevBlinders',
                    style: TextStyle(
                      color: CupertinoColors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        'Blinders@edu.pk.com',
                        style: TextStyle(
                          color: CupertinoColors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(),
                      SizedBox(
                        width: 10,
                      ),
                      TextButton(
                        onPressed: () {},
                        onLongPress: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => DoubleAthen()));
                        },
                        child: Icon(
                          Icons.move_up,
                          color: Colors.black87,
                        ),
                      ),
                    ],
                  ),
                  TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      hintText: 'Search here',
                      border: InputBorder.none,
                      prefixIconColor: Colors.white10.withBlue(4),
                    ),
                    textCapitalization: TextCapitalization.characters,
                  ),
                  SizedBox(
                    height: 5,
                    child: Divider(
                      thickness: 2,
                      color: Colors.black38,
                    ),
                  ),
                  Column(
                    children: [
                      ListTile(
                        leading: Icon(
                          Icons.people_alt_outlined,
                          color: Colors.black,
                          size: 20,
                        ),
                        title: Text(
                          'People',
                          style: TextStyle(
                              color: CupertinoColors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.verified,
                          color: Colors.black,
                          size: 20,
                        ),
                        title: Text(
                          'Authentication',
                          style: TextStyle(
                              color: CupertinoColors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        onTap: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        body: Container(
          // padding: EdgeInsets.only(top: 150, left: 50, right: 50, bottom: 40),
          padding: EdgeInsets.symmetric(vertical: 15),
          color: Colors.blueGrey.shade700,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                  radius: 40, backgroundImage: AssetImage('images/avatar.jpg')),
              SizedBox(
                height: 15,
              ),
              Container(
                  child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Enter username',
                        hintText: 'Must valid email',
                        prefixIcon: Icon(Icons.email_outlined),
                        prefixIconColor: CupertinoColors.black,
                        border: OutlineInputBorder(),
                      ),
                      keyboardType: TextInputType.emailAddress,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Enter Password',
                        hintText: 'Requried strong pass',
                        prefixIcon: Icon(Icons.password),
                        border: OutlineInputBorder(),
                      ),
                      obscureText: true,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Confirm Password',
                        hintText: 'Match Password',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.check_circle),
                        isDense: true,
                      ),
                      obscureText: true,
                    ),
                  ),
                ],
              )),
              SizedBox(
                height: 6.5,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: MaterialButton(
                  minWidth: double.infinity,
                  onPressed: () {},
                  child: Text(
                    'Login',
                    softWrap: false,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  color: Colors.greenAccent,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
