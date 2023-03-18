# Project-001 : Roman Numerals Converter Application (Python Flask) deployed on AWS EC2 with Terraform and AWS CLI
## Description
The Roman Numerals Converter Application aims to convert the given number to the Roman numerals. The application is to be coded in Python and deployed as a web application with Flask on AWS Elastic Compute Cloud (EC2) Instance using Terraform and CLI Services. 

## Problem Statement

- Your company has recently started on a project that aims to be one of the most used unit converters and formulas website. Roman Numerals Converter is the part of the project. So you and your colleagues have started to work on the project.

- As a first step of the project, you will write a basic Python Flask program that converts the given number (between 1 and 3999) to the roman numerals. The program converts only from numbers to Roman numerals, not vice versa and during the conversion following notes should be taken into consideration.
   
```
Roman numerals are represented by seven different symbols: I, V, X, L, C, D and M.
- Symbol       Value
- I             1
- V             5
- X             10
- L             50
- C             100
- D             500
- M             1000
- For example, two is written as II in Roman numeral, just two one's added together. 
Twelve is written as, XII, which is simply X + II. 
The number twenty seven is written as XXVII, which is XX + V + II.
- Roman numerals are usually written largest to smallest from left to right. 
However, the numeral for four is not IIII. Instead, the number four is written as IV. 
Because the one is before the five we subtract it making four. 
The same principle applies to the number nine, which is written as IX. 
There are six instances where subtraction is used:
- I can be placed before V (5) and X (10) to make 4 and 9. 
- X can be placed before L (50) and C (100) to make 40 and 90. 
- C can be placed before D (500) and M (1000) to make 400 and 900.
```

- User input can be either integer or string, thus the input is checked for the followings,

   - The input should a decimal number within the range of 1 to 3999, inclusively.
   
   - If the input is less then 1 or greater then 3999, program warns the user using the given html template.

   - If the input is string and can not be converted to decimal number, program warns the user using the given html template.

- Example for user inputs and respective outputs

```
Input       Output
-----       ------
3           III
9           IX
58          LVIII
1994        MCMXCIV
-8          Warning with "Not Valid! Please enter a number between 1 and 3999, inclusively."
4500        Warning with "Not Valid! Please enter a number between 1 and 3999, inclusively."
Ten         Warning with "Not Valid! Please enter a number between 1 and 3999, inclusively."
```

```
## Project Skeleton 
```
![Project 001 Snapshot](project-001.png)

### At the end of the project, following topics are to be covered;

- Algorithm design

- Programming with Python 

- Web application programming with Python Flask Framework 

- Bash scripting

- AWS EC2 Service

- AWS Security Groups Configuration

- Terraform colubration


- AWS CLI Service

- AWS CLI commands, filters and queries

- Git & Github for Version Control System


## Steps to Solution
  
- Step 1: Download or clone project definition from `clarusway-aws-workshop` repo on Github 

- Step 2: Create project folder for local public repo on your pc

- Step 3: Copy the Roman Numerals Converter Application in Python

- Step 4: Prepare a main.tf template to deploy 

- Step 5: Push your application into your own public repo on Github

## Notes

## Resources

- [Python Flask Framework](https://flask.palletsprojects.com/en/1.1.x/quickstart/)

- [Python Flask Example](https://realpython.com/flask-by-example-part-1-project-setup/)

- 

- [AWS Cli User Guide](https://docs.aws.amazon.com/cli/latest/)

```