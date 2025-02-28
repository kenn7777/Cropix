

import 'package:cropix/components/postfield.dart';
import 'package:cropix/firebase/provider.dart';
import 'package:cropix/models/post.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';


class Community extends StatefulWidget {
  const Community({super.key});

  @override
  State<Community> createState() => _CommunityState();
}

class _CommunityState extends State<Community> {


  //providers
  late final listeningprovider = Provider.of<FirebaseProvider>(context);
  late final firebaseprovider = Provider.of<FirebaseProvider>(context, listen: false);


  //text controllers
  final postcontroller = TextEditingController();



  // on start up
  @override
  void initState() {

    super.initState();

    loadallposts();
  }

   Future<void> loadallposts() async {
    await firebaseprovider.loadallposts();
   }





  // postfield
  void postfield() {
    showDialog(context: context, builder: (context) =>
        PostField(
          textController: postcontroller,
          hintText: 'Share your farming ideas',
          onPressed: ()  async {
            await createpost(postcontroller.text);
          },
          onPressedText: 'Post',
        )
    );
  }


  //user create a post
  Future<void> createpost(String post) async {
    await firebaseprovider.createpost(post);
  }


















  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      //drawer: DrawerSide(),
      appBar: AppBar(
        title: Text('Community',
          style: GoogleFonts.dmSerifText(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: const Color(0xFF3D550C),
          ),
        ),
        backgroundColor: Colors.grey[100],
      ),




















      //floating action  +
      floatingActionButton: FloatingActionButton(

        onPressed: postfield,
        child: const Icon(Icons.add),

        backgroundColor: Color(0xFF3D550C),

      ),

      //list of all posts
      body: _buildpostlist(listeningprovider.allposts),



    );
  }


  Widget _buildpostlist(List<Post> posts) {
    return posts.isEmpty
        ?
    const Center(child: Text('No Postttttttttttt'),)
        :
    ListView.builder(
      itemCount: posts.length,
      itemBuilder: (context, index) {
        //get each post
        final post = posts[index];

        //return post
        return Container(
          child: Text(post.post),
        );
      },
    );
  }




}


 //review this code why the list of post not displaying