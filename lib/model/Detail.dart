import 'package:flutter/material.dart';
import 'package:myapp/model/destination.dart';


class Detail extends StatefulWidget {
  final Destination destination;
  Detail({super.key, required this.destination});

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(widget.destination.city ?? ''), 
      ),
      body: Hero(
        tag: widget.destination.imageUrl ?? '',
        child: Column(
          children: [
            Image.network(widget.destination.imageUrl ?? ''),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(widget.destination.city ?? '', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(widget.destination.description ?? ''),
            ),
          ],
        ),
      ),
    );
  }
}