import 'dart:async';
import 'package:meta/meta.dart';
import 'package:flutnet_contact_list/contacts/index.dart';
import 'package:flutnet_contact_list_bridge/index.dart';

@immutable
abstract class ContactsPageEvent {
  @override
  String toString() => "ContactsPageEvent";

  Future<ContactsPageState> applyAsync(
      {ContactsPageState currentState, ContactsPageBloc bloc});

  // Use the same service id declared in Xamarin
  final ContactService _contactService = ContactService("contact_service");
}

class LoadContacts extends ContactsPageEvent {
  @override
  String toString() => "LoadContactsPageEvent";

  @override
  Future<ContactsPageState> applyAsync({
    ContactsPageState currentState,
    bloc,
  }) async {
    if (currentState is UnContactsPageState) {
      try {
        //* Add contact to the list
        var result = await _contactService.queryContacts(
          limit: 12,
          startIndex: 0,
        );

        bool hasReachedMax = result.contacts.length >= result.totalCount;

        return InContactsPageState(
          hasReachedMax: hasReachedMax,
          contacts: result.contacts,
        );
      } on Exception catch (_) {
        print("${this.toString()} + ${_?.toString()}");
        return ErrorContactsPageState(_?.toString());
      }
    }
    return currentState;
  }
}

class FetchContacts extends ContactsPageEvent {
  @override
  String toString() => "FetchContacts";

  @override
  Future<ContactsPageState> applyAsync({
    ContactsPageState currentState,
    bloc,
  }) async {
    if (currentState is InContactsPageState) {
      try {
        //* Current contact loaded count
        int loadedCount = currentState?.contacts?.length ?? 0;

        //* Add contact to the list
        var result = await _contactService.queryContacts(
          limit: 12,
          startIndex: loadedCount,
        );

        //* Load all the contacts
        List<Contact> allLoadedContact =
            currentState.contacts + (result.contacts ?? []);

        bool hasReachedMax = allLoadedContact.length >= result.totalCount;

        return currentState.copyWith(
          hasReachedMax: hasReachedMax,
          contacts: allLoadedContact,
        );
      } catch (_) {
        print("${this.toString()} + ${_?.toString()}");
        return ErrorContactsPageState(_?.toString());
      }
    }
    return currentState;
  }
}
