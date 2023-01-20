import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Colors.blue[50],
      title: 'Flutter Demo',
      /*theme: ThemeData(
        primarySwatch: Colors.blue,
      ),*/
      home: Scaffold(

        body: Container(
          color: Colors.blue[50],
          child:
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'images/123.png',
                ),
                Text("Sign in to Continue",style: TextStyle(fontSize: 18,color: Colors.black),),
            Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
            children:[
                Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            child:
            const TextField(
            decoration: InputDecoration(
            border: InputBorder.none,
            hintText: 'Email',
            prefixIcon: Icon(Icons.email,color: Colors.blue,),
          ),
        ),
      ),
          ],
            )
            ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children:[
            Container(
            decoration: BoxDecoration(
            color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            child: const TextField(
            decoration: InputDecoration(
            prefixIcon: Icon(Icons.key,color: Colors.blue,),
            border: InputBorder.none,
            //labelText: 'Password',
            hintText: 'Password',
          ),
        ),
      ),
      ],)
    ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child:  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      InkWell(
                        onTap: (){},
                        child: Container(
                          height: 50,
                          width: 450,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(15),

                          ),
                          alignment: Alignment.center,
                          child: const Text("Login",
                            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 20),),
                        ),
                      ),
                      Padding(padding: const EdgeInsets.all(10),
                          child:
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text("Don't have a Account?"),

                              InkWell(
                                splashColor: Colors.red,
                                //highlightColor: Colors.blue,
                                child: const Text(" Sign up",style: TextStyle(color: Colors.blue),),
                                onTap: () {},
                              ),

                            ],
                          ))
                    ],
                  ),
                ),

              ],
            ),
        ),

      )
    );
  }
}
