import 'package:flutter/material.dart';

import '../../helper/responsive_helper.dart';
import '../../utill/color_resources.dart';

class DetailScreenLoadingLayout extends StatelessWidget {
  const DetailScreenLoadingLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            width: MediaQuery.of(context).size.width,
            height: 210,
            color: Colors.grey[600],
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            width: MediaQuery.of(context).size.width / 2,
            height: 20,
            color: Colors.grey[600],
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            width: MediaQuery.of(context).size.width,
            height: 30,
            color: Colors.grey[600],
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            width: MediaQuery.of(context).size.width,
            height: 20,
            color: Colors.grey[600],
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            width: MediaQuery.of(context).size.width / 2,
            height: 20,
            color: Colors.grey[600],
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            width: MediaQuery.of(context).size.width,
            height: 100,
            color: Colors.grey[600],
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            width: MediaQuery.of(context).size.width / 2,
            height: 20,
            color: Colors.grey[600],
          ),
          ListView.builder(
              itemCount: 5,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  width: MediaQuery.of(context).size.width,
                  height: 100,
                  color: Colors.grey[600],
                );
              }),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            width: MediaQuery.of(context).size.width / 2,
            height: 20,
            color: Colors.grey[600],
          ),
          SizedBox(
            height: 250,
            child: ListView.builder(
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Container(
                    margin:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 3),
                    width: 160,
                    height: 100,
                    color: Colors.grey[600],
                  );
                }),
          )
        ],
      ),
    );
  }
}

class HomePageLoadingLayout extends StatelessWidget {
  const HomePageLoadingLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            width: MediaQuery.of(context).size.width / 2,
            height: 20,
            color: Colors.grey[600],
          ),
          SizedBox(
            height: 250,
            child: ListView.builder(
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Container(
                    margin:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 3),
                    width: 160,
                    height: 100,
                    color: Colors.grey[600],
                  );
                }),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            width: MediaQuery.of(context).size.width / 2,
            height: 20,
            color: Colors.grey[600],
          ),
          SizedBox(
            height: 250,
            child: ListView.builder(
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Container(
                    margin:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 3),
                    width: 160,
                    height: 100,
                    color: Colors.grey[600],
                  );
                }),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            width: MediaQuery.of(context).size.width / 2,
            height: 20,
            color: Colors.grey[600],
          ),
          SizedBox(
            height: 250,
            child: ListView.builder(
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Container(
                    margin:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 3),
                    width: 160,
                    height: 100,
                    color: Colors.grey[600],
                  );
                }),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            width: MediaQuery.of(context).size.width / 2,
            height: 20,
            color: Colors.grey[600],
          ),
          SizedBox(
            height: 250,
            child: ListView.builder(
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Container(
                    margin:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 3),
                    width: 160,
                    height: 100,
                    color: Colors.grey[600],
                  );
                }),
          ),
        ],
      ),
    );
  }
}

class WeatherLoadingLayout extends StatelessWidget {
  const WeatherLoadingLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: ResponsiveHelper.isMobile(context) ? 70 : 80,
            child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 7,
                itemBuilder: (context, index) {
                  return Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    width: MediaQuery.of(context).size.width / 4,
                    margin: const EdgeInsets.only(top: 5, left: 5, right: 5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: ColorResources.getBlackColor(context)),
                        color: Colors.transparent),
                  );
                }),
          ),
          Card(
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.5,
            ),
          ),
          SizedBox(
            height: ResponsiveHelper.isMobile(context) ? 40 : 60,
            child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 24,
                itemBuilder: (context, index) {
                  return Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    margin: const EdgeInsets.only(top: 5, left: 5, right: 5),
                    width: MediaQuery.of(context).size.width / 4,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: ColorResources.getBlackColor(context)),
                        color: ColorResources.getBlackColor(context)),
                  );
                }),
          ),
          const SizedBox(
            height: 10,
          ),
          Card(
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 20, 10, 5),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).orientation ==
                                  Orientation.portrait
                              ? MediaQuery.of(context).size.width / 2.5
                              : MediaQuery.of(context).size.width / 3,
                          height: MediaQuery.of(context).size.height / 3,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width / 2,
                          height: MediaQuery.of(context).size.height / 3,
                          decoration: BoxDecoration(
                            color: ColorResources.appColorTheme(context),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          padding: const EdgeInsets.fromLTRB(10, 15, 10, 10),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SpecificAlertLoadingLayout extends StatelessWidget {
  const SpecificAlertLoadingLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: ColorResources.getGreyColor(context),
          height: 20,
        ),
        Divider(
          color: ColorResources.getBlackColor(context),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              color: ColorResources.getGreyColor(context),
              height: ResponsiveHelper.isMobile(context) ? 80 : 70,
              width: MediaQuery.of(context).size.width / 2.5,
            ),
            VerticalDivider(
              color: ColorResources.getBlackColor(context),
            ),
            Container(
              color: ColorResources.getGreyColor(context),
              height: ResponsiveHelper.isMobile(context) ? 80 : 70,
              width: MediaQuery.of(context).size.width / 2.5,
            ),
          ],
        ),
      ],
    );
  }
}

class SimLoadingLayout extends StatelessWidget {
  const SimLoadingLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: ColorResources.getGreyColor(context),
          height: 20,
        ),
        Divider(
          color: ColorResources.getBlackColor(context),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              color: ColorResources.getGreyColor(context),
              height: ResponsiveHelper.isMobile(context) ? 80 : 70,
              width: MediaQuery.of(context).size.width / 2.5,
            ),
            VerticalDivider(
              color: ColorResources.getBlackColor(context),
            ),
            Container(
              color: ColorResources.getGreyColor(context),
              height: ResponsiveHelper.isMobile(context) ? 80 : 70,
              width: MediaQuery.of(context).size.width / 2.5,
            ),
          ],
        ),
      ],
    );
  }
}
