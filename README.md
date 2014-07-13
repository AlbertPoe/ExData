ExData
======

Exploraroy Data Analysis Assignment 1
The assignment was to write code that would load data into R and creat a series of plots.

I assume that the data file in already downloaded onto your machine and that you set the WD.

In general, my code loads the first row of the data set and takes the column names.
I then skip the necessary number of rows to get to the correct time/date. Then download the 
correct number of lines of data for the two days we are interested. 

Next the date and time variables are manipulated from factors into date and time and formated 
correctly so the date/time will plot correctly. I then add the column names and create a series 
of plots.
