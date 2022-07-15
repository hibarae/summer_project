import 'package:flutter/material.dart';
import 'package:flutter_opus/defaults.dart';
import 'package:flutter_opus/pages/contacts.dart';

class ContactsPage extends StatelessWidget {
  const ContactsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultScaffold(
      title: "Contacts",
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            ContactRegistration(),
            Padding(padding: EdgeInsets.all(15)),
            Text("Registered Numbers"),
            ContactTable()
          ],
        ),
      ),
    );
  }
}

class ContactTable extends StatelessWidget {

  const ContactTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DataTable(
      columns: const <DataColumn>[
        DataColumn(label: Text("Name")),
        DataColumn(label: Text("Phone")),
        DataColumn(label: Text("Remove")),
      ],
      rows: <DataRow>[
        DataRow(
          cells: <DataCell>[
            const DataCell(Text('Noah Struck')),
            const DataCell(Text('567-240-1026')),
            DataCell(TextButton(style: TextButton.styleFrom(primary: Colors.black), child: const Icon(Icons.highlight_remove_rounded, size: 20), onPressed: () {  }, )),
          ],
        ),
      ],
    );
  }
}


class ContactRegistration extends StatefulWidget {
  const ContactRegistration({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => ContactRegistrationState();

}

class ContactRegistrationState extends State<ContactRegistration> {

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(width: MediaQuery.of(context).size.width / 2, child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Name',
              ),
            ),
            const Padding(padding: EdgeInsets.all(4)),
            TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Phone',
              ),
            )
          ],
        )),
        Expanded(child: TextButton(onPressed: () {}, child: const Text("Add")))
      ],
    );
  }

}
