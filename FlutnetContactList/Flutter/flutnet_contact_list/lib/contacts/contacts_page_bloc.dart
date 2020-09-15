import 'package:bloc/bloc.dart';
import 'package:flutnet_contact_list/contacts/index.dart';

class ContactsPageBloc extends Bloc<ContactsPageEvent, ContactsPageState> {
  static final ContactsPageBloc _blocSingleton = ContactsPageBloc._internal();
  factory ContactsPageBloc() {
    return _blocSingleton;
  }
  ContactsPageBloc._internal();

  @override
  ContactsPageState get initialState => UnContactsPageState();

  /*
  @override
  Stream<PatientsPageState> transform(Stream<PatientsPageEvent> events, Stream<PatientsPageState> Function(PatientsPageEvent event) next) {
    return super.transform(
        (events as Observable<PatientsPageEvent>).debounce(
            (_) => TimerStream(true, const Duration(milliseconds: 500))),
        next);
  }
  */

  @override
  Stream<ContactsPageState> mapEventToState(
    ContactsPageEvent event,
  ) async* {
    try {
      yield await event.applyAsync(currentState: state, bloc: this);
    } catch (_) {
      print('ContactsBloc ' + _?.toString());
      yield state;
    }
  }
}
