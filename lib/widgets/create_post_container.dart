import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../models/models.dart';

class CreatePostConrainer extends StatelessWidget {
  final User currentuser;
  const CreatePostConrainer({Key? key, required this.currentuser})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(12.0, 8.0, 12.0, 0),
      color: Colors.white,
      child: Column(children: [
        Row(
          children: [
            CachedNetworkImage(
              imageUrl: currentuser.imageUrl,
              imageBuilder: (context, imageProvider) {
                return Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: imageProvider, fit: BoxFit.cover)),
                );
              },
            ),
            const SizedBox(
              width: 8.0,
            ),
            const Expanded(
                child: TextField(
              decoration:
                  InputDecoration.collapsed(hintText: "Whats on your mind"),
            ))
          ],
        ),
        const Divider(
          height: 10.0,
          thickness: 0.5,
        ),
        SizedBox(
          height: 40.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton.icon(
                onPressed: () {},
                icon: const Icon(
                  Icons.videocam,
                  color: Colors.red,
                ),
                label: const Text(
                  "Live",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              const VerticalDivider(
                width: 8.0,
              ),
              TextButton.icon(
                onPressed: () {},
                icon: const Icon(
                  Icons.photo_library,
                  color: Colors.green,
                ),
                label: const Text(
                  "Photo",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              const VerticalDivider(
                width: 8.0,
              ),
              TextButton.icon(
                onPressed: () {},
                icon: const Icon(
                  Icons.video_call,
                  color: Colors.purpleAccent,
                ),
                label: const Text(
                  "Room",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
