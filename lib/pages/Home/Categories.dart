// ignore_for_file: must_be_immutable, use_key_in_widget_constructors, avoid_types_as_parameter_names, file_names, non_constant_identifier_names

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide Trans;
import 'package:singlerestaurant/Model/home/homescreenmodel.dart';
import 'package:singlerestaurant/pages/Home/categoriesinfo.dart';
import 'package:singlerestaurant/translation/locale_keys.g.dart';
import 'package:sizer/sizer.dart';

class Categoriespage extends StatefulWidget {
  List<Categories>? categoriesdata;

  @override
  State<Categoriespage> createState() => _CategoriespageState();
  Categoriespage([this.categoriesdata]);
}

class _CategoriespageState extends State<Categoriespage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            leading: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(
                  Icons.arrow_back_ios_outlined,
                  size: 20,
                )),
            title: Text(
              LocaleKeys.Categories.tr(),
              textAlign: TextAlign.center,
              style: TextStyle(fontFamily: 'Poppins_semibold', fontSize: 11.sp),
            ),
            centerTitle: true,
          ),
          body: GridView.builder(
              itemCount: widget.categoriesdata!.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 10,
              ),
              itemBuilder: (BuildContext, index) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                        height: 13.h,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                        ),
                        child: InkWell(
                          onTap: () {
                            Get.to(() => categories_items(
                                  widget.categoriesdata![index].id.toString(),
                                  widget.categoriesdata![index].categoryName,
                                ));
                          },
                          child: ClipOval(
                            // borderRadius: BorderRadius.circular(50),
                            child: Image.network(
                              widget.categoriesdata![index].image.toString(),
                              fit: BoxFit.fill,
                            ),
                          ),
                        )),
                    Text(
                      widget.categoriesdata![index].categoryName.toString(),
                      style: TextStyle(fontFamily: 'Poppins', fontSize: 11.sp),
                    )
                  ],
                );
              })),
    );
    
  }
}
