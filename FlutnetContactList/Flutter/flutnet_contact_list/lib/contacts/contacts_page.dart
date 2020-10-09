import 'package:flutnet_contact_list/ui/item_loader.dart';
import 'package:flutnet_contact_list_bridge/index.dart';

import 'index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ContactsPage extends StatefulWidget {
  const ContactsPage({Key key}) : super(key: key);

  @override
  _ContactsPageState createState() => _ContactsPageState();
}

class _ContactsPageState extends State<ContactsPage> {
  final ScrollController _scrollController = ScrollController();
  final _scrollThreshold = 50.0;

  final ContactsPageBloc _bloc = ContactsPageBloc();

  _ContactsPageState();

  void _onScroll() {
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.position.pixels;

    if (maxScroll - currentScroll <= _scrollThreshold &&
        !_scrollController.position.outOfRange) {
      _bloc.add(FetchContacts()); // Fatch more data
    }
  }

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
    _bloc.add(LoadContacts()); // Load the page
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      cubit: _bloc,
      builder: (BuildContext context, ContactsPageState state) {
        // Show the loading indicator when the page is not initialized
        if (state is UnContactsPageState) {
          return Center(child: CircularProgressIndicator());
        }

        // Display the error
        if (state is ErrorContactsPageState) {
          return Center(
            child: Text(state.errorMessage),
          );
        }

        // The page is loaded OK
        if (state is InContactsPageState) {
          if (state.hasReachedMax && state.contacts.length <= 0) {
            return Center(
              child: Text("No Contacts found!"),
            );
          }

          // Build the list of contacts
          return Scrollbar(
            child: ListView.builder(
              itemCount: state.hasReachedMax
                  ? state.contacts.length
                  : state.contacts.length +
                      1, // If there are more data to view we show a circular indicator as last item
              controller: _scrollController,
              itemBuilder: (context, index) {
                // If there are more data to view we show a circular indicator as last item
                if (index >= state.contacts.length) {
                  return Center(child: ItemLoader(60));
                }

                // The contanct to view
                Contact contanct = state.contacts[index];

                return ContactItem(
                  contanct,
                );
              },
            ),
          );
        }

        return Text("App error!!!");
      },
    );
  }
}
