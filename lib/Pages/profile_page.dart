import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

/*FutureBuilder<DocumentSnapshot>(
          future: DatabaseService().readUserInfo().doc(FirebaseAuth.instance.currentUser?.uid).get(),
          builder:
              (context, snapshot) {

                if (snapshot.connectionState == ConnectionState.waiting){
                  return const LinearProgressIndicator();
                }

            if (snapshot.hasError) {
              return const Text("Something went wrong");
            }

            if(snapshot.data == null){
              return const Text("No data");
            }

            if (snapshot.connectionState == ConnectionState.done) {
              Map<String, dynamic> data = snapshot.data!.data() as Map<String, dynamic>;
              //return Text("Full Name: ${data['name']}");
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 
                  Text('Email Account : ${data['email']}',style: const TextStyle(fontSize: 18),),
                  const SizedBox(height: 5,),
                  Text('Password : ${data['password']}',style: const TextStyle(fontSize: 18),),
                  const SizedBox(height: 5,),

                ],
              );
            }

            return const Text("loading");
          },
        )*/