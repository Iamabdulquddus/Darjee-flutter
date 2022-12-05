import 'dart:math';
import 'package:flutter/material.dart';
import 'package:responsive_table/responsive_table.dart';

import '../../../../constants/style.dart';

class FabricItemList extends StatefulWidget {
  const FabricItemList({Key? key}) : super(key: key);
  @override
  State<FabricItemList> createState() => _FabricItemListState();
}

class _FabricItemListState extends State<FabricItemList> {
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
        "name": "Customer Name $i",
        "pic": " ",
        "reg": i * 10.00,
        "mobile": "03001234567" ,
        "details": "${i}0.20",
        "actions": [i, 5]
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
          textAlign: TextAlign.start),
      DatatableHeader(
          text: "Customer Name",
          value: "name",
          show: true,
          flex: 2,
          sortable: true,
          editable: true,
          textAlign: TextAlign.left),
      DatatableHeader(
          text: "Picture",
          value: "pic",
          show: true,
          sortable: false,
          sourceBuilder: (value, row) {
            return Container(
              padding: const EdgeInsets.all(5),
              height: 70,
              child: Image.asset(
                'assets/images/islamabad.jpg',
                fit: BoxFit.cover,
              ),
            );
          },
          textAlign: TextAlign.center),
      DatatableHeader(
          text: "Registration Date",
          value: "reg",
          show: true,
          sortable: true,
          textAlign: TextAlign.center),
      DatatableHeader(
          text: "Mobile",
          value: "mobile",
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
                child: Text("Details"),
                onPressed: () {},
              ),
            );
          },
          textAlign: TextAlign.left),
      DatatableHeader(
          text: "Actions",
          value: "actions",
          show: true,
          sortable: false,
          sourceBuilder: (value, row) {
            return Wrap(
              runSpacing: 5,
              spacing: 5,
              children: [
                for(var i =0; i< value.length; i++)
                  ElevatedButton(
                    child: Text("button $i"),
                    onPressed: () {},
                  ),
              ],
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
                Icons.person,
                color: Colors.black,
              ),
              Text(
                '  Customer List',
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
