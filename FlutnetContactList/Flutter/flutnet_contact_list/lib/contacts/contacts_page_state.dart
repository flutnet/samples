import 'package:flutnet_contact_list_bridge/flutnet_contact_list/service_library/data/contact.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class ContactsPageState extends Equatable {
  final List propss;
  ContactsPageState([this.propss]);

  @override
  List<Object> get props => (propss);
}

// Unitialized
class UnContactsPageState extends ContactsPageState {
  final bool showIndicator;

  UnContactsPageState({this.showIndicator = true});

  @override
  String toString() => "UnPatientsPageState";
}

class InContactsPageState extends ContactsPageState {
  // Indicate if more items has to be loaded
  final bool hasReachedMax;

  /// Item visualized on the contact list
  final List<Contact> contacts;

  InContactsPageState({
    @required this.contacts,
    this.hasReachedMax = false,
  }) : super([
          contacts,
          hasReachedMax,
        ]);

  factory InContactsPageState.initial() {
    return InContactsPageState(contacts: [], hasReachedMax: false);
  }

  InContactsPageState copyWith({
    List<Contact> contacts,
    bool hasReachedMax,
  }) {
    return InContactsPageState(
      contacts: contacts ?? this.contacts,
      hasReachedMax: hasReachedMax ?? this.hasReachedMax,
    );
  }

  @override
  String toString() {
    return ''' InPatientsPageState {
      patientsCount: ${this.contacts.length},
      hasMoreToLoad: ${this.hasReachedMax},
    }''';
  }
}

class ErrorContactsPageState extends ContactsPageState {
  final String errorMessage;

  ErrorContactsPageState(this.errorMessage);

  @override
  String toString() => 'ErrorPatientsPageState';
}
