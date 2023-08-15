class Post {
  final String profile;
  final String userName;
  final String postTime;
  final String caption;
  final String photoUrl;
  final String like;
  final String comment;
  final String share;
  //constructor
  Post({
    required this.profile,
    required this.userName,
    required this.postTime,
    required this.caption,
    required this.photoUrl,
    required this.like,
    required this.comment,
    required this.share,
  });
}

//make list of post
var listPosts = [
  //Post(Profile,NameUser, PostTime,Captions, PhotoUrl,Like,Comment,Share);
  Post(
      profile:
          "https://e5fodz76tgp.exactdn.com/wp-content/uploads/2023/05/Dasha-Taran-Instagram-Model-Biography-Age-and-Boyfriend.jpg",
      userName: "",
      postTime: "",
      caption: "",
      photoUrl:
          "https://e5fodz76tgp.exactdn.com/wp-content/uploads/2023/05/Dasha-Taran-Instagram-Model-Biography-Age-and-Boyfriend.jpg",
      like: "",
      comment: "",
      share: ""),
  //
  Post(
    profile:
        "https://image.lexica.art/full_jpg/00ea3399-b52e-4268-920b-6b5b9d243ae2",
    userName: "Doctor Strange",
    postTime: "just Now",
    caption:
        "Hello I'm Doctor Strange s simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. ",
    photoUrl:
        "https://image.lexica.art/full_jpg/3ee7aa2e-d7e1-4705-b86a-c6192b1742fd",
    like: "22k",
    comment: "10k",
    share: "11k",
  ),
  //
  Post(
    profile:
        "https://image.lexica.art/md2/6795a4c3-912e-41ab-841d-9537cafd0253",
    userName: "Super Man",
    postTime: "1 day ago",
    caption: "Hello I'm Super Man",
    photoUrl:
        "https://image.lexica.art/full_jpg/4a22aadd-55f5-49bf-a7b3-70e35b799cbd",
    like: "20k",
    comment: "15k",
    share: "10k",
  ),
  //
  Post(
    profile:
        "https://image.lexica.art/full_jpg/42d56900-0cb7-4a15-825e-1735bf0f203d",
    userName: "Optimus Prime",
    postTime: "2 day ago",
    caption: "Hello I'm Optimus Prime ",
    photoUrl:
        "https://cdn.vox-cdn.com/thumbor/oylb3MGb1jQk3LOP2N3c4eaW-dg=/1400x1400/filters:format(jpeg)/cdn.vox-cdn.com/uploads/chorus_asset/file/24390847/last_knight_optimus.jpeg",
    like: "30k",
    comment: "25k",
    share: "16k",
  ),
  //
  Post(
    profile:
        "https://image.lexica.art/full_jpg/f15acad1-9963-4b30-b404-e3f50144c936",
    userName: "Kri Sna",
    postTime: "4 day ago",
    caption: "Hello I'm Kri Sna",
    photoUrl:
        "https://image.lexica.art/full_jpg/f15acad1-9963-4b30-b404-e3f50144c936",
    like: "40k",
    comment: "27k",
    share: "19k",
  ),
  //
  Post(
    profile:
        "https://image.lexica.art/full_jpg/1fd72dcb-b839-46c5-ad3d-cfe17fe742c5",
    userName: "Iron Man",
    postTime: "1 Month ago",
    caption: "Hello I'm Iron Man",
    photoUrl:
        "https://image.lexica.art/full_jpg/2fad791d-d96b-4ea9-93aa-22f3f49aaa7a",
    like: "20k",
    comment: "13k",
    share: "19",
  ),
];
