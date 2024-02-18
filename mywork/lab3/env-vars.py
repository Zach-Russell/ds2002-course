#!/usr/bin/env python

import os

TRAVEL_DEST = input('Where in the world would you like to visit? ')
HEIGHT = input('What is your height? ')
FAV_SUBJECT = input('What was your favorite subject in school? ' )

os.environ["TRAVEL_DEST"] = TRAVEL_DEST
os.environ["HEIGHT"] = HEIGHT
os.environ["FAV_SUBJECT"] = FAV_SUBJECT

print(os.getenv("TRAVEL_DEST"))
print(os.getenv("HEIGHT"))
print(os.getenv("FAV_SUBJECT"))
