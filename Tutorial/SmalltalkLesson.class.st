"
This is a class that creates lessons (its instances) for the Tutorial>>LearnSmalltalk .

It shouldn't be used by the user, the instances are pre-defined.

Created by Etienne Mettaz
"
Class {
	#name : #SmalltalkLesson,
	#superclass : #Object,
	#category : #Tutorial
}

{ #category : #lessons }
SmalltalkLesson class >> lesson01 [ 
	^ '"Lesson number 1

Congratulations! You reached the first lesson of this Smalltalk tutorial! 
First, we have to get to know a bit of Pharo, this dialect, and how to get some code running. To execute a line of code, you can right-click on its line and select Do-It on the menu. Let''s try it:"

Transcript open.

"Another way to do it is to press Ctrl + D (Cmd + D) when the cursor is on that line."

Transcript show: ''Hello World!''.

"You can do the same to go to the next lesson:"

LearnSmalltalk next.'
	"To start, you have to know that in Smalltalk, everything is an object. Each operation is just a message sent to an object."
]

{ #category : #lessons }
SmalltalkLesson class >> lesson02 [
	^ '"Lesson number 2

For the first lesson, we used a Transcript, which is an other window, to show the result. This is good, but there is better! If you select Print It (or Ctrl/Cmd + P), you can print the result directly on this window! Try it :"

''Hello World''.

3 + 4.

"Nice! You made throw the first steps, but that wasn''t exactly Smalltalk : it was Pharo''s implementation. In the next lessons, we will learn what a Smalltalk message is."

LearnSmalltalk next.'
]

{ #category : #lessons }
SmalltalkLesson class >> lesson03 [

	^ '"Lesson number 3

Smalltalk code is composed of 2 (or 3) things : objects, messages and (sometimes) arguments, always separated by a space. There is 3 kind of messages in Smalltalk. The first ones are unary messages, messages that does not take an argument. For exemple, "

3 isPrime.

Bag isNil.

"When you execute this code, the message (isOdd, isNil) is sent to the object (3, Bag) which evaluates it. The dot at the end of the line means ''Do It''. It is not very relevant for now because we execute one line at a time, but you will soon understand how important it can be."

LearnSmalltalk next.'
]

{ #category : #lessons }
SmalltalkLesson class >> lesson04 [

	^ '"Lesson number 4

Then, we have binary messages. It is special cases (you will understand how in the next lesson) to stay close to what we''re used to. Binary messages can only be one or two characters from this list :

 + / \ * ~ < > = @ % | & ? ! ,

lets see some examples :"

3 + 6.
3 = 5.
65.3 / 12.
''Hello'', '' world!''.
2@5.

"The Last exemple creates a Point, an instance of the class Point. 
Of course, one can also have more than one action on each line :"

6 * 12 / 8.
''Hi'', '', '', ''my name '', ''is'', '' Etienne.''.

6 * 12 / 8 >= 10.
20 * 3 + 4.
3 + 4 * 20.

"The last 2 exemples show one important to remember : messages (of the same kind) are evaluated from left to right. But we''ll talk about that again. What we have to know for now is that we can modify that with parenthesis :"

20 * (3 + 4).
3 + (4 * 20).

LearnSmalltalk next.'
]

{ #category : #lessons }
SmalltalkLesson class >> lesson05 [

^ '"Lesson number 5

The last kind of messages are keywords messages. They are easy to recognise, as they always end with a column ('':''). Also, they take an argument :"

4 between: 0 and: 6.

Color r:1 g:1 b:0.

"Messages can now get longer, and span across many lines. That''s when the dot begins to be of importance :"

Color r:1 
		g:0 
		b:1.
		
"Select all 3 lines and print it. The result is the same.

A very interesting property of the language is the loops. There isn''t any special keyword, just some messages sent to object. And if you feel that it''s not the first time I say it, you''re right. But that''s ''all'' what Smalltalk does."

3 > 4 ifTrue: ''We have a problem''
		ifFalse: '' 3 <= 4''.

"Let''s take a look at this last exemple. First, the binary message is evaluated. Then it is sent the message ifTrue: . Sending this message to a ''true'' object will make the argument (here a string) to be evaluated. In our case, the result was ''false'', so it will just go further and ignore the argument. And the exact same applies to the ifFalse: method.

We will come back to this very powerful constructs, but first, we have to see some basic elements of the language."

LearnSmalltalk next.'
]

{ #category : #lessons }
SmalltalkLesson class >> lesson06 [

^ '"Lesson number 6

Now that we''ve seen the 3 kind of messages, we can discuss their evaluation priorities :
	1) the unary messages,
	2) the binary messages,
	3) the keyword messages.
when there is more than one message of a kind, they are evaluated from left to right.
Here are some example : try to guess the outcome !"

3 + 4 between: 2 squared + 1 and: 5 factorial.

4 squared raisedTo: 1 + 2 factorial.

"An other useful construct is cascade messages : to send more than one message to the same object, one can write "

Transcript open; clear; show: ''Hello''; cr; show: ''World''. 

"instead of "

Transcript open.
Transcript clear.
Transcript show: ''Hello''.
Transcript cr.
Transcript show: ''World''.

"Let''s see if you can do it : modify the next line to call the ''next'' method twice, as next lesson is empty!"

LearnSmalltalk next.'
]

{ #category : #lessons }
SmalltalkLesson class >> lesson07 [

^ '"Lesson number 7

We have seen that strings are written between ''. Of course they are objects, thus they have their own memory. That''s why this is false :"

(5 asString) == (5 asString).
"Note here that ''=='' compare the identity and ''='' compare the value :"

(5 asString) = (5 asString).

"Each string is unique, as it has its own memory. We can''t compare strings, but we can compare symbols. Symbol is just some charaters preceeded by a # char :"

''aString'' asSymbol.

(5 asString) asSymbol == (5 asString) asSymbol.

"Further, we have single characters that are defined by a $ :"

$a class.

$e <= $j.

LearnSmalltalk perform: #next.'
]

{ #category : #lessons }
SmalltalkLesson class >> lesson08 [

^ '"Lesson number 8

Until now, we have only used build-in variables, we still haven''t declare any. This is really easy in Smalltalk :"

| a b aString aNonNumber |

"Yes, that''s all. Of course they have no value yet, but, if you know other object-oriented programming languages, you''re probably wondering what type those variables are. 
They have none. A variable can by assigned any valid value, with the '':='' symbol :
(you have to select all code from variable declaration to the line you want to print)"

a := 3.
a class.

b := -2.6.
b class.

aString := ''I am a string''.
aString class.
aString := false.
aString class.

"In the next lesson, we will try to understand how it works."

LearnSmalltalk next.'
]

{ #category : #lessons }
SmalltalkLesson class >> lesson09 [

^ '"Lesson number 9

How is the class determined, then? Well, class is just a message sent. The ''class'' method is just a method from the class Object, which is the root of the ''class tree''. Any other class is, directly or not, a subclass of Object, and each of them overrides the ''class'' method (each class has exactly one direct superclass). When a method is called, the compiler look into the object''s lowest class for an implementation of this method. If nothing is to be found, it will look into the higher class implementation, and so on until an implementation is found, or the Object class is search without any result, what will lead to an type error (didNotUnderstand:) :"

| aNonNumber |
aNonNumber := $s.
aNonNumber isPrime.

"If an implementation is found, then the code is run. That''s all! "


LearnSmalltalk next.

"NB: To be more precise, the root class in Pharo is ''ProtoObject'', which is not the case in the original Smalltalk-80. But the idea stays the same."'
]

{ #category : #lessons }
SmalltalkLesson class >> lesson10 [

^ '"Lesson number 10

Here



LearnSmalltalk next.

'
]

{ #category : #lessons }
SmalltalkLesson class >> listOfLessons [
^ #(lesson01 
	lesson02 
	lesson03 
	lesson04 
	lesson05 
	lesson06 
	notALesson 
	lesson07 
	lesson08 
	lesson09)
]

{ #category : #control }
SmalltalkLesson class >> nextLesson: anInteger [

	| nameOfLesson |
	nameOfLesson := self listOfLessons at: anInteger.
	^ self perform: nameOfLesson.
]

{ #category : #lessons }
SmalltalkLesson class >> notALesson [

^ '"It seems you had a problem, you shouldn''t be here. Let''s go back and try again :"

LearnSmalltalk previous.'
]
