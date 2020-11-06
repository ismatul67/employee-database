# employee-database

### Import SQL Database (you can select step A or B)

## A. Import Database using workbench
```
1. Open mysql workbench
2. Open your database
3.Click administration beside schemas menu
4.Click Data Import/Restore
5.Choose directory with name employee-database 
6.Click start import
```


## Import Database using Cmd
```
1.open employee-database folder and open cmd in that place
2. run this command--> mysql -u (username)
3. run this command--> CREATE DATABASE employee
4. run  this command--> exit
5. import my sql database using this command--> mysql -u (username) -p(PlainPassword) employee < (filename.sql)
6. <username> is your username mysql, <PlainPassoword> is your password mysql. If your mysql dont have password just write -p
7.example command--> mysql -u root -p employee < employee_t1_position.sql
8.run that command 2 times, first import employee_t1_position.sql and then import employee_t2_employee
```
