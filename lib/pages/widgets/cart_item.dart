import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CartItem extends StatefulWidget {
  final String? image;
  final String? title;
  final String? subtitle;
  final String? price;
  final int? qty;

  const CartItem({
    Key? key,
    this.image,
    this.title,
    this.subtitle,
    this.price,
    this.qty,
  }) : super(key: key);

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  late int quantity;

  @override
  void initState() {
    super.initState();
    quantity = widget.qty!;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset("${widget.image}", width: 80),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${widget.title}",
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "${widget.subtitle}",
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                SizedBox(
                  width: 80,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          setState(() {
                            if (quantity > 1) {
                              quantity--;
                            }
                          });
                        },
                        splashRadius: 20,
                        constraints: const BoxConstraints(
                          minWidth: 0,
                          minHeight: 0,
                        ),
                        padding: const EdgeInsets.all(0),
                        icon: Image.asset("images/min_icon.png", width: 22),
                      ),
                      Text(
                        "$quantity",
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            quantity++;
                          });
                        },
                        splashRadius: 20,
                        constraints: const BoxConstraints(
                          minWidth: 0,
                          minHeight: 0,
                        ),
                        padding: const EdgeInsets.all(0),
                        icon: Image.asset("images/plus_icon.png", width: 22),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Text(
                    "${widget.price}",
                    textAlign: TextAlign.right,
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
