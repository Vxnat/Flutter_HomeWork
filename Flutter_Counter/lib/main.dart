// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:first_app/my_object.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: CouterPage());
  }
}

class CouterPage extends StatefulWidget {
  const CouterPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _CouterPageState();
  }
}

class _CouterPageState extends State<CouterPage> {
  MyObject myObject = MyObject(0);
  int? n;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
          child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 96, 241, 222),
        appBar: AppBar(
          leading: CircleAvatar(
            backgroundImage: Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRuL7fe6cxzBvmxrHOx5mCEnzlA9a-36_QQLnrzs7-MaMZ4_bMt3A2W_iVrrw&s')
                .image,
            radius: 20,
          ),
          title: const Text(
            'MyObject App',
            style: TextStyle(color: Color.fromARGB(255, 50, 50, 50)),
          ),
          backgroundColor: Colors.transparent,
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
                width: 250,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 50),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration:
                        const InputDecoration(hintText: 'Nhập số nguyên n'),
                    onChanged: (value) {
                      setState(() {
                        n = value.isNotEmpty ? int.tryParse(value) ?? 0 : null;
                      });
                    },
                  ),
                )),
            Text(
              'Giá trị hiện tại ${myObject.value}',
              style: const TextStyle(
                  fontSize: 20, color: Color.fromARGB(255, 26, 26, 26)),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(130, 50),
                        backgroundColor: Colors.blue,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5))),
                    onPressed: () {
                      setState(() {
                        myObject.increase();
                      });
                    },
                    icon: const Icon(Icons.add, color: Colors.white),
                    label: const Text(
                      'Cộng',
                      style: TextStyle(color: Colors.white),
                    )),
                const SizedBox(
                  width: 10,
                ),
                ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(130, 50),
                        backgroundColor: Colors.blue,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5))),
                    onPressed: () {
                      setState(() {
                        myObject.decrease();
                      });
                    },
                    icon: const Icon(Icons.remove, color: Colors.white),
                    label: const Text(
                      'Trừ',
                      style: TextStyle(color: Colors.white),
                    )),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(130, 50),
                        backgroundColor: Colors.blue,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5))),
                    onPressed: () {
                      setState(() {
                        myObject.square();
                      });
                    },
                    icon: const Icon(Icons.clear_rounded, color: Colors.white),
                    label: const Text(
                      'Luỹ thừa bậc 2',
                      style: TextStyle(color: Colors.white),
                    )),
                const SizedBox(
                  width: 10,
                ),
                ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(130, 50),
                        backgroundColor: Colors.blue,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5))),
                    onPressed: () {
                      setState(() {
                        myObject.power(n ?? 0);
                      });
                    },
                    icon: const Icon(
                      Icons.expand_less,
                      color: Colors.white,
                    ),
                    label: Text(
                      'Lũy thừa bậc ${n ?? 'n'}',
                      style: const TextStyle(color: Colors.white),
                    ))
              ],
            )
          ],
        )),
      )),
      debugShowCheckedModeBanner: false,
    );
  }
}
