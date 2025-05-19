import 'package:flutter/material.dart';
import 'package:itcs424_assignment_6588069_code/main.dart';
class AppliedJob extends StatefulWidget {
  const AppliedJob({super.key});

  @override
  _AppliedJob createState() => _AppliedJob();
}

class _AppliedJob extends State<AppliedJob> {
  List<bool> bookmarked = [false, false];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TopNavigationBar(),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          _buildHeader(),
          SizedBox(height: 10),
          _buildJobCard(
            index: 0,
            title: 'Barista',
            company: 'Ruffle Co., Ltd',
            salary: '฿10k - ฿12k/month',
            imagePath: 'assets/image/job1.png',
          ),
          _buildJobCard(
            index: 1,
            title: 'Barista',
            company: 'Mondayy Co., Ltd.',
            salary: '฿18k - ฿22k/month',
            imagePath: 'assets/image/job2.png',
          ),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Your Application \nis Being Reviewed',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          Image.asset(
            'assets/image/Applied_picture.png',
            width: 150,
            height: 150,
            semanticLabel: 'Application Under Review Illustration',
          ),
        ],
      ),
    );
  }

  Widget _buildJobCard({
    required int index,
    required String title,
    required String company,
    required String salary,
    required String imagePath,
  }) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.black,
      ),
      child: Row(
        children: [
          Image.asset(imagePath, width: 150, height: 150, semanticLabel: '$title at $company'),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(Icons.coffee, color: Colors.white),
                    SizedBox(width: 5),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            title,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            company,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.bookmark,
                        color: bookmarked[index] ? Colors.amber : Colors.white,
                      ),
                      onPressed: () {
                        setState(() {
                          bookmarked[index] = !bookmarked[index];
                        });
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                Row(
                  children: [
                    Icon(Icons.place, color: Colors.amber),
                    SizedBox(width: 5),
                    Text(
                      'Bangkok, Thailand',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    _buildTag('Full-Time'),
                    const SizedBox(width: 4),
                    _buildTag('Drink'),
                    const SizedBox(width: 4),
                    _buildTag('Service'),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      salary,
                      style: TextStyle(color: Colors.white),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.amber,
                        foregroundColor: Colors.black,
                      ),
                      child: Text('More'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTag(String text) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 6, vertical: 4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Color(0xFF8ECAE6),
      ),
      child: Text(
        text,
        style: TextStyle(fontSize: 10),
      ),
    );
  }

}