import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:soraya/profile/mybag.dart';
import 'package:soraya/profile/mywishlist.dart';


class profile extends StatelessWidget{
  const profile({super.key});
  
  @override
  Widget build (BuildContext context){
    final Color primaryColor = Theme.of(context).colorScheme.primary;
    final Color secondaryColor = Theme.of(context).colorScheme.secondary;

    return Scaffold(
      appBar: AppBar(
        title: Text('Soraya',
        style: GoogleFonts.kalnia(
          textStyle:TextStyle(fontSize: 20,
          fontWeight: FontWeight.w500,
          color: Colors.white),
        ),
        ),
        backgroundColor:primaryColor,
         actions: [
          IconButton(
            icon: Icon(Icons.search, size: 20, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.favorite, size: 20, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.shopping_bag, size: 20, color: Colors.white),
            onPressed: () {},
          ),
        ], 
      ),
       body: SizedBox.expand(
  child: Container(
    color: Colors.pink[50],
    child: profilePage(), // Place the profilePage widget inside the Container
  ),
),

    );
  }
  }

  class profilePage extends StatefulWidget{
    @override
  State<profilePage> createState() => _profilePageState();
  }

  class _profilePageState extends State<profilePage> {

    final List<String> Info =['Personal Details','My Orders','My Wishlist','Shipping Address','My Card','Settings'];
    final List<Widget> pages = [profile(), MyBag(), MyWishlist(), profile(), profile(), profile(),
];
    @override
    Widget build(BuildContext context){
      final Color primaryColor = Theme.of(context).colorScheme.primary;
    final Color secondaryColor = Theme.of(context).colorScheme.secondary;

      return Column(
          children: [
            SizedBox(height: 20,),
            Container(
              child: Text('My Profile',style: TextStyle(
              fontSize: 33,
              fontWeight: FontWeight.w600,
              color: primaryColor,
            ),
            ),),
            SizedBox(height: 35,),
            Padding(
              padding: const EdgeInsets.only(right: 18.0,left: 18.0),
              child: Container(
                height: 80, 
                decoration: BoxDecoration(
                  border: Border.all(
                    color: secondaryColor,
                    width: 2
                  ),
                  borderRadius: BorderRadius.circular(22.0),
                  
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: CircleAvatar(
                        radius: 35,
                        backgroundImage: NetworkImage('https://as1.ftcdn.net/v2/jpg/01/16/24/44/1000_F_116244459_pywR1e0T3H7FPk3LTMjG6jsL3UchDpht.jpg',
                          ),
                        ),
                     ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        
                          Container(
                            margin: const EdgeInsets.only(bottom: 13),
                            child: Text('  Shreya Khandelwal',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),)
                          ),
                        Container(
                          child: Text('Username',style: TextStyle(fontSize:17 ),),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),

            SizedBox(height: 50,),
            Expanded(
              child: Container(
                child: ListView.builder(
                // scrollDirection: Axis.horizontal,
                itemCount: Info.length,
                itemBuilder: (context, index) {
                  return Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                         children: [Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [primaryColor, secondaryColor],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(17.0),
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(300, 47),
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(22.0),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => pages[index]),
                  );
                },
                child: Text(
                  Info[index],
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),

                          
                             SizedBox(height: 5),             
                         ],
                       ),
                     );
                },
                          ),
              ),
            ),
          ],
        );
      
    }
  }