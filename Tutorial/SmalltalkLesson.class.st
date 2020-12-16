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
	^ '"This is the second lesson."'
]

{ #category : #lessons }
SmalltalkLesson class >> lesson03 [

	^ '"Smalltalk code is composed of 2 to 3 things : an object, a message and (sometimes) an argument. They are separated by a space.

There is 3 kind of messages in Smalltalk. The first ones are unary messages, messages that does not take an argument. For exemple, "

3 isPrime.
Bag isNil.
Transcript close.

"When you execute this code, the message (isOdd, isNil, close) is sent to the object (3, Bag, Transcript) which evaluates it. The dot at the end of the line means ''Do It''. It is not very relevant for now because we execute one line at a time, but you will soon understand how important it can be."

LearnSmalltalk next.'
]

{ #category : #lessons }
SmalltalkLesson class >> lesson04 [

	^ '"lesson 4"'
]

{ #category : #lessons }
SmalltalkLesson class >> listOfLessons [
^ #(lesson01 lesson02)
]

{ #category : #control }
SmalltalkLesson class >> nextLesson: anInteger [

	| nameOfLesson |
	nameOfLesson := self listOfLessons at: anInteger.
	^ self perform: nameOfLesson.
]
