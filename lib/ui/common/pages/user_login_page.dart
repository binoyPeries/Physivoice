import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:physivoice/ui/common/components/default_app_bar.dart';
import 'package:physivoice/ui/common/components/default_scaffold.dart';
import 'package:physivoice/ui/common/forms/text_input_form_field.dart';

class UserLoginPage extends StatelessWidget {
  const UserLoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormBuilderState>();
    return DefaultScaffold(
      appBar: const DefaultAppBar(title: "Login"),
      body: Column(
        children: [
          FormBuilder(
              key: formKey,
              child:
                  TextInputFormField(fieldName: "username", label: "Username")),
        ],
      ),
    );
  }
}
