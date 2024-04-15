import 'package:flutter/material.dart';

class DummyDb {
  static const List<Map<String, dynamic>> moviePoster = [
    {
      "moviePoster":
          "https://m.media-amazon.com/images/M/MV5BMTkxY2QxYTctOTRlMC00ZGQxLTlmMGItM2RhNmJkMTE4M2FlXkEyXkFqcGdeQXVyMjkxNzQ1NDI@._V1_.jpg",
      "rating": "9.4",
      "like": "111.5K votes",
      "movieName": "Manjummel Boys"
    },
    {
      "moviePoster":
          "https://upload.wikimedia.org/wikipedia/en/c/c5/Premalu_film_poster.jpg",
      "rating": "9.2",
      "like": "87.7K votes",
      "movieName": "Premalu"
    },
    {
      "moviePoster":
          "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcTOiN4PwKPYauA7zQHsHFYKFSln8HwQjtqbGmzuQOb0KNXNH1yZ",
      "rating": "9",
      "like": "59K votes",
      "movieName": "Bramayugam"
    },
    {
      "moviePoster":
          "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSz-P-oSVZWOXvFcVcH-20c-EpeaVjSCkQg3DZh3IiZlxQMe0JX",
      "rating": "7.3",
      "like": "2K votes",
      "movieName": "Thankamani"
    },
    {
      "moviePoster":
          "https://assets-in.bmscdn.com/iedb/movies/images/mobile/thumbnail/xlarge/oru-sarkar-ulpannam-et00387147-1709553135.jpg",
      "rating": "9",
      "like": "195 votes",
      "movieName": "Oru Sarkar Ulpannam"
    },
    {
      "moviePoster":
          "https://upload.wikimedia.org/wikipedia/en/5/52/Dune_Part_Two_poster.jpeg",
      "rating": "9.1",
      "like": "21.5K votes",
      "movieName": "Dune:Part 2"
    },
    {
      "moviePoster":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTKIcMAn7rZvLvhZ1V6TH7xavjWfHIJ96_2Mg&s",
      "rating": "9.6",
      "like": "140 votes",
      "movieName": "Kuruvi paapa"
    },
  ];

  static const List<Map<String, dynamic>> settingsTab = [
    {
      "icon1": Icons.shopping_cart_checkout_outlined,
      "title": "Your Orders",
      "subTitle": "View all your bookins & purchases",
    },
    {
      "icon1": Icons.settings_system_daydream_sharp,
      "title": "Stream Library",
      "subTitle": "Rented & Purchased Movies",
    },
    {
      "icon1": Icons.card_membership_sharp,
      "title": "Play Credit Card",
      "subTitle": "View your Play Credit Card details and offers",
    },
    {
      "icon1": Icons.help_outline,
      "title": "Help Centre",
      "subTitle": "Need help or have Questions?",
    },
    {
      "icon1": Icons.settings,
      "title": "Accounts & Settings",
      "subTitle": "Location,Payments,Permissions & More",
    },
    {
      "icon1": Icons.card_giftcard_rounded,
      "title": "Rewards",
      "subTitle": "View your rewards & unlock new ones",
    },
    {
      "icon1": Icons.offline_share_outlined,
      "title": "Offers",
      "subTitle": "",
    },
    {
      "icon1": Icons.sim_card_outlined,
      "title": "Gift Cards",
      "subTitle": "",
    },
    {
      "icon1": Icons.fastfood_sharp,
      "title": "Food & Beverages",
      "subTitle": "",
    },
    {
      "icon1": Icons.video_chat_rounded,
      "title": "List your Show",
      "subTitle": "Got an event? Partner with us",
    },
  ];
  static const List<Map<String, dynamic>> differentItemsBar = [
    {
      "image":
          "https://images.pexels.com/photos/13940007/pexels-photo-13940007.jpeg?auto=compress&cs=tinysrgb&w=600",
      "text1": "Sports",
      "text2": ""
    },
    {
      "image":
          "https://images.pexels.com/photos/555345/pexels-photo-555345.jpeg?auto=compress&cs=tinysrgb&w=600",
      "text1": "Music",
      "text2": "Shows"
    },
    {
      "image":
          "https://media.istockphoto.com/id/1142642249/photo/grandfather-and-grandson-amusement-park-fun.jpg?s=2048x2048&w=is&k=20&c=qxF4sREC9TTj5L5PPpDRBm8ERW7IHInE2WrYNU9qrJc=",
      "text1": "Amusement",
      "text2": "Parks"
    },
    {
      "image":
          "https://images.pexels.com/photos/3183197/pexels-photo-3183197.jpeg?auto=compress&cs=tinysrgb&w=600",
      "text1": "Workshops",
      "text2": ""
    },
    {
      "image":
          "https://images.pexels.com/photos/476/man-person-red-white.jpg?auto=compress&cs=tinysrgb&w=600",
      "text1": "Comdey",
      "text2": "Shows"
    },
    {
      "image":
          "https://images.pexels.com/photos/15387083/pexels-photo-15387083/free-photo-of-letters-on-dice.jpeg?auto=compress&cs=tinysrgb&w=600",
      "text1": "All",
      "text2": "Experiences"
    },
  ];
//events screen third programs tab
  static const List<Map<String, dynamic>> thirdTab = [
    {
      "image":
          "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC:w-400.0,h-660.0,cm-pad_resize,bg-000000,fo-top:l-text,ie-U2F0LCAxNiBNYXIgb253YXJkcw%3D%3D,fs-29,co-FFFFFF,ly-612,lx-24,pa-8_0_0_0,l-end/et00355125-tkflfwazns-portrait.jpg",
      "date": "Sat, 16 Mar onwards",
      "text1": "Kisi Ko Batana Mat Ft.",
      "text2": "Anubhav Singh Bassi",
      "text3": "SITARA Auditorium: Coi..",
      "rate": "Rs.499 onwards",
    },
    {
      "image":
          "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC:w-400.0,h-660.0,cm-pad_resize,bg-000000,fo-top:l-text,ie-U2F0LCAxNiBNYXI%3D,fs-29,co-FFFFFF,ly-612,lx-24,pa-8_0_0_0,l-end/et00387903-xlmhxgakdc-portrait.jpg",
      "date": "Fri, 22 Mar onwards",
      "text1": "Kuchh Log Kahenge Ft.",
      "text2": "Zakir Khan",
      "text3": "Prerna Hall: Mumbai",
      "rate": "Rs.549 onwards",
    },
    {
      "image":
          "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC:w-400.0,h-660.0,cm-pad_resize,bg-000000,fo-top:l-text,ie-RnJpLCAxMiBBcHI%3D,fs-29,co-FFFFFF,ly-612,lx-24,pa-8_0_0_0,l-end/et00386991-fhdbykfwss-portrait.jpg",
      "date": "Sun, 24 Mar onwards",
      "text1": "Laugh Riot with Rahul ",
      "text2": "Rahul Subramanian",
      "text3": "Galaxy Theatre",
      "rate": "Rs.449 onwards",
    },
    {
      "image":
          "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC:w-400.0,h-660.0,cm-pad_resize,bg-000000,fo-top:l-text,ie-U2F0LCAxNiBNYXIgb253YXJkcw%3D%3D,fs-29,co-FFFFFF,ly-612,lx-24,pa-8_0_0_0,l-end/et00088164-yrzkgepwpe-portrait.jpg",
      "date": "Sat, 30 Mar onwards",
      "text1": "Comedy Nights featuring ",
      "text2": "Biswa Kalyan Rath",
      "text3": "City Auditorium: Delhi",
      "rate": "Rs.599 onwards",
    },
    {
      "image":
          "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC:w-400.0,h-660.0,cm-pad_resize,bg-000000,fo-top:l-text,ie-U3VuLCAxNCBBcHI%3D,fs-29,co-FFFFFF,ly-612,lx-24,pa-8_0_0_0,l-end/et00325331-qmvpzylwfz-portrait.jpg",
      "date": "Fri, 5 Apr onwards",
      "text1": "Humor Ka Tadka with Varun",
      "text2": "Varun Thakur",
      "text3": "Laugh Factory: Pune",
      "rate": "Rs.499 onwards",
    },
    {
      "image":
          "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC:w-400.0,h-660.0,cm-pad_resize,bg-000000,fo-top:l-text,ie-U3VuLCAyNCBNYXI%3D,fs-29,co-FFFFFF,ly-612,lx-24,pa-8_0_0_0,l-end:l-image,i-discovery-catalog@@icons@@bundle-icon-shadow-4x.png,lx-15,ly-15,w-50,l-end/et00349647-hqxtggkvbz-portrait.jpg",
      "date": "Sun, 14 Apr onwards",
      "text1": "Comedy Evening with Kenny",
      "text2": "Kenny Sebastian",
      "text3": "Harmony Hall: Chennai",
      "rate": "Rs.599 onwards",
    },
    {
      "image":
          "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC:w-400.0,h-660.0,cm-pad_resize,bg-000000,fo-top:l-text,ie-U2F0LCAyMyBNYXI%3D,fs-29,co-FFFFFF,ly-612,lx-24,pa-8_0_0_0,l-end/et00385489-yutfmlzbpp-portrait.jpg",
      "date": "Sat, 20 Apr onwards",
      "text1": "Stand-Up Special by Atul",
      "text2": "Atul Khatri",
      "text3": "Grand Arena: Mumbai",
      "rate": "Rs.549 onwards",
    },
    {
      "image":
          "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC:w-400.0,h-660.0,cm-pad_resize,bg-000000,fo-top:l-text,ie-U2F0LCAxNiBNYXIgb253YXJkcw%3D%3D,fs-29,co-FFFFFF,ly-612,lx-24,pa-8_0_0_0,l-end/et00088164-yrzkgepwpe-portrait.jpg",
      "date": "Fri, 26 Apr onwards",
      "text1": "Comedy FiestaNeeti Palta",
      "text2": "Neeti Palta",
      "text3": "Stellar Stadium: Hyderabad",
      "rate": "Rs.499 onwards",
    },
    {
      "image":
          "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC:w-400.0,h-660.0,cm-pad_resize,bg-000000,fo-top:l-text,ie-U3VuLCAxNyBNYXIgb253YXJkcw%3D%3D,fs-29,co-FFFFFF,ly-612,lx-24,pa-8_0_0_0,l-end:l-image,i-discovery-catalog@@icons@@bundle-icon-shadow-4x.png,lx-15,ly-15,w-50,l-end/et00135461-pqqyrdnwme-portrait.jpg",
      "date": "Sun, 4 May onwards",
      "text1": "Laugh Out Loud with Khan",
      "text2": "Zakir Khan",
      "text3": "Central Hall: Kolkata",
      "rate": "Rs.599 onwards",
    },
    {
      "image":
          "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC:w-400.0,h-660.0,cm-pad_resize,bg-000000,fo-top:l-text,ie-U3VuLCAxNCBBcHI%3D,fs-29,co-FFFFFF,ly-612,lx-24,pa-8_0_0_0,l-end/et00342542-zqtwcjwpfs-portrait.jpg",
      "date": "Sat, 11 May onwards",
      "text1": "Comedy ExtravaganzaAditi",
      "text2": "Aditi Mittal",
      "text3": "Plaza Auditorium: Jaipur",
      "rate": "Rs.549 onwards",
    },
    {
      "image":
          "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC:w-400.0,h-660.0,cm-pad_resize,bg-000000,fo-top:l-text,ie-U3VuLCAxNyBNYXIgb253YXJkcw%3D%3D,fs-29,co-FFFFFF,ly-612,lx-24,pa-8_0_0_0,l-end/et00369125-haxjbrjvfp-portrait.jpg",
      "date": "Fri, 17 May onwards",
      "text1": "Hasya Kavi Sammelan ",
      "text2": "Piyush Mishra",
      "text3": "Civic Center: Lucknow",
      "rate": "Rs.499 onwards",
    },
  ];

  static const List<Map<String, dynamic>> castList = [
    {"image": "", "name": "", "name1": ""}
  ];
}
