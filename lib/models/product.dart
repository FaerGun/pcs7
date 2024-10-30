import 'package:flutter/material.dart';
import 'package:pks_pr7/data/elements.dart';

class ProductElementWidget extends StatefulWidget {
  final ProductElement data;

  const ProductElementWidget({
    super.key,
    required this.data,
  });

  @override
  State<ProductElementWidget> createState() => _ProductElementWidgetState();
}

class _ProductElementWidgetState extends State<ProductElementWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: Container(
        height: 136,
        decoration: BoxDecoration(
          border: Border.all(
            color: const Color(0xFFE0E0E0),
            width: 1,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  widget.data.title,
                  style: const TextStyle(
                    fontSize: 16,
                    overflow: TextOverflow.ellipsis,
                  ),
                  maxLines: 2,
                ),
              ),
              const Spacer(),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.data.term,
                        style: const TextStyle(
                            fontSize: 14, color: Color(0xFF939396)),
                      ),
                      Text(
                        '${widget.data.price.toString()}₽',
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if (!widget.data.isAdd) {
                          widget.data.isAdd = true;
                          cart.add(CartItem(item: widget.data));
                        }
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: widget.data.isAdd
                          ? Colors.white12
                          : const Color(0xFF1A6FEE),
                      minimumSize: const Size(96, 40),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: widget.data.isAdd
                        ? const Icon(
                            Icons.done,
                            color: Colors.black,
                          )
                        : const Text(
                            'Добавить',
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
