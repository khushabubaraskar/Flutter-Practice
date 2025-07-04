import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
class SignUpForm extends StatefulWidget {

  @override
  State<SignUpForm> createState() =>SignUpFormState();
}

class SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormBuilderState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
        backgroundColor: Color(0xFF4589FF),
      ),
      body: Padding(
    padding: const EdgeInsets.all(16.0),
    child:  FormBuilder(
    key: _formKey,
    child:SingleChildScrollView(
    child:Column(
    children: [
    //Name
    FormBuilderTextField(
    name: 'name',
    decoration: InputDecoration(
    labelText: 'Full Name',
    ),
    validator: FormBuilderValidators.compose([
    FormBuilderValidators.required(errorText: 'Please enter your name'),
    FormBuilderValidators.match(
    RegExp(r"^[a-zA-Z\s]+$"),
    errorText: 'Only letters and spaces allowed',
    ),
    ]),
    ),
    const SizedBox(height: 10),

    //email
    FormBuilderTextField(
    name: 'email',
    decoration: InputDecoration(
    labelText: 'Email',
    // hintText: 'e.g. John@gmail.com',
    // prefixIcon: Icon(Icons.email_outlined),
    ),
    validator: FormBuilderValidators.compose([
    FormBuilderValidators.required(errorText: 'Please enter your Email'),
    FormBuilderValidators.email()
    ]),
    ),
    const SizedBox(height: 10),

    //Password
    FormBuilderTextField(
    name: 'Password',
    decoration: InputDecoration(
    labelText: 'Password',

    ),
    obscureText: true,
    validator: FormBuilderValidators.compose([
    FormBuilderValidators.required(errorText: 'Please enter your Password'),
    FormBuilderValidators.password()
    ]),
    ),
    const SizedBox(height: 10),

      // Confirm Password
      FormBuilderTextField(
        name: 'Password',
        decoration: InputDecoration(
          labelText: 'Confirm Password',
        ),
        obscureText: true,
        validator: FormBuilderValidators.compose([
          FormBuilderValidators.required(errorText: 'Please enter your Password'),
          FormBuilderValidators.password(),

        ]),
      ),
      const SizedBox(height: 10),



    //CheckBox
    FormBuilderCheckbox(
    name:'CheckBox',
    title:Text('Agree Terms And Conditions') ,
    ),
    const SizedBox(height: 10),

      MaterialButton(
        color: Color(0xFF4589FF),
        onPressed: () {
          // Validate and save the form values
          _formKey.currentState?.saveAndValidate();
          debugPrint(_formKey.currentState?.value.toString());

          // On another side, can access all field values without saving form with instantValues
          _formKey.currentState?.validate();
          debugPrint(_formKey.currentState?.instantValue.toString());
        },
        child: const Text('Login'),
      )
    ],
    ),
    )
    ),
    ),
    );
  }
}