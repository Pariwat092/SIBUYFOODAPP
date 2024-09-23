import 'package:flutter/material.dart';
import 'package:sibuyapp/Myproduct/payment.dart';
import 'package:sibuyapp/classallapp/colors.dart';
import 'package:sibuyapp/classallapp/costomappbar.dart';

class ProductList extends StatefulWidget {
  @override
  _ProductListState createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  final List<Map<String, dynamic>> products = [
    {
      'name': 'เค้กชาเขียว หวานน้อยหน้าครีม',
      'price': 49.00,
      'isSelected': false
    },
    {'name': 'เค้กช็อคโกแลต', 'price': 59.00, 'isSelected': false},
    {'name': 'เค้กช็อคโกแลต', 'price': 59.00, 'isSelected': false},
    {'name': 'เค้กช็อคโกแลต', 'price': 59.00, 'isSelected': false},
    {'name': 'เค้กช็อคโกแลต', 'price': 59.00, 'isSelected': false},
    {'name': 'เค้กช็อคโกแลต', 'price': 59.00, 'isSelected': false},
    {'name': 'เค้กช็อคโกแลต', 'price': 59.00, 'isSelected': false},
    {'name': 'เค้กช็อคโกแลต', 'price': 59.00, 'isSelected': false},
    {'name': 'เค้กช็อคโกแลต', 'price': 59.00, 'isSelected': false},
    {'name': 'เค้กช็อคโกแลต', 'price': 59.00, 'isSelected': false},
    {'name': 'เค้กช็อคโกแลต', 'price': 59.00, 'isSelected': false},
    {'name': 'เค้กช็อคโกแลต', 'price': 59.00, 'isSelected': false},
    {'name': 'เค้กช็อคโกแลต', 'price': 59.00, 'isSelected': false},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolor.white,
      appBar: CustomAppBarNoBack(
        title: 'รายการของฉัน',
        backgroundColor: Appcolor.white,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: products.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.symmetric(
                      vertical: 5.0, horizontal: 10.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Appcolor.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1), // เงาที่เบาบาง
                        spreadRadius: 2,
                        blurRadius: 4,
                        offset: Offset(0, 2), // เงาที่เบาบางและเรียบง่าย
                      ),
                    ],
                  ),
                  child: ListTile(
                    leading: Checkbox(
                      shape: CircleBorder(),
                      activeColor: Colors.black,
                      value: products[index]['isSelected'],
                      onChanged: (bool? value) {
                        setState(() {
                          products[index]['isSelected'] = value!;
                        });
                      },
                    ),
                    title: Text(products[index]['name']),
                    subtitle: Text('${products[index]['price']} บาท'),
                    trailing: IconButton(
                      icon: Icon(Icons.delete_sweep_outlined),
                      iconSize: 25.0,
                      onPressed: () {
                        print(
                            'Delete button pressed for ${products[index]['name']}');
                        setState(() {
                          products.removeAt(index);
                        });
                      },
                    ),
                  ),
                );
              },
            ),
          ),
          Container(
            height: 150,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 50,
                    width: 370,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'ราคาทั้งหมด',
                          style: TextStyle(
                              fontSize: 16,
                              color: Color.fromARGB(255, 0, 0, 0)),
                        ),
                        Text(
                          '${_calculateTotalPrice()} บาท',
                          style: const TextStyle(
                            fontSize: 24,
                            color: Color.fromARGB(255, 255, 92, 92),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Paymentpage()),
                        );

                        print('ชำระเงิน');
                      },
                      borderRadius: BorderRadius.circular(25.0),
                      child: Container(
                        width: 370,
                        padding: EdgeInsets.symmetric(
                            vertical: 12.0, horizontal: 24.0),
                        decoration: BoxDecoration(
                          color: Appcolor.black,
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        child: Center(
                          child: Text(
                            'ชำระเงิน',
                            style: TextStyle(
                              color: Appcolor.white,
                              fontSize: 15.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  double _calculateTotalPrice() {
    double total = 0;
    for (var product in products) {
      if (product['isSelected']) {
        total += product['price'];
      }
    }
    return total;
  }
}
