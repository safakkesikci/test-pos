import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductSearch extends GetView<ProductSearchController> {
  const ProductSearch({Key? key, this.filter}) : super(key: key);

  final filter;

  @override
  Widget build(BuildContext context) {
    var controller = Get.find<ProductSearchController>();
    var products = controller.getProducts(filter);
    return Column(
      children: [
        Expanded(
          child: Container(
            child: ListView.builder(
                padding: const EdgeInsets.all(8),
                itemCount: products.length,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    margin: EdgeInsets.symmetric(vertical: 4, horizontal: 4),
                    child: Container(
                      //height: 70,
                      child: Row(
                        children: [
                          Icon(
                            products[index].productIcon,
                            size: 70,
                          ),
                          SizedBox(
                            child: Container(
                              child: Column(
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional.topStart,
                                    child: Text(
                                      '${products[index].productName}',
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional.centerStart,
                                    child: Text(
                                      '${products[index].stockData}',
                                      style: TextStyle(
                                          fontStyle: FontStyle.italic),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            width: 250,
                            height: 55,
                          ),
                          Text(
                            '${products[index].price}',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          ),
        ),
      ],
    );
  }
}

class ProductSearchController extends GetxController {
  final ProductSearchRepository repository;
  ProductSearchController(this.repository);

  List<ProductSearchModel> getProducts(String filter) {
    return repository.getProducts(filter);
  }
}

class ProductSearchRepository {
  final ProductSearchApi api;

  ProductSearchRepository(this.api);

  List<ProductSearchModel> getProducts(String filter) {
    return api
        .getProducts()
        .where((product) => (product.productName as String)
            .toUpperCase()
            .startsWith(filter.toUpperCase()))
        .toList();
  }
}

class ProductSearchApi {
  List<ProductSearchModel> getProducts() {
    return [
      ProductSearchModel(
          productName: 'Kazak',
          productIcon: Icons.checkroom,
          price: 80.99,
          stockData: '5 varyant'),
      ProductSearchModel(
          productName: 'Atkı',
          productIcon: Icons.bed,
          price: 45.00,
          stockData: ''),
      ProductSearchModel(
          productName: 'Tshirt',
          productIcon: Icons.blender_outlined,
          price: 70.99,
          stockData: '7 varyant'),
      ProductSearchModel(
          productName: 'Kaban',
          productIcon: Icons.bedroom_baby_outlined,
          price: 249.99,
          stockData: '7 varyant'),
    ];
  }
}

class ProductSearchModel {
  IconData? productIcon;
  String? productName;
  double? price;
  String? stockData;

  ProductSearchModel(
      {this.productName, this.productIcon, this.price, this.stockData});
}
