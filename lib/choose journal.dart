import 'package:flutter/material.dart';



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Multi-Container Example'),
        ),
        body: Container(
          padding: EdgeInsets.all(16.0),
          child: Center(
            child: LayoutBuilder(
              builder: (context, constraints) {
                if (constraints.maxWidth < 600) {
                  // Mobile layout
                  return Column(
                    children: [
                      Container(
                        height: 200,
                        width: double.infinity,
                        color: Colors.blue,
                        child: Center(
                          child: Text(
                            'Container 1',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 16.0),
                      Container(
                        height: 200,
                        width: double.infinity,
                        color: Colors.red,
                        child: Center(
                          child: Text(
                            'Container 2',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                } else {
                  // Desktop layout
                  return Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 400,
                          color: Colors.blue,
                          child: Center(
                            child: Text(
                              'Container 1',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 16.0),
                      Expanded(
                        child: Container(
                          height: 400,
                          color: Colors.red,
                          child: Center(
                            child: Text(
                              'Container 2',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                }
              },
            ),
          ),
        ),
      ),
    );
  }
}
