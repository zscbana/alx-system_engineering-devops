
### 0x06. Regular Expression

**Project Title**: Regex  
**By**: Sylvain Kalache  
**Weight**: 1  
**Project Start**: Feb 27, 2024 6:00 AM  
**Project End**: Feb 28, 2024 6:00 AM  
**Checker Release**: Feb 27, 2024 12:00 PM  
**Auto Review**: An auto review will be launched at the deadline  

## Concepts

For this project, we expect you to look at this concept:

- Regular Expression

## Background Context

For this project, you have to build your regular expression using Oniguruma, a regular expression library that which is used by Ruby by default. Note that other regular expression libraries sometimes have different properties.

Because the focus of this exercise is to play with regular expressions (regex), here is the Ruby code that you should use, just replace the regexp part, meaning the code in between the //:

```ruby
#!/usr/bin/env ruby
puts ARGV[0].scan(/127.0.0.[0-9]/).join
```

## Resources

Read or watch:

- [Regular expressions - basics](https://www.regular-expressions.info/tutorial.html)
- [Regular expressions - advanced](https://www.regular-expressions.info/quickstart.html)
- [Rubular is your best friend](https://rubular.com/)
- [Use a regular expression against a problem: now you have 2 problems](https://blog.codinghorror.com/regex-use-vs-regex-abuse/)
- [Learn Regular Expressions with simple, interactive exercises](https://regexone.com/)

## Requirements

### General

- Allowed editors: vi, vim, emacs
- All your files will be interpreted on Ubuntu 20.04 LTS
- All your files should end with a new line
- A README.md file, at the root of the folder of the project, is mandatory
- All your Bash script files must be executable
- The first line of all your Bash scripts should be exactly `#!/usr/bin/env ruby`
- All your regex must be built for the Oniguruma library

### Quiz Questions

Great! You've completed the quiz successfully! Keep going! (Show quiz)

## Tasks

1. **Simply matching School**
   - The regular expression must match School
   - Using the project instructions, create a Ruby script that accepts one argument and pass it to a regular expression matching method
   - Example:
     ```bash
     sylvain@ubuntu$ ./0-simply_match_school.rb School | cat -e
     School$
     sylvain@ubuntu$ ./0-simply_match_school.rb "Best School" | cat -e
     School$
     sylvain@ubuntu$ ./0-simply_match_school.rb "School Best School" | cat -e
     SchoolSchool$
     sylvain@ubuntu$ ./0-simply_match_school.rb "Grace Hopper" | cat -e
     $
     ```
   - [Repository](https://github.com/alx-system_engineering-devops/0x06-regular_expressions/0-simply_match_school.rb)

2. **Repetition Token #0**
   - Find the regular expression that will match the above cases
   - Using the project instructions, create a Ruby script that accepts one argument and pass it to a regular expression matching method
   - [Repository](https://github.com/alx-system_engineering-devops/0x06-regular_expressions/1-repetition_token_0.rb)

3. **Repetition Token #1**
   - Find the regular expression that will match the above cases
   - Using the project instructions, create a Ruby script that accepts one argument and pass it to a regular expression matching method
   - [Repository](https://github.com/alx-system_engineering-devops/0x06-regular_expressions/2-repetition_token_1.rb)

4. **Repetition Token #2**
   - Find the regular expression that will match the above cases
   - Using the project instructions, create a Ruby script that accepts one argument and pass it to a regular expression matching method
   - [Repository](https://github.com/alx-system_engineering-devops/0x06-regular_expressions/3-repetition_token_2.rb)

5. **Repetition Token #3**
   - Find the regular expression that will match the above cases
   - Using the project instructions, create a Ruby script that accepts one argument and pass it to a regular expression matching method
   - Your regex should not contain square brackets
   - [Repository](https://github.com/alx-system_engineering-devops/0x06-regular_expressions/4-repetition_token_3.rb)

6. **Not quite HBTN yet**
   - The regular expression must be exactly matching a string that starts with h ends with n and can have any single character in between
   - Using the project instructions, create a Ruby script that accepts one argument and pass it to a regular expression matching method
   - [Repository](https://github.com/alx-system_engineering-devops/0x06-regular_expressions/5-beginning_and_end.rb)

7. **Call me maybe**
   - The regular expression must match a 10 digit phone number
   - [Repository](https://github.com/alx-system_engineering-devops/0x06-regular_expressions/6-phone_number.rb)

8. **OMG WHY ARE YOU SHOUTING?**
   - The regular expression
