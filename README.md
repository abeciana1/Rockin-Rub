# Rockin-Ruby

Practicing Ruby Classes and Methods with concert booking model with promoters, lineups, and concerts.

## Promoter
* Initializes with name, wallet = 0, and age
* Promoters should know all lineups and concerts
* Promoter should know all instances 

## Lineup
* Initializes with Array of band names, array.length, wallet= 0, and the promoter instance they're working with
* Lineup should know all other lineups
* Lineup should know promoter

## Concert
* Initializes with venue name, wallet, day, attendees, price of concert(default to 0 for free events)
* Concerts should know all other concerts
* Concert should know promoter and lineup