CREATE TABLE CUST10 (
    ID   NUMBER,
    NAME VARCHAR(20),
    AGE  NUMBER
);
insert into cust10 values(101,'sonu',20);
insert into cust10 values(102,'shubham',22);
insert into cust10 values(103,'shramika',24);
select * from cust10;
DECLARE
c_id cust10.id%type;
c_name cust10.name%type;
c_age cust10.age%type;
cursor c_customers is select id,name,age from cust10;
begin
    open c_customers;
    loop
        fetch c_customers into c_id,c_name,c_age;
        exit when c_customers%notfound;
        dbms_output.put_line(c_id || ' '||c_name || ' ' || c_age || ' ');
        end loop;
        close c_customers;
        end;
        /