
                  Navigator.of(context).pop();
                  Navigator.of(context).pop();

                  to hide alert dialog and Circular loading 


# very widget in flutter needs to extend "Stateless widget or stateful widget"

# force you to add build method to draw pixels into the screen  

# @override 
" decorative "

# anonymous function :
onPressed: ()=> print('Answer 2! chosen'),

or

onPressed: (){ print('Answer 3! chosen');},

you cant call it from any where else because it deosnt have a name



# imagine Widget build as Loop() in arduino
it reexecutes each time flutter want to rebuild a screen
so you ATTENTION dont define dynamique variables there it will cause issues 
it will be redefined each time it gets rebuild


# Convention 

private class in dart :
class _MyClass

publoc class in dart :
class _MyClass


in general if you want private you add '_' before it
note : you need to put '_' everywhere

example :
var _count = 0;

_count = _count + 1;

# Rule one widget per file

# empty dart file 

type st it will help you write code fast


  // " Function "
  //this att holds (store in future )a function or a pointer to a function
  // "VoidCallback"
  //tells flutter to get a  void function and that deos not return anything 
  // is used if you get an error with Function

# data strucutre built into DART

# MAP

syntax :
var = {'key':'value','key','value', //add how many you like };


    //list var idf = []
    // inside that list add what you want map , another list, ect..
    // index 0 of qst Map yealds the first questionText ect..


...
spread operator 
 what these three dots do here is they take a list which is exactly what we have here "var qst" and they pull all the values in the list out of it and add them to the surrounding list as individual values,
 so that we dont add a list to list , but the values of a list to a list having ,o nly one list without a nested list.


   // " Function "
  //this att holds (store in future )a function or a pointer to a function
  // "VoidCallback"
  //tells flutter to get a  void function and that deos not return anything 
  // is used if you get an error with Function
  final String answerText;

# const vs final
final :runtime const
const :compile time const

# Dart specific
syntax

const idf = // cannot be redefined(cannot be overwritten)
idk = xxx wrong
or
var idf = const // this allows you to redefine(overwrite) that idf
syntax

idf =

# Dart new concept ( null safety)

pubspec.yaml

environment:
  sdk:">2.12.0 <3.0.0"

2.12.0 has null safety on ( meaning it will generate and error
in your code incase there are potential null values(extra checks))

2.11.0  has null safety OFF


# as 'type' 
as String , used to specify the type of variable


String? idf = 'test';
? means that can hold null



if else in Widgets

 body : bool ? Column(...)
 :

if true we execute Column
 : means else
 
 be aware after ? u can only put on thing , here we have Column 
 Column can contain alot of stuff no worries but 
 you need to respect the syntax after ? only one thing



decoration: TextDecoration.none, to remove double underline on text
