import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductSearch extends StatelessWidget {
  const ProductSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var api = Get.put(ProductSearchApi());
    var rep = Get.put(ProductSearchRepository(api));
    var controller = Get.put(ProductSearchController(rep));
    var products = controller.getSoldProducts();
    return Column(
      children: [
        Container(
            child: Align(
              child: Text(
                'Son Satılan Ürünler',
                style: TextStyle(fontSize: 16),
              ),
              alignment: AlignmentDirectional.topStart,
            ),
            margin: EdgeInsets.only(
              top: 8,
              left: 8,
            )),
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

  List<ProductSearchModel> getSoldProducts() {
    return repository.getSoldProducts();
  }
}

class ProductSearchRepository {
  final ProductSearchApi api;

  ProductSearchRepository(this.api);

  List<ProductSearchModel> getSoldProducts() {
    return api.getSoldProducts();
  }
}

class ProductSearchApi {
  List<ProductSearchModel> getSoldProducts() {
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
