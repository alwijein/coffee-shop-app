import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: controller.currentIndex,
        children: [
          HomeView(),
          HistoryPresensiView(),
          OutstationView(),
          SettingView(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: kBackgroundColor2,
        elevation: 0,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedLabelStyle: primaryTextStyle.copyWith(
          fontSize: getPropertionateScreenWidht(12),
        ),
        selectedItemColor: kPrimaryColor,
        unselectedItemColor: kSecondaryColor,
        unselectedLabelStyle: primaryTextStyle.copyWith(
          color: kSecondaryColor,
          fontSize: getPropertionateScreenWidht(12),
        ),
        currentIndex: controller.currentIndex,
        type: BottomNavigationBarType.fixed,
        onTap: controller.changeTabIndex,
        items: [
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(bottom: getPropertionateScreenWidht(8)),
              child: SvgPicture.asset(
                controller.currentIndex == 0
                    ? 'assets/icons/presensi-active.svg'
                    : 'assets/icons/presensi-unactive.svg',
                color: controller.currentIndex == 0
                    ? kPrimaryColor
                    : kPrimaryLightColor,
              ),
            ),
            label: 'Presensi',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(bottom: getPropertionateScreenWidht(8)),
              child: SvgPicture.asset(
                controller.currentIndex == 1
                    ? 'assets/icons/history-active.svg'
                    : 'assets/icons/history-unactive.svg',
                color: controller.currentIndex == 1
                    ? kPrimaryColor
                    : kPrimaryLightColor,
              ),
            ),
            label: 'Riwayat',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(bottom: getPropertionateScreenWidht(8)),
              child: Icon(
                Icons.mode_of_travel_rounded,
                color: controller.currentIndex == 2
                    ? kPrimaryColor
                    : kPrimaryLightColor,
                size: getPropertionateScreenWidht(24),
              ),
            ),
            label: 'Pengajuan',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(bottom: getPropertionateScreenWidht(8)),
              child: SvgPicture.asset(
                controller.currentIndex == 3
                    ? 'assets/icons/setting-active.svg'
                    : 'assets/icons/setting-unactive.svg',
                color: controller.currentIndex == 3
                    ? kPrimaryColor
                    : kPrimaryLightColor,
              ),
            ),
            label: 'Pengaturan',
          ),
        ],
      ),
    );
  }
}
