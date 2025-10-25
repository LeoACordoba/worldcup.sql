// ...existing code...
#! /bin/bash

# Set PSQL depending on test mode
if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Truncate tables to start fresh
$PSQL "TRUNCATE TABLE games, teams;"

# Read games.csv, skip header
tail -n +2 games.csv | while IFS=',' read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
  # Trim whitespace and escape single quotes for SQL
  WINNER=$(echo "$WINNER" | xargs | sed "s/'/''/g")
  OPPONENT=$(echo "$OPPONENT" | xargs | sed "s/'/''/g")
  
  # Insert winner if not exists and get ID
  $PSQL "INSERT INTO teams(name) VALUES('$WINNER') ON CONFLICT (name) DO NOTHING;"
  WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER';")
  if [[ -z "$WINNER_ID" ]]; then
    echo "Error: Could not retrieve ID for winner '$WINNER'"
    exit 1
  fi
  
  # Insert opponent if not exists and get ID
  $PSQL "INSERT INTO teams(name) VALUES('$OPPONENT') ON CONFLICT (name) DO NOTHING;"
  OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT';")
  if [[ -z "$OPPONENT_ID" ]]; then
    echo "Error: Could not retrieve ID for opponent '$OPPONENT'"
    exit 1
  fi
  
  # Insert game
  $PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES($YEAR, '$ROUND', $WINNER_ID, $OPPONENT_ID, $WINNER_GOALS, $OPPONENT_GOALS);"
done