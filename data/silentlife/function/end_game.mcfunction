function silentlife:end_session

title @a title [{"color":"green","text":"The game has ended!"}]
 
# advancement grant @a[gamemode=survival, scores={lifeDisplay=1..}, limit=1, sort=arbitrary] only silentlife:lone_survivor