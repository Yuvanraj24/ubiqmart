import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  var head2 = TextStyle(
      fontSize: 18.sp,
      fontWeight: FontWeight.bold);
  var subHead = TextStyle(
      fontSize: 16.sp,
      fontWeight: FontWeight.normal);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white30,
      padding: EdgeInsets.only(left: 25.sp,right: 25.sp,top: 40.sp),
      child: Column(
        children: [
          Text("Loren Stores",style: TextStyle(
            color: Colors.blue,
            fontWeight: FontWeight.bold,
            fontSize: 26.sp
          ),),
          SizedBox(height: 10),
          Row(
            children: [
              Text("Item Name",style: head2,),
              Spacer(),
              Text("Qty",style: head2,),
              Spacer(),
              Text("Amount",style: head2,),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Text("Dove 72ml",style: subHead,),
              Spacer(),
              Text("1",style: subHead),
              Spacer(),
              Text("95.00",style: subHead),
            ],
          ),
          SizedBox(height: 10),
          Container(
            padding: EdgeInsets.only(left: 55,right: 5),
            height: 30.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              border: Border.all(color: Colors.black26)
            ),
            child: Row(
              children: [
                Text("Total",style: head2),
                Spacer(),
                Text("1",style: head2),
                Spacer(),
                Text("Rs.95.00",style: head2)
              ],
            ),
          ),
          SizedBox(height: 20.w),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    foregroundColor: Colors.white54
                  ),
                  onPressed: (){

              }, child: Text("Shop more")),
              SizedBox(width: 50.w),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                      foregroundColor: Colors.white54
                  ),
                  onPressed: (){}, child: Text("Check out"))
            ],
          )
        ],
      ),
    );
  }
}
