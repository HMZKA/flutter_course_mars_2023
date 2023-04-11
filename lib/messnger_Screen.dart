import 'package:flutter/material.dart';

import 'users.dart';

class MessngerScreen extends StatelessWidget {
  const MessngerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: const Icon(
            Icons.menu,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
        title: const Text('Chats'),
        actions: [
          CircleAvatar(
            backgroundColor: Colors.grey[850],
            child: IconButton(
              icon: const Icon(
                Icons.camera,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          CircleAvatar(
            backgroundColor: Colors.grey[850],
            child: IconButton(
              icon: const Icon(
                Icons.edit,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              InkWell(
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(25)),
                  padding: const EdgeInsets.all(9),
                  child: Row(children: const [
                    Icon(Icons.search_rounded),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Search',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    )
                  ]),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              SizedBox(
                height: 100,
                child: ListView.builder(
                  itemBuilder: (context, index) => buildProfile(index),
                  scrollDirection: Axis.horizontal,
                  itemCount: images.length,
                ),
              ),
              SizedBox(
                height: 25,
              ),
              ListView.separated(
                itemBuilder: (context, index) => buildChat(index),
                shrinkWrap: true,
                separatorBuilder: (context, index) => SizedBox(
                  height: 5,
                ),
                physics: NeverScrollableScrollPhysics(),
                itemCount: images.length,
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget buildProfile(index) {
  return SizedBox(
    width: 85,
    child: Column(
      children: [
        Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            CircleAvatar(
              radius: 35,
              backgroundImage: AssetImage(images[index]),
            ),
            CircleAvatar(
              radius: 8.5,
              backgroundColor: Colors.white,
            ),
            CircleAvatar(
              backgroundColor: Colors.green,
              radius: 7.5,
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 5),
          child: Text(
            names[index],
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                fontSize: 16,
                //   fontWeight: FontWeight.w500,
                color: Colors.white),
          ),
        )
      ],
    ),
  );
}

Widget buildChat(index) {
  return Row(
    children: [
      Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          CircleAvatar(
            radius: 35,
            backgroundImage: AssetImage(images[index]),
          ),
          CircleAvatar(
            backgroundColor: Colors.white,
            radius: 8.5,
          ),
          CircleAvatar(
            radius: 7.5,
            backgroundColor: Colors.green,
          )
        ],
      ),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              names[index],
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 7,
            ),
            Text(
              'Hi I\'m asdfg asfgfga asds asdfg asfgfga asds asdfg asfgfga asdsasdfg asfgfga asds asdfg asfgfga asds asdfg asfgfga asds',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ],
        ),
      ),
      Container(
        width: 8,
        height: 8,
        decoration: BoxDecoration(color: Colors.white, shape: BoxShape.circle),
      )
    ],
  );
}
