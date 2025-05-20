import 'package:flutter/material.dart';
import 'package:flutter_project_class/model/student_model.dart';

class StudentView extends StatefulWidget {
  const StudentView({super.key});

  @override
  State<StudentView> createState() => _StudentViewState();
}

class _StudentViewState extends State<StudentView> {

String? city;
final items = [
  const DropdownMenuItem(
    value: 'Kathmandu',
    child: Text("Kathmandu"),
  ),
  const DropdownMenuItem(
    value: 'Pokhara',
    child: Text("Pokhara"),
  ),
  const DropdownMenuItem(
    value: 'Chitwan',
    child: Text("Chitwan"),
  ),
];

final lstCity = ["Kathmandu","Pokhara","Chitwan"];
final List<StudentModel> lstStudents = [];
final fnameController = TextEditingController();
final lnameController = TextEditingController();

final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student ListView'),
      ),
      body: Column(
        children: [
          SizedBox(height: 8),
          SizedBox(height: 8),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "First Name",
                ),
                validator: (value) {
                  if (value == null || value.isEmpty){
                    return "First Name";
                  }
                  return null;
                },
              ),
              SizedBox(height: 8),
              SizedBox(height: 8),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Last Name",
                ),
                validator: (value) {
                  if (value == null || value.isEmpty){
                    return "Please enter first number";
                  }
                  return null;
                },
              ),
              SizedBox(height: 8),
              SizedBox(height: 8),
              DropdownButtonFormField(
                icon: const Icon(Icons.arrow_downward),
                items: items, 
                onChanged: (value){
                  setState(() {
                    city = value;
                  });
                },
                hint: const Text('Selected City'),
                decoration: const InputDecoration(
                  labelText: 'Select City',
                  border: OutlineInputBorder()
                ),
                validator: (value){
                  if(value == null){
                    return 'Please select city';
                  }
                  return null;
                },
              ),
              SizedBox(
                width:double.infinity,
                child: ElevatedButton(
                  onPressed: (){
                    if(_formKey.currentState!.validate() && city != null){
                      StudentModel student = StudentModel(fname: fnameController.text,
                       lname: lnameController.text, city: city!,);
                       setState(() {
                         lstStudents.add(student);
                       });
                    }
                  },
                   child: Text('Add Student'))),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: (){},
                   child: Text('Show Student')
                  )
              ),
              Expanded(child: lstStudents.isNotEmpty? ListView.builder(
                itemCount: lstStudents.length,
                itemBuilder: (context,index){
                  return ListTile(
                    leading: const Icon(Icons.person),
                    title: Text(
                      '${lstStudents[index].fname} ${lstStudents[index].lname}'
                    ),
                    subtitle: Text(lstStudents[index].city),
                    trailing: const Icon(Icons.more_vert),
                    onTap: () {

                    },
                  );
                }
                ) : const Text('No data'))
        ],
      ),
    );
  }
}