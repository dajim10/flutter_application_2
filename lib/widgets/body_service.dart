import 'package:flutter/material.dart';
import 'package:flutter_application_2/utility/app_constant.dart';
import 'package:flutter_application_2/widgets/widget_image_assets.dart';
import 'package:flutter_application_2/widgets/widget_text.dart';

class BodyService extends StatefulWidget {
  const BodyService({super.key});

  @override
  State<BodyService> createState() => _BodyServiceState();
}

class _BodyServiceState extends State<BodyService> {
  var items = <Widget>[];

  @override
  void initState() {
    super.initState();

    for (var i = 0; i < AppConstant.title.length; i++) {
      items.add(Container(
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: Colors.grey),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            WidgetImageAsset(
              path: AppConstant.paths[i],
            ),
            WidgetText(data: AppConstant.title[i]),
          ],
        ),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      itemCount: items.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 2 / 3,
          mainAxisSpacing: 4,
          crossAxisSpacing: 4),
      itemBuilder: (context, index) => items[index],
    );
  }
}
