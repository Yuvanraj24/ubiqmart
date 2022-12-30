import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  var textsty = TextStyle(
      fontSize: 23.sp,
      fontWeight: FontWeight.bold,
      fontStyle: FontStyle.normal,
  );

  int index = 0;

  bool switchButtonState = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white30,
      padding: EdgeInsets.only(left: 25,right: 25),
      child: Column(
          children: [
            SizedBox(height: 25.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                    style: TextButton.styleFrom(
                        textStyle: textsty,
                      foregroundColor: index==0?Colors.green:Colors.black38,
                    ),
                    onPressed: (){
                      setState(() {
                        index = 0;
                      });
                    }, child: Text("Items")),
                SizedBox(width: 86.w),
                TextButton(
                    style: TextButton.styleFrom(
                      textStyle: textsty,

                        fixedSize: Size(100, 20),
                        foregroundColor: index==1?Colors.green:Colors.black38,
                    ),
                    onPressed: (){
                      setState(() {
                        index = 1;
                      });
                    }, child: Text("Store"))
              ],
            ),

            SizedBox(height: 25.h),

            Container(
              width: 260.w,
              height: 35.w,
                child: TextFormField(
                  decoration:  InputDecoration(
                    labelText: "Search",
                    prefixIcon: Icon(Icons.search),
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.black12,
                            width: 1.12.w)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.black,
                            width: 1.12.w)),
                    // disabledBorder: UnderlineInputBorder(
                    //     borderSide: BorderSide(color:HexColor('#0B0B0B'))
                    //   ),
                  ),

            )),
            index == 0?
            SizedBox(height: 25.h):
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("List"),
                Switch(
                  inactiveThumbColor: Colors.white54,
                  activeColor: Colors.green,
                    value: switchButtonState,
                    onChanged: (val){
                    setState(() {
                      switchButtonState = val;
                    });
                }),
                Text("Map"),
              ],
            ),
            index==0?
            Expanded(
              child: GridView.builder(
                itemCount: 12,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3),
                itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(2.5),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(2),
                          border: Border.all(color: Colors.black38)
                        ),
                        width: 30.w,
                        height: 60.w,
                        child: Image.network("https://images-static.nykaa.com/media/catalog/product/5/7/5720c8f8901277018427_apr__1_.png",fit: BoxFit.fill,),
                      ),
                    );
                  },),
            ):
            Expanded(
              child: GridView.builder(
                itemCount: 12,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(2.5),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(2),
                          border: Border.all(color: Colors.black38)
                      ),
                      width: 30.w,
                      height: 60.w,
                      child: Image.network("https://img.freepik.com/premium-photo/pretty-girl-shop-selecting-clean-water_255667-20526.jpg?w=2000",fit: BoxFit.fill,),
                    ),
                  );
                },),
            )
          ],
        ),
    );

  }
}
