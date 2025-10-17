import 'package:flutter/material.dart';
import 'package:timeago/timeago.dart' as timeago;

import '../../../feeds/add_feed/presentation/pages/add_feeds_screen.dart';
import '../../../feeds/my_feeds/presentation/pages/my_feeds_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 12),
            const _TopBar(),
            const SizedBox(height: 32),
            const _ChipsRow(),
            const SizedBox(height: 22),
            const Expanded(child: _FeedList()),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => AddFeedScreen()));
        },
        backgroundColor: const Color(0xFFC70000),
        shape: CircleBorder(),
        child: const Icon(Icons.add, size: 28),
      ),
    );
  }
}

class _TopBar extends StatelessWidget {
  const _TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('Hello Maria', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700)),
                SizedBox(height: 6),
                Text('Welcome back to Section', style: TextStyle(fontSize: 12, color: Colors.white70)),
              ],
            ),
          ),
          CircleAvatar(
            radius: 20,
            child: IconButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyFeedsScreen()));
            },
                icon: const Icon(Icons.person)),
            // backgroundImage: AssetImage('assets/profile_avatar.png'),
          )
        ],
      ),
    );
  }
}

class _ChipsRow extends StatelessWidget {
  const _ChipsRow({super.key});

  Widget _chip(String label, {bool selected = false}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
      margin: const EdgeInsets.only(right: 8),
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.white24),
      ),
      child: Text(label, style: const TextStyle(fontSize:12)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 44,
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        scrollDirection: Axis.horizontal,
        children: [
          _chip('ARTIFICIAL  INTELLIGENCE', selected: true),
          _chip('LINGUISTICS'),
          _chip('SOCIAL STUDIES'),
          _chip('PHYSICS'),
          _chip('ECONOMICS'),
          _chip('LITERATURE'),
          _chip('PHYSICAL EDUCATION'),
          _chip('SOCIOLOGY'),
          _chip('BIOLOGY'),
          _chip('IT'),
          _chip('HUMANITIES'),
          _chip('CHEMISTRY'),
          _chip('GEOGRAPHY'),
          _chip('BUSINESS'),
        ],
      ),
    );
  }
}

class _FeedList extends StatelessWidget {
  const _FeedList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 18),
          child: _FeedCard(
            authorName: 'Frijo',
            timeAgo: timeago.format(DateTime.parse("2024-06-12T10:48:48.494052Z")),
            imageProvider: const NetworkImage('https://i.ibb.co/wrzL7vr/Screenshot-2024-11-04-at-2-43-45-PM.png'),
            description:
            'POLITICAL SOCIOLOGY',
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 18),
          child: _FeedCard(
            authorName: 'Frijo',
            timeAgo: timeago.format(DateTime.parse("2024-06-12T10:46:15.817244Z")),
            imageProvider: const NetworkImage('https://i.ibb.co/wrzL7vr/Screenshot-2024-11-04-at-2-43-45-PM.png'),
            description:
            "GENDER AND SOCIETY",
          ),
        ),Padding(
          padding: const EdgeInsets.only(bottom: 18),
          child: _FeedCard(
            authorName: 'Frijo',
            timeAgo: '5 days ago',
            imageProvider: const NetworkImage('https://i.ibb.co/wrzL7vr/Screenshot-2024-11-04-at-2-43-45-PM.png'),
            description:
            "LITERATURE\r\nBUSINESS\r\nDEVELOPMENT ASSOCIATE",
          ),
        )
      ],
    );
    // return ListView.builder(
    //   padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
    //   itemCount: 4,
    //   itemBuilder: (context, index) {
    //     final isFirst = index % 2 == 0;
    //     return Padding(
    //       padding: const EdgeInsets.only(bottom: 18),
    //       child: _FeedCard(
    //         authorName: isFirst ? 'Anagha Krishna' : 'Gokul Krishna',
    //         timeAgo: '5 days ago',
    //         // Replace with: Image.file(File('/mnt/data/fb7edbb6-9cf2-446b-b39b-0d21b23950ae.png'))
    //         // or use AssetImage('assets/teacher1.png') after adding the image to pubspec.yaml
    //         imageProvider: const AssetImage('assets/teacher_placeholder.png'),
    //         description:
    //         'Lorem ipsum dolor sit amet consectetur. Leo ac lorem faucib us facilisis tellus. At vitae dis commodo nunc sollicitudin elementum suspendisse...',
    //       ),
    //     );
    //   },
    // );
  }
}

class _FeedCard extends StatelessWidget {
  final String authorName;
  final String timeAgo;
  final ImageProvider imageProvider;
  final String description;

  const _FeedCard({
    required this.authorName,
    required this.timeAgo,
    required this.imageProvider,
    required this.description,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            CircleAvatar(radius: 18, backgroundImage: imageProvider),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(authorName, style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 13)),
                  const SizedBox(height: 2),
                  Text(timeAgo, style: const TextStyle(fontSize: 10, color: Colors.white60)),
                ],
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_horiz),
              color: Colors.white70,
            ),
          ],
        ),
        const SizedBox(height: 12),
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Stack(
            alignment: Alignment.center,
            children: [
              AspectRatio(
                aspectRatio: 16 / 9,
                child: Image(
                  image: imageProvider,
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ),
              Container(
                width: 56,
                height: 56,
                decoration: BoxDecoration(
                  color: Colors.black45,
                  shape: BoxShape.circle,
                ),
                child: const Icon(Icons.play_arrow, size: 36, color: Colors.white),
              ),
            ],
          ),
        ),
        const SizedBox(height: 12),
        Text(
          description,
          style: const TextStyle(color: Colors.white70, fontSize: 12.5, height: 1.4),
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}
