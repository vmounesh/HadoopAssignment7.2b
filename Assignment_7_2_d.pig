 A = load '/home/acadgild/Desktop/employee_details.txt' using PigStorage(',') as (eid:int,ename:chararray,sal:int,rating:int);
 B  = load '/home/acadgild/Desktop/employee_expenses.txt' using PigStorage('\t') as (eid:int,exp:int);
joinAB = join A by eid, B by eid;
dump joinAB;
