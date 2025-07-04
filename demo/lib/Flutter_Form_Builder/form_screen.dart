import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:intl/intl.dart';

class SimpleForm extends StatefulWidget {
  const SimpleForm({super.key});

  @override
  State<SimpleForm> createState() => SimpleFormState();
}

class SimpleFormState extends State<SimpleForm> {
  final _formKey = GlobalKey<FormBuilderState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xFF4589FF),
          title:  Text('Simple Form',
              style: TextStyle(
                color: Colors.black,
              ),
          )
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
                hintText: 'e.g. John',
                prefixIcon: Icon(Icons.person),
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
                hintText: 'e.g. John@gmail.com',
                prefixIcon: Icon(Icons.email_outlined),
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
                // hintText: 'e.g. John@gmail.com',
                prefixIcon: Icon(Icons.password_outlined),

              ),
              obscureText: true,
              validator: FormBuilderValidators.compose([
                FormBuilderValidators.required(errorText: 'Please enter your Email'),
                FormBuilderValidators.email()
              ]),
            ),
            const SizedBox(height: 10),

            //DOB
            FormBuilderDateTimePicker(
              name: 'Date of Birth',
              format: DateFormat('dd/MM/yyyy'),
              inputType: InputType.date,
              decoration: InputDecoration(
                labelText: 'Date of Birth',
                prefixIcon: Icon(Icons.calendar_today),
              ),
              firstDate: DateTime(1900),
              lastDate: DateTime.now(),
              validator: FormBuilderValidators.required(),
            ),
            const SizedBox(height: 10),

            // Multiple Checkbox
            FormBuilderCheckboxGroup(
              name:'Language',
              options: [
                FormBuilderFieldOption(
                    value:'Java'
                ),
                FormBuilderFieldOption(
                    value:'Python'
                ),
              ],
            ),
            const SizedBox(height: 10),

            //Date Range Picker
            FormBuilderDateRangePicker(
              name:'Date',
              firstDate:DateTime(1900) ,
              lastDate: DateTime(2050),
              decoration: InputDecoration(
                label: Text('Select Date Range'),
              ),
            ),
            const SizedBox(height: 10),

            //Date Time Picker
            FormBuilderDateTimePicker(
              name: 'Time',
              decoration: InputDecoration(
                label: Text('Select Date and Time'),
              ),
            ),
            const SizedBox(height: 10),

            //DropDown
            FormBuilderDropdown(
              name: 'name',
              decoration: InputDecoration(labelText: 'Choose a name'),
              items: [
                DropdownMenuItem(value: 'Khushabu', child: Text('Khushabu')),
                DropdownMenuItem(value: 'Mahek', child: Text('Mahek')),
                DropdownMenuItem(value: 'Jiya', child: Text('Jiya')),
              ],
            ),
            const SizedBox(height: 10),

            //RadioGroup
            FormBuilderRadioGroup(
                name: 'Gender',
                options: [
                  FormBuilderFieldOption(
                   value: 'Male',
                  ),
                  FormBuilderFieldOption(
                    value: 'Female',
                  )
                ],
            ),
            const SizedBox(height: 10),

            //Range Slider
            FormBuilderRangeSlider(
              name:'Slider',
              max: 100,
              min:1
            ),
            const SizedBox(height: 10),

            //Slider
            FormBuilderSlider(
              name: 'slider',
              initialValue: 1.0,
              min: 1.0,
              max: 100.0,
              divisions: 10,
              decoration: InputDecoration(
                labelText: 'Select Range',
              ),
            ),
            const SizedBox(height: 10),

            //Switch
            FormBuilderSwitch(
              name: 'OnOff',
              title: Text('Save Date'),
            ),
            const SizedBox(height: 10),

            //CheckBox
            FormBuilderCheckbox(
              name:'CheckBox',
              title:Text('Agree Terms And Conditions') ,
            ),
            const SizedBox(height: 10),
          ],
        ),
      )
        ),
    ),
    );

  }
}


