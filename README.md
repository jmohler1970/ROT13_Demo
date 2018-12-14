# ROT13_Demo
Demonstrates a ROT13 library

# Introduction

Rob Brooks-Bilson did most of the work on this. I just did some cleanup and expanded it to similar variations.

## What is ROT13?

ROT13 stands for Rotate 13. It takes every character in a string and moves it down the alphabet 13 places. If it falls off the end it wrap around to the front. It is the quintessential bad encryption algorithm. Why 13 places? It serves as its own decrypter.

## What is ROT5?

ROT5 does a similar change to numbers. For each and every number in a string, add 5. If it goes over, subtract 5 instead.

## What is ROT18?

It is ROT13 + ROT5.

## What is ROT47

ROT47 does the same operation for all ASCII characters from `!` to `~`


# Import

Don't use this to protect any data that might have any value. All of these are increadibly insecure.


# Resources

- https://github.com/jmohler1970/ROT13_Demo

- https://github.com/jmohler1970/ROT13

- https://en.wikipedia.org/wiki/ROT13

- https://stackoverflow.com/questions/tagged/rot13

- https://cflib.org/udf/Rot13 (Original)