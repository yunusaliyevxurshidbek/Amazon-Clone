import 'package:amazon_clone/pages/signup_page.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'signin_page.dart';

class AmazonPage extends StatefulWidget {

  static const String id = 'AmazonPage';

  const AmazonPage({super.key});

  @override
  State<AmazonPage> createState() => _AmazonPageState();
}

class _AmazonPageState extends State<AmazonPage> {

  _callSignInPage(){
    Navigator.of(context).pushReplacementNamed(SignInPage.id);
  }

  _callSignUp(){
    Navigator.of(context).pushReplacementNamed(SignUpPage.id);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if(kDebugMode){
      print('debug mode');
    }
    if(kProfileMode){
      print('profile mode');
    }
    if(kReleaseMode){
      print('release mode');
    }


  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Color(0xFF018197),
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.white),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: [
            Container(
              width: 100,
              child: Image(
                image: AssetImage('assets/images/amazon_logo.png'),
              ),
            ),

            Row(
              children: [
                IconButton(
                  onPressed: (){

                  },
                  icon: Icon(Icons.mic,color: Colors.white,),
                ),
                IconButton(
                  onPressed: (){

                  },
                  icon: Icon(Icons.shopping_cart,color: Colors.white,),
                ),
              ],
            )

          ],
        )
      ),
      body: Container(
        color: Colors.grey[300],
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.only(left: 10,right: 10,bottom: 10),
              color:Color(0xFF018197),
              child: Container(
                height:50,
                padding: EdgeInsets.only(left: 10,right: 10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey,width: 1),
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'What are you looking for?',
                          border: InputBorder.none,
                          icon: Icon(Icons.search,color:Color(0xFF018197) ,),
                        ),
                      ),
                    ),
                    Icon(
                      Icons.camera_alt,color:Color(0xFF018197),
                    ),
                  ],
                ),

              ),
            ),

            Expanded(
              child: ListView(
                children: [

                  //Delivery:
                  Container(
                    height: 45,
                    color: Colors.blueGrey,
                    padding: EdgeInsets.only(left: 10,right: 10),
                    child: Row(

                      children: [
                        Icon(Icons.location_on,color: Colors.white,),
                        SizedBox(width: 5,),
                        Text('Delievery to Korea,Republic of',
                          style: TextStyle(color: Colors.white),),

                      ],
                    ),
                  ),

                  //banner:
                  Container(
                    height: 140,
                    color: Colors.white,
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            //color: Colors.red,
                            decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(70),
                                bottomRight: Radius.circular(70),

                              ),
                              image: DecorationImage(
                                image: AssetImage('assets/images/image_1.jpg'),
                                fit: BoxFit.cover,
                              ),
                            ),

                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(20),
                          width: 180,
                          child: Text('We ship 45 million products',
                            style: TextStyle(fontSize: 16),),
                        )
                      ],
                    ),
                  ),

                  //Login:
                  Container(
                    padding: EdgeInsets.only(left: 16,right: 16),
                    margin: EdgeInsets.only(top: 8),
                    height: 160,
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Sign in for the best experience',
                        style: TextStyle(color: Colors.black,fontSize: 18),),

                        SizedBox(height: 15,),

                        Container(
                          color: Colors.orange,
                          height: 50,
                          width: double.infinity,

                          child: Center(
                            child:
                              MaterialButton(
                                onPressed: (){
                                  _callSignInPage();
                                },
                                child: Text('Sign in',style:
                                  TextStyle(color: Colors.black,fontSize: 19),),

                              ),


                          ),


                        ),
                        SizedBox(height: 15 ,),

                        MaterialButton(
                          onPressed: (){
                            _callSignUp();
                          },
                          child:Text('Create an acount',style:
                          TextStyle(color:Colors.blueAccent,fontSize: 18),),
                        )






                      ],
                    ),

                  ),

                  //deal_of_day:
                  Container(
                    margin: EdgeInsets.only(top: 8),
                    padding: EdgeInsets.all(16),
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Deal of the Day',
                        style: TextStyle(color: Colors.black,fontSize:22 ),),

                        SizedBox(height: 16,),

                        Image(
                          width: double.infinity,
                          height: 240,
                          image: AssetImage('assets/images/item_7.jpg'),
                          fit: BoxFit.cover,
                        ),
                        SizedBox(height: 16,),

                        Text('Up to 31% off APC UPS Battery Back',
                        style: TextStyle(fontSize: 17),),
                        SizedBox(height: 6,),
                        Text('\$10.99-\$79.9',style: TextStyle(fontSize: 17),),
                      ],
                    ),
                  ),

                  //best_sellers:
                  Container(
                    margin: EdgeInsets.only(top: 8),
                    height: MediaQuery.of(context).size.width,
                    color: Colors.white,
                    padding: EdgeInsets.all(16),
                    child: Row(
                      children: [
                        //first_Row:
                        Expanded(
                          child: Container(
                            color: Colors.white, //--->background of shapes
                            child: Column(
                              children: [

                                Expanded(

                                  child: Container(
                                    color: Colors.yellowAccent,
                                    child: Image(
                                      image: AssetImage('assets/images/item_7.jpg'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 5,),

                                Expanded(
                                  child: Container(
                                    color: Colors.red,
                                    child: Image(
                                      image: AssetImage('assets/images/feed_1.jpg'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                //SizedBox(height: 8,width: 8,),
                              ],
                            ),
                          ),
                        ),

                        SizedBox(width: 5,),

                        //second_Row:
                        Expanded(
                          child: Container(
                            color: Colors.white, //--->background color of shapes
                            child: Column(
                              children: [
                                Expanded(
                                  child: Container(
                                    color: Colors.lightBlue,
                                    child: Image(
                                      image: AssetImage('assets/images/feed_4.jpg'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 5,),
                                Expanded(
                                  child: Container(
                                    color: Colors.black,
                                    child: Image(
                                      image:AssetImage('assets/images/item_2.jpg'),
                                      fit: BoxFit.cover,

                                    ),
                                  ),
                                ),
                                //SizedBox(height: 8,width: 8,),
                              ],
                            ),
                          ),
                        ),

                      ],
                    ),

                    
                  ),

                  //text_bottom:

                  Container(

                    margin: EdgeInsets.only(left: 16),
                    child: Text('Top products in Camera',
                    style: TextStyle(color: Colors.black,fontSize: 22),),

                  ),
                  
                  Container(
                    margin: EdgeInsets.only(top: 10),

                    child: Image(
                      width: double.infinity,
                      height: 280,
                      image: AssetImage('assets/images/item_7.jpg'),
                      //fit: BoxFit.cover,
                    ),

                  ),



                  // bottom_pictures:

                  Container(
                    height: MediaQuery.of(context).size.height,
                    color: Colors.white,
                    margin: EdgeInsets.only(top:0,left: 13,right: 13),
                    padding:EdgeInsets.all(5),

                    
                    child: Column(


                      children: [
                        Expanded(
                          child: Container(
                            color: Colors.white,
                            child: Row(

                              crossAxisAlignment: CrossAxisAlignment.start,

                              children: [

                                Expanded(
                                  child: Image(
                                    image: AssetImage('assets/images/item_3.jpg'),
                                    width: double.infinity,
                                  ),
                                ),

                                SizedBox(width: 5,),

                                Expanded(

                                  child: Image(
                                    image: AssetImage('assets/images/item_2.jpg'),
                                    width: double.infinity,

                                  ),
                                ),



                              ],
                            ),


                            
                          ),
                        ),
                      ],
                    ),
                    
                  ),


                ],
              ),
            ),
          ],
        ),


      ),
      drawer: Drawer(),
    );
  }
}
