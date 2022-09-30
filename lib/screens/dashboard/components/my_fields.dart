import 'package:admin/responsive.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class MyFiles extends StatelessWidget {
  const MyFiles({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "My Files",
              style: Theme.of(context).textTheme.subtitle1,
            ),
            ElevatedButton.icon(
              style: TextButton.styleFrom(
                padding: EdgeInsets.symmetric(
                  horizontal: defaultPadding * 1.5,
                  vertical:
                      defaultPadding / (Responsive.isMobile(context) ? 2 : 1),
                ),
              ),
              onPressed: () {
                // navigate to another screen
                // screen contain name - email access - get the link
                showBottomSheet(
                    context: context,
                    builder: (context) => Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    height: 110,
                                    width: 150,
                                    child: ElevatedButton.icon(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      icon: Icon(
                                        Icons.cancel,
                                      ),
                                      label: Text(
                                        'Cancel',
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 110,
                                    width: 150,
                                    child: ElevatedButton.icon(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.save,
                                      ),
                                      label: Text(
                                        'Save',
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ));
              },
              icon: Icon(Icons.add),
              label: Text("Add New Class"),
            ),
          ],
        ),
      ],
    );
  }
}
