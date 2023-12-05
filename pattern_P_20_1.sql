--P(R) represents a pattern drawn by Julia in R rows. The following pattern represents P(5):

--* 
--* * 
--* * * 
--* * * * 
--* * * * *
--Write a query to print the pattern P(20).




--Solution:
with recursive pattern as
(select 1 as n
union all
select n+1 from pattern where n<20)
select repeat('* ',n) from pattern;