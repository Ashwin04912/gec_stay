import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gecw_lakx/application/hostel_process/owner_home/owner_home_bloc.dart';
import 'package:gecw_lakx/domain/hostel_process/hostel_resp_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OwnerHomeScreen extends StatefulWidget {
  const OwnerHomeScreen({super.key});

  @override
  State<OwnerHomeScreen> createState() => _OwnerHomeScreenState();
}

class _OwnerHomeScreenState extends State<OwnerHomeScreen> {
  List<HostelResponseModel>? hostelResponseModel;
  bool _isSearching = false;
  final TextEditingController _searchController = TextEditingController();
  String _searchQuery = "";
  String? ownerUserId;

  @override
  void initState() {
    super.initState();

    _loadUserIdAndFetchHostels();
  }

  Future<void> _loadUserIdAndFetchHostels() async {
    debugPrint("this is init state");
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String? userId = prefs.getString('owner_userid');
    
    setState(() {
      ownerUserId = userId;
    });
    debugPrint("fuction userId printed $ownerUserId");

    if (userId != null) {
      context
          .read<OwnerHomeBloc>()
          .add(OwnerHomeEvent.getOwnersHostelList(userId: userId.toString()));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("No data found. Please log in again.")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF1F1F1F),
        elevation: 0,
        automaticallyImplyLeading: false,
        title: _isSearching
            ? TextField(
                controller: _searchController,
                style: const TextStyle(color: Colors.white),
                decoration: const InputDecoration(
                  hintText: 'Search your hostel',
                  hintStyle: TextStyle(color: Colors.white70),
                  border: InputBorder.none,
                ),
                onChanged: (value) {
                  setState(() {
                    _searchQuery = value;
                  });
                },
              )
            : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'My Hostels',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 2),
                  Text(
                    'Manage your properties',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      color: Colors.white70,
                    ),
                  ),
                ],
              ),
        actions: [
          IconButton(
            icon: _isSearching
                ? const Icon(Icons.clear, color: Colors.white)
                : const Icon(Icons.search, color: Colors.white),
            onPressed: () {
              setState(() {
                if (_isSearching) {
                  _searchController.clear();
                  _searchQuery = "";
                }
                _isSearching = !_isSearching;
              });
            },
          ),
        ],
      ),
      body: BlocConsumer<OwnerHomeBloc, OwnerHomeState>(
        listener: (context, state) {
          state.hostelGetFailureOrSuccess.fold(() {}, (either) {
            either.fold((failure) {
              final message = failure.maybeWhen(
                serviceUnavailable: () => "Try again later",
                orElse: () => "An error occurred",
              );
              ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: Text(message)));
            }, (hostels) {
              setState(() {
                hostelResponseModel = hostels;
              });
            });
          });
        },
        builder: (context, state) {
          if (hostelResponseModel == null || hostelResponseModel!.isEmpty) {
            return Column(
              children: [
                ElevatedButton(
                    onPressed: () {
                      debugPrint(ownerUserId);
                      context.read<OwnerHomeBloc>().add(
                          OwnerHomeEvent.getOwnersHostelList(userId: ownerUserId!));
                    },
                    child: Text("fetch")),
                const Center(
                  child: Text(
                    "No hostels found.",
                    style: TextStyle(fontSize: 16, color: Colors.black54),
                  ),
                ),
              ],
            );
          }

          final filteredHostels = hostelResponseModel!
              .where((hostel) => hostel.hostelName
                  .toLowerCase()
                  .contains(_searchQuery.toLowerCase()))
              .toList();

          return Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.lightBlue.shade100, Colors.white],
              ),
            ),
            child: ListView.separated(
              padding: const EdgeInsets.all(8),
              itemCount: filteredHostels.length,
              separatorBuilder: (context, index) => const SizedBox(height: 10),
              itemBuilder: (context, index) {
                final hostel = filteredHostels[index];
                return Container(
                  width: 210,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.05),
                        blurRadius: 5,
                        spreadRadius: 3,
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.network(
                          "https://content.jdmagicbox.com/comp/ghaziabad/w4/011pxx11.xx11.191217190807.e5w4/catalogue/rpn-boy-s-hostel-dasna-ghaziabad-hostels-adyayiouqi.jpg",
                          height: 120,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    hostel.hostelName,
                                    style: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black,
                                    ),
                                  ),
                                  const Spacer(),
                                  const Icon(Icons.star,
                                      color: Colors.amber, size: 15),
                                  const SizedBox(width: 5),
                                  const Text(
                                    '(12)',
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black87,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 5),
                              Text(
                                hostel.description,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black87,
                                ),
                              ),
                              const SizedBox(height: 5),
                              RichText(
                                text: TextSpan(
                                  text: '${hostel.rent}/-',
                                  style: const TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                  children: const [
                                    TextSpan(
                                      text: '  /month',
                                      style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w300,
                                        color: Colors.black45,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
