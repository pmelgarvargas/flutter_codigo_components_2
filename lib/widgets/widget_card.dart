import 'package:flutter/material.dart';

class WidgetCard extends StatefulWidget {
  String imagen;
  String tipo;
  bool concolor = false;

  WidgetCard(
      {required this.imagen, required this.tipo, required this.concolor});

  @override
  State<WidgetCard> createState() => _WidgetCardState();
}

class _WidgetCardState extends State<WidgetCard> {
  String estado = "prender";

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250.0,
      child: Card(
        color:
            widget.concolor ? Colors.purple[100] : Colors.white.withOpacity(0.95),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(7.0),
          side: BorderSide(
            width: 1.0,
            color: Colors.black87.withOpacity(0.2),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.network(
                    widget.imagen,
                    width: 20.0,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(
                    width: 7.0,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "${widget.tipo} ending in 1234 ",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 10.0,
                        ),
                      ),
                      Text(
                        "Expiry 06/2024",
                        style: TextStyle(
                          fontSize: 10.0,
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "Set as default Edit",
                        style: TextStyle(
                          fontSize: 10.0,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                width: 20.0,
                height: 20.0,
                child: Transform.scale(
                  alignment: Alignment.topCenter,
                  scale: 0.7,
                  child: Checkbox(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    value: widget.concolor,
                    onChanged: (value) {
                      setState(() { });
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
