
import 'package:flutter/material.dart';

import 'dart:math';
import 'package:responsive_table/responsive_table.dart';
import '../../../admin/sidebar/sidebar_widget.dart';
import '../../../constants/style.dart';
import '../../content.dart';

class UnassignedOrders extends StatelessWidget {
  const UnassignedOrders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: WidgetWithSidebar(
          context, cardOfUserTable(context, Column(
        children: [
          UnassignedOrderList()
        ],
      ),),),
    );
  }
}



class UnassignedOrderList extends StatefulWidget {
  const UnassignedOrderList({Key? key}) : super(key: key);
  @override
  State<UnassignedOrderList> createState() => _UnassignedOrderListState();
}

class _UnassignedOrderListState extends State<UnassignedOrderList> {
  late List<DatatableHeader> _headers;

  final List<int> _perPages = [10, 20, 50, 100];
  int _total = 100;
  int? _currentPerPage = 10;
  List<bool>? _expanded;
  final String _searchKey = "id";

  int _currentPage = 1;
  bool _isSearch = false;
  final List<Map<String, dynamic>> _sourceOriginal = [];
  List<Map<String, dynamic>> _sourceFiltered = [];
  List<Map<String, dynamic>> _source = [];
  final List<Map<String, dynamic>> _selecteds = [];
  // ignore: unused_field
  final String _selectableKey = "id";

  String? _sortColumn;
  final bool _sortAscending = true;
  bool _isLoading = true;
  final bool _showSelect = false;
  var random = Random();

  List<Map<String, dynamic>> _generateData({int n = 100}) {
    final List source = List.filled(n, Random.secure());
    List<Map<String, dynamic>> temps = [];
    var i = 1;
    print(i);
    // ignore: unused_local_variable
    for (var data in source) {
      temps.add({
        "id": i,
        "order_id": i*2,
        "name": "Customer Name $i",
        "date": "12/05/2020",
        "type": "no",
        "book_no": "Un-Assigned",
        "status": "found" ,
        "bill": "Rs 3000 /-" ,
        "details": "",
        "actions": "",
      });
      i++;
    }
    return temps;
  }

  _initializeData() async {
    _mockPullData();
  }

  _mockPullData() async {
    _expanded = List.generate(_currentPerPage!, (index) => false);

    setState(() => _isLoading = true);
    Future.delayed(const Duration(seconds: 3)).then((value) {
      _sourceOriginal.clear();
      _sourceOriginal.addAll(_generateData(n: random.nextInt(10000)));
      _sourceFiltered = _sourceOriginal;
      _total = _sourceFiltered.length;
      _source = _sourceFiltered.getRange(0, _currentPerPage!).toList();
      setState(() => _isLoading = false);
    });
  }

  _resetData({start: 0}) async {
    setState(() => _isLoading = true);
    var expandedLen =
    _total - start < _currentPerPage! ? _total - start : _currentPerPage;
    Future.delayed(const Duration(seconds: 0)).then((value) {
      _expanded = List.generate(expandedLen as int, (index) => false);
      _source.clear();
      _source = _sourceFiltered.getRange(start, start + expandedLen).toList();
      setState(() => _isLoading = false);
    });
  }

  _filterData(value) {
    setState(() => _isLoading = true);

    try {
      if (value == "" || value == null) {
        _sourceFiltered = _sourceOriginal;
      } else {
        _sourceFiltered = _sourceOriginal
            .where((data) => data[_searchKey]
            .toString()
            .toLowerCase()
            .contains(value.toString().toLowerCase()))
            .toList();
      }

      _total = _sourceFiltered.length;
      var rangeTop = _total < _currentPerPage! ? _total : _currentPerPage!;
      _expanded = List.generate(rangeTop, (index) => false);
      _source = _sourceFiltered.getRange(0, rangeTop).toList();
    } catch (e) {
      print(e);
    }
    setState(() => _isLoading = false);
  }

  @override
  void initState() {
    super.initState();

    /// set headers
    _headers = [
      DatatableHeader(
          text: "S.No",
          value: "id",
          show: true,
          sortable: true,
          textAlign: TextAlign.left),
      DatatableHeader(
          text: "Order ID",
          value: "order_id",
          show: true,
          sortable: true,
          textAlign: TextAlign.left),
      DatatableHeader(
          text: "Customer Name",
          value: "name",
          show: true,
          flex: 2,
          sortable: true,
          editable: true,
          textAlign: TextAlign.left),
      DatatableHeader(
          text: "Order Date",
          value: "date",
          show: true,
          sortable: false,
          textAlign: TextAlign.left),
      DatatableHeader(
          text: "Order Type",
          value: "type",
          show: true,
          sortable: true,
          textAlign: TextAlign.left),
      DatatableHeader(
          text: "Order Book No",
          value: "book_no",
          show: true,
          sortable: true,
          textAlign: TextAlign.center),
      DatatableHeader(
          text: "Order Status",
          value: "status",
          show: true,
          sortable: true,
          textAlign: TextAlign.center),
      DatatableHeader(
          text: "Total Bill",
          value: "bill",
          show: true,
          sortable: true,
          textAlign: TextAlign.center),
      DatatableHeader(
          text: "Details",
          value: "details",
          show: true,
          sortable: false,
          sourceBuilder: (value, row) {
            return Padding(
              padding: const EdgeInsets.all(15.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: lightColor),
                child: Text("Details", style: MyTextStyles.xSmallPrimary,),
                onPressed: () {},
              ),
            );
          },
          textAlign: TextAlign.center),
      DatatableHeader(
          text: "Actions",
          value: "actions",
          show: true,
          sortable: false,
          sourceBuilder: (value, row) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                child: Text("Actions", style: MyTextStyles.xSmallWhite,),
                onPressed: () {},
              ),
            );
          },
          textAlign: TextAlign.center),

    ];

    _initializeData();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          decoration: const BoxDecoration(
            color: secondary,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(10),
              topLeft: Radius.circular(10),
            ),
          ),
          child: Row(
            children: [
              const Icon(
                Icons.menu_rounded,
                color: Colors.black,
              ),
              Text(
                '  Un-Assigned Orders',
                style: MyTextStyles.headingxSmallBoldBlack,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 600,
          child: Card(
            elevation: 1,
            shadowColor: Colors.black,
            clipBehavior: Clip.none,
            child: ResponsiveDatatable(
              reponseScreenSizes: const [ScreenSize.xs],
              actions: [
                if (_isSearch)
                  Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                            hintText:
                            'Enter search term based on ${_searchKey.replaceAll(RegExp('[\\W_]+'), ' ').toUpperCase()}',
                            prefixIcon: IconButton(
                                icon: const Icon(Icons.cancel),
                                onPressed: () {
                                  setState(() {
                                    _isSearch = false;
                                  });
                                  _initializeData();
                                }),
                            suffixIcon: IconButton(
                                icon: const Icon(Icons.search), onPressed: () {})),
                        onSubmitted: (value) {
                          _filterData(value);
                        },
                      )),
                if (!_isSearch)
                  TextButton(
                      onPressed: () {
                        setState(() {
                          _isSearch = true;
                        });
                      },
                      child: Row(
                        children: [
                          Icon(Icons.search),
                          Text(' Search'),
                        ],
                      ))
              ],
              headers: _headers,
              source: _source,
              selecteds: _selecteds,
              showSelect: _showSelect,
              autoHeight: false,
              expanded: _expanded,
              sortAscending: _sortAscending,
              // sortColumn: _sortColumn,
              isLoading: _isLoading,
              footers: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: const Text("Rows per page:"),
                ),
                if (_perPages.isNotEmpty)
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: DropdownButton<int>(
                      value: _currentPerPage,
                      items: _perPages
                          .map((e) => DropdownMenuItem<int>(
                        child: Text("$e"),
                        value: e,
                      ))
                          .toList(),
                      onChanged: (dynamic value) {
                        setState(() {
                          _currentPerPage = value;
                          _currentPage = 1;
                          _resetData();
                        });
                      },
                      isExpanded: false,
                    ),
                  ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Text("$_currentPage - $_currentPerPage of $_total"),
                ),
                IconButton(
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    size: 16,
                  ),
                  onPressed: _currentPage == 1
                      ? null
                      : () {
                    var nextSet = _currentPage - _currentPerPage!;
                    setState(() {
                      _currentPage = nextSet > 1 ? nextSet : 1;
                      _resetData(start: _currentPage - 1);
                    });
                  },
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                ),
                IconButton(
                  icon: const Icon(Icons.arrow_forward_ios, size: 16),
                  onPressed: _currentPage + _currentPerPage! - 1 > _total
                      ? null
                      : () {
                    var nextSet = _currentPage + _currentPerPage!;

                    setState(() {
                      _currentPage = nextSet < _total
                          ? nextSet
                          : _total - _currentPerPage!;
                      _resetData(start: nextSet - 1);
                    });
                  },
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
