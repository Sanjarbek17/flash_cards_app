import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flash_cards_app/core/extension/text_theme_extension.dart';
import 'package:flash_cards_app/core/theme/custom_colors.dart';
import 'package:flash_cards_app/presentation/widgets/flash_widget.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  late List<_ChartData> data;
  late TooltipBehavior _tooltip;

  @override
  void initState() {
    data = [
      _ChartData('Mon', 6),
      _ChartData('Tue', 1),
      _ChartData('Wed', 5),
      _ChartData('Thu', 1.5),
      _ChartData('Fri', 2.5),
      _ChartData('Sat', 3.5),
      _ChartData('Sun', 4),
    ];
    _tooltip = TooltipBehavior(enable: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        flexibleSpace: Container(
          height: 270,
          decoration: const BoxDecoration(
            color: CustomColors.primaryColor,
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 30,
                backgroundColor: Colors.white,
                child: Icon(Icons.person, size: 30, color: Colors.black),
              ),
              const SizedBox(height: 10),
              Text('Sanjar Saidov', style: context.accountTextStyle),
              Text('Samarkand, Uzbekistan', style: context.accountSubTextStyle),
              Transform.translate(
                offset: const Offset(0, 60),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Container(
                    width: context.width,
                    padding: const EdgeInsets.all(30),
                    decoration: BoxDecoration(color: CustomColors.white, borderRadius: BorderRadius.circular(30), boxShadow: const [BoxShadow(color: Colors.black38, blurRadius: 8, spreadRadius: 0, offset: Offset(0, 5))]),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const FlashWidget(icon: Icons.flash_on, title: '37', subTitle: 'Flashcards Added'),
                        Container(
                          width: 1,
                          height: 41,
                          color: CustomColors.primaryColor.withOpacity(0.5),
                        ),
                        const FlashWidget(icon: Icons.schedule, title: '122+', subTitle: 'Hours Spent'),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottom: PreferredSize(
          preferredSize: Size(context.width, 250),
          child: const SizedBox(),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 50),
          Text('6 hrs, 16 Mins', style: context.accountBodyTextStyle),
          Text('Today', style: context.accountBodySubTextStyle),
          SizedBox(
            height: 170,
            child: SfCartesianChart(
              primaryXAxis: const CategoryAxis(),
              primaryYAxis: const NumericAxis(
                opposedPosition: true,
                interval: 2,
                labelFormat: '{value}h',
                majorGridLines: MajorGridLines(
                  width: 1,
                  color: CustomColors.primaryColor,
                ),
                minorGridLines: MinorGridLines(
                  width: 500,
                  color: Colors.red,
                ),
              ),
              tooltipBehavior: _tooltip,
              series: <CartesianSeries<_ChartData, String>>[
                ColumnSeries<_ChartData, String>(
                  dataSource: data,
                  xValueMapper: (_ChartData data, _) => data.x,
                  yValueMapper: (_ChartData data, _) => data.y,
                  pointColorMapper: (_ChartData data, _) {
                    DateTime now = DateTime.now();
                    String currentDay = [
                      'Sun',
                      'Mon',
                      'Tue',
                      'Wed',
                      'Thu',
                      'Fri',
                      'Sat',
                    ][now.weekday % 7];
                    return data.x == currentDay
                        ? CustomColors.primaryColor
                        : CustomColors.primaryColor.withOpacity(
                            0.5,
                          );
                  },
                  name: 'Hour',
                  // isTrackVisible: true,

                  color: CustomColors.primaryColor,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _ChartData {
  _ChartData(this.x, this.y);

  final String x;
  final double y;
}
