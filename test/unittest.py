#!/usr/bin/env python
# encoding: utf-8
"""
test.py

Unit testing for XOR Encryption

Created by Kyle Banks on 2013-10-09.
"""

import os

### TODO:
###     Pass the string to encrypt from the command line, and validate that the encryption runs properly
###     rather than using a constant output based on kylewbanks.com
successResult = " :=.43*-:8m2$."

# Returns the result of a shell command as a string, synchronously
def execCmd(cmd):
	return os.popen(cmd).read()
	
# Executes the appropriate test and validates the output
def runTest(cmd, lang):
	output = execCmd(cmd)
	result = False
	
	if(successResult in output):
		result = True
		
	if(result):
		print(lang + ": PASS")
	else:
		print(lang + ": FAILED")
	
	print(output)
	return result	
		
# C Test Cases
def testC(): 
	execCmd("gcc ../C/main.c")
	return runTest("./a.out", "C")
	
# C++ Test Cases
def testCpp(): 
	execCmd("g++ ../C++/main.cpp")
	return runTest("./a.out", "C++")
	
# Groovy Test Cases
# TODO: Use groovy based on PATH variable, not hardcoded path to groovy
def testGroovy():
	return runTest("/usr/local/groovy/bin/groovy ../Groovy/XOREncryption.groovy", "Groovy")	

# Java Test Cases
def testJava():
	execCmd("javac ../Java\ \(Android\ compatible\)/XOREncryption.java")
	execCmd("cd ../Java\ \(Android\ compatible\)/") #TODO: Shouldn't have to go into the directory to execute Java
	return runTest("java XOREncryption", "Java")

# Python Test Cases
def testPython(): 
	return runTest("python ../Python/XOREncryption.py", "Python")

# Objective-C Test Cases
def testObjectiveC():
	execCmd("clang -fobjc-arc ../Objective-C/main.m")
	return runTest("./a.out", "Objective-C") #TODO: For some reason this always fails, even though the output is correct (seems asynchronous almost)

# Executes all tests
def main():
	print("Executing tests...")
	print("------------------------------\n")
	
	pythonSuccess = testPython()
	cSuccess = testC()
	cppSuccess = testCpp()
	groovySuccess = testGroovy()
	javaSuccess = testJava()
	objcSuccess = testObjectiveC()
	
	if(pythonSuccess and cSuccess and cppSuccess and groovySuccess and javaSuccess and objcSuccess):
		print("\nAll tests successful.")
	else:
		print("\nERROR: Not all tests were successful.")

    
if __name__ == '__main__':
	main();