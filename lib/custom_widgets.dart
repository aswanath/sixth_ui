import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  String text;
  Color? color;
  double? size;
  TextAlign? align;
  FontWeight? weight;
  double? space;
  CustomText({Key? key,this.space,required this.text, this.color,this.size,this.align,this.weight}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,textAlign:align,maxLines: 1,overflow: TextOverflow.ellipsis,style: TextStyle(color: color??Colors.black,fontSize: size,fontWeight: weight,letterSpacing: space),);
  }
}

class AppBarCustom extends StatelessWidget implements PreferredSizeWidget{
  const AppBarCustom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.blue[900],
      actions: [
        Icon(Icons.search_outlined,size: 32,),
        SizedBox(width: 10,)
      ],
      centerTitle: true,
      title: CustomText(text: 'Catalogue',color: Colors.white,),
      elevation: 0,
      bottom: TabBar(
        indicator: UnderlineTabIndicator(borderSide: BorderSide(width: 5,color: Colors.white),insets: EdgeInsets.fromLTRB(3, 0, 3, 0),),
        indicatorSize: TabBarIndicatorSize.tab,
        tabs: [
          Column(children: [CustomText(text: 'Products',color: Colors.white,space: .5,size: 17,),SizedBox(height: 15,)],),
          Column(children: [CustomText(text: 'Categories',color: Colors.white,space: .5,size: 17,),SizedBox(height: 15,)],),
        ],
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(110);
}

class ListTileCustom extends StatelessWidget {
  String imageurl;
  String header;
  int? piece;
  int price;
  String? stock;
   ListTileCustom({Key? key,required this.header,required this.imageurl, this.piece,this.stock,required this.price}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(width: MediaQuery.of(context).size.width,height: 150,child: DecoratedBox(
          decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(6)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: Image.network(imageurl,width:90,height: 80,fit: BoxFit.fill,),),
                        SizedBox(width: 10,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 183,child: CustomText(text: header,size: 16,space: .3,)),
                            CustomText(text: '${piece??1} piece',color: Colors.grey[700],size: 13,),
                            SizedBox(height: 3,),
                            CustomText(text: '₹$price',size: 15,weight: FontWeight.w500,),
                            SizedBox(height: 4,),
                            CustomText(text: stock??'In stock',color: Colors.green[600],weight: FontWeight.w500,)
                          ],
                        )
                      ],
                    ),
                    SizedBox(width: 4,),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(25, 0, 0, 0),
                          child: Icon(Icons.more_vert,color: Colors.grey[700],),
                        ),
                        SizedBox(height: 26,),
                        Switch(value: true, onChanged: (val){},activeColor: Colors.blue[900],inactiveTrackColor: Colors.blue[50],)
                      ],
                    ),
                  ],
                ),
                SizedBox(width: MediaQuery.of(context).size.width,height: 1,child: DecoratedBox(decoration: BoxDecoration(color: Colors.grey[400]),),),
                Padding(
                  padding: const EdgeInsets.fromLTRB(100, 11, 0, 0),
                  child: Row(
                    children: [
                      Icon(Icons.share_outlined),
                      SizedBox(width: 7,),
                      CustomText(text: 'Share Product',space: .5,size: 15,),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),),
        SizedBox(height: 15,)
      ],
    );
  }
}

