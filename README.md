# column-sum

Imagine that we are given a data file, where each line is a sequence of numbers. The numbers in
each line are separated by 1 of the following 3 characters—comma(,), semicolon(;) or colon(:). Further, there is no limit to the number of numbers in each line. All the numbers in a line are separated by the same delimiter, but different lines may use different delimiters. Here is an example of a sample data file:
  1;2;3;4;5
  11:4:23:12
  18,4,17,13,21,19,25
Write a script that will take a data file (as described above) as input and will compute the sum of each column in the data file. The sum of each column should be written to an output file which will also be provided as input to the script. All inputs to the script will be provided from the command line. The output file should be written in the format: Col <n> : sum
That is, each line in the output file should have the column and its corresponding sum. For example, based on the data file shown above, the output file should look like the following (don't include the comments):
       Col 1 : 30 # 1 + 11 + 18
       Col 2 : 10 # 2 + 4 + 4
       Col 3 : 43 # 3 + 23 + 17
       Col 4 : 29 # 4 + 12 + 13

