import 'package:edstem_test/consts/app_images.dart';
import 'package:flutter/material.dart';

class BaseAppBar extends StatelessWidget implements PreferredSizeWidget {
  const BaseAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      centerTitle: true,
      actions: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: Stack(
            fit: StackFit.loose,
            clipBehavior: Clip.none,
            children: const [
              CircleAvatar(
                backgroundImage: AssetImage(
                  "assets/images/Ellipse27.png",
                ),
                radius: 14,
              ),
              Positioned(
                right: -20,
                child: CircleAvatar(
                  backgroundImage: AssetImage(
                    "assets/images/Ellipse28.png",
                  ),
                  radius: 14,
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          width: 20,
        )
      ],
      iconTheme: const IconThemeData(color: Colors.black),
      title: Container(
        height: 59,
        width: 59,
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill, image: AssetImage(AppImages.appLogo))),
      ),
      bottom: const PreferredSize(
        child: Text(
          "Trinity Mar Thoma Church,Houston",
          style: TextStyle(color: Color(0xFF353D65)),
        ),
        preferredSize: Size.fromHeight(0),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(80.0);
}
