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
	^ '"Congratulations! You reached the first lesson of this Smalltalk tutorial! 
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
	^ '"For the first lesson, we used a Transcript, which is an other window, to show the result. This is good, but there is better! If you select Print It (or Ctrl/Cmd + P), you can print the result directly on this window! Try it :"

''Hello World''.
3 + 4.

"Nice! You made throw the first steps, but that wasn''t exactly Smalltalk : it was Pharo''s implementation. In the next lessons, we will learn what a Smalltalk message is."

LearnSmalltalk next.'
]

{ #category : #lessons }
SmalltalkLesson class >> lesson03 [

	^ '"Smalltalk code is composed of 2 (or 3) things : objects, messages and (sometimes) arguments, always separated by a space. There is 3 kind of messages in Smalltalk. The first ones are unary messages, messages that does not take an argument. For exemple, "

3 isPrime.
Bag isNil.

"When you execute this code, the message (isOdd, isNil) is sent to the object (3, Bag) which evaluates it. The dot at the end of the line means ''Do It''. It is not very relevant for now because we execute one line at a time, but you will soon understand how important it can be."

LearnSmalltalk next.'
]

{ #category : #lessons }
SmalltalkLesson class >> lesson04 [

	^ '"Then, we have binary messages. It is special cases (you will understand how in the next lesson) to stay close to what we''re used to. Binary messages can only be one or two characters from this list :

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

^ '"The last kind of messages are keywords messages. They are easy to recognise, as they always end with a column ('':''). Also, they take an argument :"

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
SmalltalkLesson class >> listOfLessons [
^ #(lesson01 lesson02 lesson03 lesson04 lesson05)
]

{ #category : #control }
SmalltalkLesson class >> nextLesson: anInteger [

	| nameOfLesson |
	nameOfLesson := self listOfLessons at: anInteger.
	^ self perform: nameOfLesson.
]
