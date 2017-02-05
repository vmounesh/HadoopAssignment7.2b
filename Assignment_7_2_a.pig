A = load '/home/acadgild/Desktop/employee_details.txt' using PigStorage(',') as (eid:int,ename:chararray,sal:int,rating:int);
orderA = order A by ename asc, rating desc;
limitA = limit orderA 5;
dump limitA;

