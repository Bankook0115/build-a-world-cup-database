#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
echo $($PSQL "TRUNCATE games,teams")

#year,round,winner,opponent,winner_goals,opponent_goals

cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
  if [[ ($WINNER != "winner") || ($OPPONENT != "opponent") ]]
  then
    TEAM_ID1=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
    TEAM_ID2=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
    if [[ -z $TEAM_ID1 ]]
    then
      INSERT_NAME1=$($PSQL "INSERT INTO teams(name) VALUES('$WINNER')")
    fi
    if [[ -z $TEAM_ID2 ]]
    then
      INSERT_NAME2=$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT')")
    fi
    TEAM_ID1=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
    TEAM_ID2=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
    GAME_ID=$($PSQL "SELECT game_id FROM games WHERE (year='$YEAR') AND (round='$ROUND')
          AND (winner_id='$TEAM_ID1') AND (opponent_id='$TEAM_ID2')")
    if [[ -z $GAME_ID ]]
    then 
      INSERT_GAME=$($PSQL "INSERT INTO games(year,round,winner_id,opponent_id,winner_goals,opponent_goals)
                VALUES('$YEAR','$ROUND','$TEAM_ID1','$TEAM_ID2','$WINNER_GOALS','$OPPONENT_GOALS')")
    fi
  fi
done