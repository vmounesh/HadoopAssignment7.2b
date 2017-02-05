A = load '/home/acadgild/Desktop/employee_details.txt' using PigStorage(',') as (eid:int,ename:chararray,sal:int,rating:int);
HighsalA = order A by $2 desc,$1 asc;
oddA = filter HighsalA by $0%2==1;
limitA = limit oddA 3;
dump limitA;

