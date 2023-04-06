import 'package:flutter/material.dart';

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
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  )
                ]),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: SizedBox(
                height: 150,
                child: Row(
                  children: [
                    SizedBox(
                      width: 85,
                      child: Column(
                        children: [
                          Stack(
                            alignment: AlignmentDirectional.bottomEnd,
                            children: [
                              CircleAvatar(
                                radius: 35,
                                backgroundImage: NetworkImage(
                                    'https://th.bing.com/th/id/R.962d893a6217d028d3469e1ff8dd317b?rik=8FC5LIbL0tBVAA&riu=http%3a%2f%2f4.bp.blogspot.com%2f-V_Avr99j_8g%2fTza6wI-croI%2fAAAAAAAAJns%2fY83HzC5ImHE%2fs1600%2fDaisy%2bflower%2bwallpapers.%2b(2).jpg&ehk=jNT7%2fm5ZMQ6N0f9s4%2bn88pjYtuxDqXI0BbOPez5ISHc%3d&risl=&pid=ImgRaw&r=0'),
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
                              'asdf asdf asdf asdfasdf asdfasdf asdfasdf asdf',
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
                    ),
                    SizedBox(
                      width: 85,
                      child: Column(
                        children: [
                          Stack(
                            alignment: AlignmentDirectional.bottomEnd,
                            children: [
                              CircleAvatar(
                                radius: 35,
                                backgroundImage: NetworkImage(
                                    'https://th.bing.com/th/id/R.962d893a6217d028d3469e1ff8dd317b?rik=8FC5LIbL0tBVAA&riu=http%3a%2f%2f4.bp.blogspot.com%2f-V_Avr99j_8g%2fTza6wI-croI%2fAAAAAAAAJns%2fY83HzC5ImHE%2fs1600%2fDaisy%2bflower%2bwallpapers.%2b(2).jpg&ehk=jNT7%2fm5ZMQ6N0f9s4%2bn88pjYtuxDqXI0BbOPez5ISHc%3d&risl=&pid=ImgRaw&r=0'),
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
                              'asdf asdf asdf asdfasdf asdfasdf asdfasdf asdf',
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
                    ),
                    SizedBox(
                      width: 85,
                      child: Column(
                        children: [
                          Stack(
                            alignment: AlignmentDirectional.bottomEnd,
                            children: [
                              CircleAvatar(
                                radius: 35,
                                backgroundImage: NetworkImage(
                                    'https://th.bing.com/th/id/R.962d893a6217d028d3469e1ff8dd317b?rik=8FC5LIbL0tBVAA&riu=http%3a%2f%2f4.bp.blogspot.com%2f-V_Avr99j_8g%2fTza6wI-croI%2fAAAAAAAAJns%2fY83HzC5ImHE%2fs1600%2fDaisy%2bflower%2bwallpapers.%2b(2).jpg&ehk=jNT7%2fm5ZMQ6N0f9s4%2bn88pjYtuxDqXI0BbOPez5ISHc%3d&risl=&pid=ImgRaw&r=0'),
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
                              'asdf asdf asdf asdfasdf asdfasdf asdfasdf asdf',
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
                    ),
                    SizedBox(
                      width: 85,
                      child: Column(
                        children: [
                          Stack(
                            alignment: AlignmentDirectional.bottomEnd,
                            children: [
                              CircleAvatar(
                                radius: 35,
                                backgroundImage: NetworkImage(
                                    'https://th.bing.com/th/id/R.962d893a6217d028d3469e1ff8dd317b?rik=8FC5LIbL0tBVAA&riu=http%3a%2f%2f4.bp.blogspot.com%2f-V_Avr99j_8g%2fTza6wI-croI%2fAAAAAAAAJns%2fY83HzC5ImHE%2fs1600%2fDaisy%2bflower%2bwallpapers.%2b(2).jpg&ehk=jNT7%2fm5ZMQ6N0f9s4%2bn88pjYtuxDqXI0BbOPez5ISHc%3d&risl=&pid=ImgRaw&r=0'),
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
                              'asdf asdf asdf asdfasdf asdfasdf asdfasdf asdf',
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
                    ),
                    SizedBox(
                      width: 85,
                      child: Column(
                        children: [
                          Stack(
                            alignment: AlignmentDirectional.bottomEnd,
                            children: [
                              CircleAvatar(
                                radius: 35,
                                backgroundImage: NetworkImage(
                                    'https://th.bing.com/th/id/R.962d893a6217d028d3469e1ff8dd317b?rik=8FC5LIbL0tBVAA&riu=http%3a%2f%2f4.bp.blogspot.com%2f-V_Avr99j_8g%2fTza6wI-croI%2fAAAAAAAAJns%2fY83HzC5ImHE%2fs1600%2fDaisy%2bflower%2bwallpapers.%2b(2).jpg&ehk=jNT7%2fm5ZMQ6N0f9s4%2bn88pjYtuxDqXI0BbOPez5ISHc%3d&risl=&pid=ImgRaw&r=0'),
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
                              'asdf asdf asdf asdfasdf asdfasdf asdfasdf asdf',
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
                    ),
                    SizedBox(
                      width: 85,
                      child: Column(
                        children: [
                          Stack(
                            alignment: AlignmentDirectional.bottomEnd,
                            children: [
                              CircleAvatar(
                                radius: 35,
                                backgroundImage: NetworkImage(
                                    'https://th.bing.com/th/id/R.962d893a6217d028d3469e1ff8dd317b?rik=8FC5LIbL0tBVAA&riu=http%3a%2f%2f4.bp.blogspot.com%2f-V_Avr99j_8g%2fTza6wI-croI%2fAAAAAAAAJns%2fY83HzC5ImHE%2fs1600%2fDaisy%2bflower%2bwallpapers.%2b(2).jpg&ehk=jNT7%2fm5ZMQ6N0f9s4%2bn88pjYtuxDqXI0BbOPez5ISHc%3d&risl=&pid=ImgRaw&r=0'),
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
                              'asdf asdf asdf asdfasdf asdfasdf asdfasdf asdf',
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
                    ),
                    SizedBox(
                      width: 85,
                      child: Column(
                        children: [
                          Stack(
                            alignment: AlignmentDirectional.bottomEnd,
                            children: [
                              CircleAvatar(
                                radius: 35,
                                backgroundImage: NetworkImage(
                                    'https://th.bing.com/th/id/R.962d893a6217d028d3469e1ff8dd317b?rik=8FC5LIbL0tBVAA&riu=http%3a%2f%2f4.bp.blogspot.com%2f-V_Avr99j_8g%2fTza6wI-croI%2fAAAAAAAAJns%2fY83HzC5ImHE%2fs1600%2fDaisy%2bflower%2bwallpapers.%2b(2).jpg&ehk=jNT7%2fm5ZMQ6N0f9s4%2bn88pjYtuxDqXI0BbOPez5ISHc%3d&risl=&pid=ImgRaw&r=0'),
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
                              'asdf asdf asdf asdfasdf asdfasdf asdfasdf asdf',
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
                    ),
                    SizedBox(
                      width: 85,
                      child: Column(
                        children: [
                          Stack(
                            alignment: AlignmentDirectional.bottomEnd,
                            children: [
                              CircleAvatar(
                                radius: 35,
                                backgroundImage: NetworkImage(
                                    'https://th.bing.com/th/id/R.962d893a6217d028d3469e1ff8dd317b?rik=8FC5LIbL0tBVAA&riu=http%3a%2f%2f4.bp.blogspot.com%2f-V_Avr99j_8g%2fTza6wI-croI%2fAAAAAAAAJns%2fY83HzC5ImHE%2fs1600%2fDaisy%2bflower%2bwallpapers.%2b(2).jpg&ehk=jNT7%2fm5ZMQ6N0f9s4%2bn88pjYtuxDqXI0BbOPez5ISHc%3d&risl=&pid=ImgRaw&r=0'),
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
                              'asdf asdf asdf asdfasdf asdfasdf asdfasdf asdf',
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
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
