 A = load '/home/acadgild/Desktop/employee_details.txt' using PigStorage(',') as (eid:int,ename:chararray,sal:int,rating:int);
 B  = load '/home/acadgild/Desktop/employee_expenses.txt' using PigStorage('\t') as (eid:int,exp:int);
joinAB = join A by eid, B by eid;
maxABexp = foreach joinAB generate A::eid,A::ename,B::exp;
orderAB = order maxABexp by  exp desc,ename asc;
limitABexp = limit orderAB 1;
dump limitABexp;



