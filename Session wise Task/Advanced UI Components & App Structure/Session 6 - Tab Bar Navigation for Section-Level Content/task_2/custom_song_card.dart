import 'package:flutter/material.dart';

class CustomSongCard extends StatefulWidget {
  final List<String> items;
  final IconData icon;

  const CustomSongCard({
    super.key,
    required this.items,
    required this.icon,
  });

  @override
  State<CustomSongCard> createState() => _CustomSongCardState();
}

class _CustomSongCardState extends State<CustomSongCard>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return ListView.separated(
      itemCount: widget.items.length,
      separatorBuilder: (_, __) => Divider(height: 1),
      itemBuilder: (context, index) {
        return ListTile(
          leading: Icon(widget.icon),
          title: Text(widget.items[index]),
        );
      },
    );
  }
}