# String Calculator TDD

---

## Features Implemented
- Returns 0 for an empty string  
- Returns the number if only one number is passed  
- Returns the sum of two or more comma-separated numbers  
- Supports newline \n as an additional delimiter  
- Supports custom delimiter in format //[delimiter]\n[numbers]  
- Throws an exception for negative numbers  
- Shows all negative numbers in the exception message  
- Added one extra test: supports custom delimiter with newline mixed  

---

## My Thought Process
- I started with the simplest case ("" → 0) and moved step-by-step.  
- For every new behavior, I wrote a failing test first and committed once it passed.  
- I used Ruby's split, map, sum, and regex to keep the implementation clean and readable.  
- Custom delimiters were handled by parsing the input header using split("\n", 2) and escaping them safely.  
- I ensured good error messages were shown when negative numbers are passed.  
- I added one extra test combining newline and custom delimiters to check edge behavior.  

---

## Setup Instructions

1. Clone the repository  
2. Run the following commands:

```bash
bundle install
bundle exec rspec
