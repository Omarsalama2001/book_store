import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:fruit_e_commerce/core/extensions/media_query_extension.dart';
import 'package:fruit_e_commerce/core/widgets/book_details_widgets/book_details_widget.dart';
import 'package:fruit_e_commerce/core/widgets/rating_bar_widget.dart';

class BookItemWidget extends StatelessWidget {
  const BookItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (_) =>  BookDetailsWidget()));
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(context.getHight(divide: 0.01)),
        ),
        height: context.getHight(divide: 0.26),
        child: Padding(
          padding: EdgeInsets.only(left:  context.getHight(divide: 0.01),right: context.getHight(divide: 0.01), top: context.getHight(divide: 0.01)),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
                height: context.getHight(divide: 0.18),
                width: context.getWidth(divide: 0.25),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(context.getHight(divide: 0.01))),
                    image: const DecorationImage(
                        image: CachedNetworkImageProvider(
                          'https://m.media-amazon.com/images/I/719fyFgdNJL._AC_UF1000,1000_QL80_.jpg',
                        ),
                        fit: BoxFit.cover))),
            SizedBox(
              height: context.getHight(divide: 0.02),
            ),
            Text(
                        "Hooked: How to think differentlijoijohuihiuhiuh ",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontSize: context.getHight(divide: 0.015), fontWeight: FontWeight.w800),
                      ),
            SizedBox(
              height: context.getHight(divide: 0.007),
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    "Nir Eyaloijojoij",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: context.getHight(divide: 0.016)),
                  ),
                ),
               const  CustomRatingWidget()
              ],
            )
          ]),
        ),
      ),
    );
  }
}