// import 'package:carousel_slider/carousel_slider.dart';
// 
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:sizer/sizer.dart';
// 

// import '../../../../core/style/colors.dart';
// import '../../../../core/style/fonts.dart';
// import '../../../core/assets_manager.dart';
// import '../../../core/shared/widgets/custom_buttons.dart';
// import '../../../core/shared/widgets/title_with_icon.dart';
// import '../../../core/utils/service_locator.dart';
// import '../bloc/authentication_bloc.dart';
// import 'model/model.dart';

// class OnboardingScreen extends StatefulWidget {
//   const OnboardingScreen({super.key});

//   @override
//   State<OnboardingScreen> createState() => _OnboardingScreenState();
// }

// class _OnboardingScreenState extends State<OnboardingScreen> {
//   final _controller = PageController();
//   final ScrollController scrollController = ScrollController();
//   var _initialPage = 2;

//   @override
//   void initState() {
//     super.initState();
//     // Future.delayed(Duration(milliseconds: 500), () {
//     //   scrollController.animateTo(
//     //     scrollController.position.maxScrollExtent,
//     //     duration: const Duration(seconds: 2),
//     //     curve: Curves.linear,
//     //   );
//     // });
//   }

//   /// Split images into 3 columns for example
//   List<List<OnBoardingModel>> _splitIntoColumns(
//       List<String> items, int columnCount) {
//     List<List<OnBoardingModel>> columns = List.generate(columnCount, (_) => []);
//     for (int i = 0; i < items.length; i++) {
//       columns[i % columnCount].add(OnBoardingModel(
//         id: 1,
//         title: 'URFIT',
//         text: L10n.tr().onBording1Body,
//         img: [items[i]],
//         icon: AssetsManager.mini_logo,
//         subtitle: L10n.tr().onBording1Title,
//       ));
//     }
//     return columns;
//   }

//   @override
//   Widget build(BuildContext context) {
//     _controller.addListener(() {
//       setState(() {
//         _initialPage = _controller.page!.round();
//       });
//     });

//     final columnList = _splitIntoColumns(
//         (sl<AuthenticationBloc>().state as AuthenticationOnBoarding)
//             .sliderImages
//             .map((image) => image.image!)
//             .toList(),
//         ((sl<AuthenticationBloc>().state as AuthenticationOnBoarding)
//                     .sliderImages
//                     .length /
//                 3)
//             .round());
//     // List<OnBoardingModel> list = [
//     //   OnBoardingModel(
//     //     id: 1,
//     //     title: 'URFIT',
//     //     text: L10n.tr().onBording1Body,
//     //     img: (sl<AuthenticationBloc>().state as AuthenticationOnBoarding).sliderImages.map((e) => e.image!).toList(),
//     //     icon: AssetsManager.mini_logo,
//     //     subtitle: L10n.tr().
//     //     onBording1Title,
//     //   ),
//     // ];

//     var size = MediaQuery.sizeOf(context) ;
//     print("size : ${MediaQuery.paddingOf(context).bottom} , ${size.height}");
//     return Scaffold(
//       extendBodyBehindAppBar: true,
//       backgroundColor: Theme.of(context).colorScheme.primary,
//       body: SafeArea(
//         top: false,
//         child: Stack(
//           alignment: Alignment.bottomCenter,
//           children: [
//             // SvgPicture.asset("assets/images/Subtract.svg",width: size.width,colorFilter: ColorFilter.mode(Theme.of(context).colorScheme.secondary, BlendMode.srcATop), ),
//             SizedBox(
//               width: size.width,
//               height: size.height - MediaQuery.paddingOf(context).bottom.px,
//               child: SingleChildScrollView(
//                 child: Column(
//                   children: [
//                     _displayImage(
//                       columnList,
//                     ),
//                     // Spacer(),
//                     Column(
//                       children: [
//                         _displayTitle(
//                             title: 'URFIT', icon: AssetsManager.mini_logo),
//                         // if (L10n.tr().
//                         // onBording1Titl != null)
//                         _displaySubtitleText(L10n.tr().onBording1Title),
//                         const SizedBox(
//                           height: 20,
//                         ),
//                         _displayText(L10n.tr().onBording1Body),
//                       ],
//                     ),
//                     // Expanded(
//                     //   child: Align(
//                     //     alignment: Alignment.topCenter,
//                     //     child: PageView.builder(
//                     //       // physics: AlwaysScrollableScrollPhysics(),
//                     //       controller: _controller,
//                     //       itemCount: list.length,
//                     //       itemBuilder: (context, index) {
//                     //         return Column(
//                     //           children: [
//                     //             SizedBox(
//                     //               height: 500.px,
//                     //                 child: _displayImage(
//                     //                   list[index].img,
//                     //                 )),
//                     //             _displayTitle(
//                     //                 title: list[index].title,
//                     //                 icon: list[index].icon),
//                     //             if (list[index].subtitle?.tr() != null)
//                     //               _displaySubtitleText(list[index].subtitle),
//                     //             if (list[index].subtitle?.tr() != null)
//                     //               const SizedBox(
//                     //                 height: 20,
//                     //               ),
//                     //             _displayText(list[index].text),
//                     //           ],
//                     //         );
//                     //       },
//                     //     ),
//                     //   ),
//                     // ),
//                     SizedBox(
//                       height: 40.px,
//                     ),
                        
//                     CustomElevatedButton(
//                         text: L10n.tr().startYourTrip,
//                         backgroundColor: AppColors.secondaryColor,
//                         onPressed: () {
//                           context
//                               .read<AuthenticationBloc>()
//                               .add(GoToOnBoardingTwo());
//                           // context
//                           //     .read<AuthenticationBloc>()
//                           //     .add(GoToChooseLanguage());
//                         }),
//                     SizedBox(
//                       height: 20.px,
//                     ),
//                     // SliderDots(page: _initialPage),
//                     // Align(
//                     //   alignment: Alignment.centerRight,
//                     //   child: Container(
//                     //     width: 60,
//                     //     height: 60,
//                     //     margin:  const EdgeInsets.symmetric(vertical: 10,horizontal: 20,),
//                     //     child: Stack(
//                     //       children: [
//                     //         Align(
//                     //           alignment: Alignment.center,
//                     //           child: SizedBox(
//                     //             width: 60,
//                     //             height: 60,
//                     //             child: CircularProgressIndicator(
//                     //               backgroundColor: Colors.grey[200],
//                     //               valueColor:
//                     //                AlwaysStoppedAnimation(Theme.of(context).colorScheme.primary),
//                     //               value: (_initialPage + 1) / (list.length + 1),
//                     //             ),
//                     //           ),
//                     //         ),
//                     //         Align(
//                     //           alignment: Alignment.center,
//                     //           child: GestureDetector(
//                     //             onTap: () {
//                     //               if (_initialPage < list.length) {
//                     //                 _controller.animateToPage(
//                     //                   _initialPage + 1,
//                     //                   duration: const Duration(
//                     //                     milliseconds: 500,
//                     //                   ),
//                     //                   curve: Curves.easeIn,
//                     //                 );
//                     //
//                     //                 print(_initialPage);
//                     //
//                     //                 if (_initialPage == 1) {
//                     //                   context.read<AuthenticationBloc>().add(DoneOnBoardingEvent());
//                     //                 }
//                     //               }
//                     //             },
//                     //             child: Container(
//                     //               width: 45,
//                     //               height: 45,
//                     //               decoration: BoxDecoration(
//                     //                 color: Theme.of(context).colorScheme.primary,
//                     //                 borderRadius: BorderRadius.circular(100.sp),
//                     //               ),
//                     //               child:   const Icon(
//                     //                 Icons.arrow_back,
//                     //                 color: Colours.whiteColor,
//                     //               ),
//                     //             ),
//                     //           ),
//                     //         ),
//                     //       ],
//                     //     ),
//                     //   ),
//                     // ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   _displayImage(List<List<OnBoardingModel>> columns) {
//     print("column lenght : ${columns.length}");
//     return CarouselSlider(
//       disableGesture: true,
//       items: [
//         ...columns.map((colum) {
//           final index = columns.indexOf(colum);

//           return SizedBox(
//             width: 138.px,
//             // height: 170.px,
//             child: Stack(
//               children: [
//                 Positioned(
//                   top: index % 2 == 0 ? -70 : 0,
//                   child: Padding(
//                     padding: EdgeInsets.symmetric(horizontal: 8.px),
//                     child: Column(
//                       spacing: 8.px,
//                       children: [
//                         ...colum.map((model) {
//                           return SizedBox(
//                             width: 120.px,
//                             height: 170.px,

//                             child: Container(
//                               decoration: BoxDecoration(
//                                 color: Colors.white,
//                                 borderRadius: BorderRadius.circular(10.px),
//                                 border: Border.all(color: Colors.white, width: 2.px),
//                               ),
//                               child: ClipRRect(
//                                 clipBehavior: Clip.antiAlias,
//                                 borderRadius: BorderRadius.circular(10.px),
//                                 child: Image.network(

//                                   model.img.first,
//                                   fit: BoxFit.cover,
//                                   height: 170.px,
//                                   width: 120.px,
//                                 ),
//                               ),
//                             ),
//                           );
//                         }).toList()
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           );
//         }).toList(),
//       ],
//       options: CarouselOptions(
//         autoPlay: true,
//         aspectRatio: 1,
//         height: 550.px,
//         enlargeCenterPage: false,
//         initialPage: 0,
//         viewportFraction: 0.34.px,
//         autoPlayInterval: Duration(milliseconds: 800), // fast interval
//         autoPlayAnimationDuration: Duration(milliseconds: 800),
//         enableInfiniteScroll: true,
//         // scrollPhysics: BouncingScrollPhysics(),
//         autoPlayCurve:Curves.linear ,
//         pageSnapping: false,
//         disableCenter: true,
//       ),
//       //[List<Widget>] - List of swipeable widgets
//     );
//     return PageView(
//       scrollDirection: Axis.horizontal,
//       physics: AlwaysScrollableScrollPhysics(),
//       children: [
//         ...columns.map((colum) {
//           return Column(
//             children: [
//               ...colum.map((model) {
//                 return Image.network(
//                   model.img.first,
//                   fit: BoxFit.cover,
//                   height: 170.px,
//                   width: 120.px,
//                 );
//               }).toList()
//             ],
//           );
//         }).toList(),
//       ],
//     );
//     // return ListView.separated(
//     //   shrinkWrap: true,
//     //   reverse: true,
//     //   physics: const ClampingScrollPhysics(),
//     //   controller: scrollController,
//     //   scrollDirection: Axis.horizontal,
//     //   separatorBuilder: (BuildContext context, int index) =>
//     //   const SizedBox(
//     //     width: 5,
//     //   ),
//     //   itemCount: images.length,
//     //   itemBuilder: (BuildContext context, int index) {
//     //     return Image.network(
//     //       images[index],
//     //       fit: BoxFit.cover,
//     //       height: 170.px,
//     //       width: 120.px,
//     //     );
//     //   },
//     // );
//   }

//   _displayTitle({required String title, String? icon}) {
//     return const IconWithTitle();
//   }

//   _displaySubtitleText(String? text) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(
//         horizontal: 20,
//       ),
//       child: Text(
//         text?.tr() ?? '',
//         textAlign: TextAlign.center,
//         style: CustomTextStyle.semiBold_24,
//       ),
//     );
//   }

//   //
//   _displayText(String text) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(
//         horizontal: 20,
//       ),
//       child: Text(
//         text,
//         textAlign: TextAlign.center,
//         style: CustomTextStyle.semiBold_16,
//       ),
//     );
//   }
// }
