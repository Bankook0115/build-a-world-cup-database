## Build a world cup database 

--- 

### Base on Relational database course at freeCodeCamp.org  

This is one of the _required projects_ to earn your **certification.**
For this project, you will create a Bash script that enters information from World Cup games into PostgreSQL, then query the database for useful statistics.

Link : [freeCodeCamp.org](https://www.freecodecamp.org/learn/relational-database/build-a-world-cup-database-project/build-a-world-cup-database)

---

### Project detail

Instructions
Follow the instructions and get all the user stories below to pass to finish the project.

You start with several files, one of them is games.csv. It contains a comma-separated list of all games of the final three rounds of the World Cup tournament since 2014; the titles are at the top. It includes the year of each game, the round of the game, the winner, their opponent, and the number of goals each team scored. You need to do three things for this project:

---

### Main Task
Make world cup database on **PostgreSQL**  and dump the file into :  
- [X] worldcup.sql  

Build up shell script : 
- [x] insert_data.sh
- [x] queries.sh

### Complete the task below

- [X] You should create a database named worldcup

- [X] You should connect to your worldcup database and then create teams and games tables

- [X] Your teams table should have a team_id column that is a type of SERIAL and is the primary key, and a name column that has to be UNIQUE

- [X] Your games table should have a game_id column that is a type of SERIAL and is the primary key, a year column of type INT, and a round column of type VARCHAR

- [X] Your games table should have winner_id and opponent_id foreign key columns that each reference team_id from the teams table

- [X] Your games table should have winner_goals and opponent_goals columns that are type INT

- [X] All of your columns should have the NOT NULL constraint

- [X] Your two script (.sh) files should have executable permissions. Other tests involving these two files will fail until permissions are correct. When these permissions are enabled, the tests will take significantly longer to run

- [X] When you run your insert_data.sh script, it should add each unique team to the teams table. There should be 24 rows

- [X] When you run your insert_data.sh script, it should insert a row for each line in the games.csv file (other than the top line of the file). There should be 32 rows. Each row should have every column filled in with the appropriate info. Make sure to add the correct ID's from the teams table (you cannot hard-code the values)

- [X] You should correctly complete the queries in the queries.sh file. Fill in each empty echo command to get the output of what is suggested with the command above it. Only use a single line like the first query. The output should match what is in the expected_output.txt file

---

### Result

Pass 100% test

![test_result](Test_result.png)

