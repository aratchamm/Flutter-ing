import 'package:flutter/material.dart';

class CardSocialImage extends StatelessWidget {
  final String accountName;
  final String textContent;
  final String timePost;
  final String titleText;
  final String imagePath;
  final String imageAccount;

  CardSocialImage({
    required this.accountName,
    required this.textContent,
    required this.timePost,
    required this.titleText,
    required this.imagePath,
    required this.imageAccount,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        color: Color.fromARGB(255, 255, 255, 255),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: CircleAvatar(
                          backgroundImage: AssetImage(imageAccount),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            accountName.toUpperCase(),
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            timePost.toUpperCase(),
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Image(
                  image: AssetImage
                  (imagePath),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    titleText.toUpperCase(),
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Text(
                    textContent.toUpperCase(),
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    icon: Image.asset('assets/images/icons/like.png'),
                    onPressed: () {},
                    iconSize: 20,
                  ),
                  IconButton(
                    icon: Image.asset('assets/images/icons/comment.png'),
                    onPressed: () {},
                    iconSize: 20,
                  ),
                  IconButton(
                    icon: Image.asset('assets/images/icons/share.png'),
                    onPressed: () {},
                    iconSize: 20,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CardSocialText extends StatelessWidget {
  final String accountName;
  final String textContent;
  final String timePost;
  final String imageAccount;

  CardSocialText({
    required this.accountName,
    required this.textContent,
    required this.timePost,
    required this.imageAccount,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        color: Color.fromARGB(255, 255, 255, 255),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: CircleAvatar(
                          backgroundImage: AssetImage(imageAccount),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            accountName.toUpperCase(),
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            timePost.toUpperCase(),
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    textContent.toUpperCase(),
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    icon: Image.asset('assets/images/icons/like.png'),
                    onPressed: () {},
                    iconSize: 20,
                  ),
                  IconButton(
                    icon: Image.asset('assets/images/icons/comment.png'),
                    onPressed: () {},
                    iconSize: 20,
                  ),
                  IconButton(
                    icon: Image.asset('assets/images/icons/share.png'),
                    onPressed: () {},
                    iconSize: 20,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
