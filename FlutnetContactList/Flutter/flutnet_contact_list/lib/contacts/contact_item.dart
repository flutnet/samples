import 'package:flutter/material.dart';
import 'package:flutnet_contact_list_bridge/flutnet_contact_list/service_library/data/contact.dart';

///
/// This widget is an item on the contact list:
/// show the image and informations about the contact.
///
class ContactItem extends StatefulWidget {
  final Contact contact;

  final void Function(Contact patient) onTap;

  ContactItem(
    this.contact, {
    Key key,
    this.onTap,
  }) : super(key: key);

  @override
  _ContactItemState createState() => _ContactItemState();
}

class _ContactItemState extends State<ContactItem> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    String avatarLetters = "";
    if (widget.contact != null &&
        widget.contact.name != null &&
        widget.contact.name.length > 0) {
      avatarLetters = avatarLetters + widget.contact.name[0];
    }
    if (widget.contact != null &&
        widget.contact.lastname != null &&
        widget.contact.lastname.length > 0) {
      avatarLetters = avatarLetters + widget.contact.lastname[0];
    }
    avatarLetters = avatarLetters.toUpperCase();

    bool userHaveImage = widget.contact.image != null;

    return ListTile(
      onTap: () => widget.onTap(widget.contact),
      leading: CircleAvatar(
        backgroundImage:
            userHaveImage ? MemoryImage(widget.contact.image) : null,
        child: userHaveImage == false
            ? ClipOval(
                child: AspectRatio(
                    aspectRatio: 1,
                    child: Center(
                        child: Text(
                      avatarLetters,
                      style: TextStyle(fontSize: 22, color: Colors.white),
                    ))),
              )
            : null,
      ),
      title: Text(
        "${widget.contact.name ?? '?'} ${widget.contact.lastname ?? '?'}",
      ),
      subtitle: Text(
        "${widget.contact.phoneNumber ?? ''}",
      ),
    );
  }
}
