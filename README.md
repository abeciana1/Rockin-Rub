# Rockin-Ruby

Practicing Ruby Classes and Methods with concert booking model with promoters, lineups, and concerts.

## Promoter
* Initializes with name, wallet = 0, and age
* Promoter should know all instances
* Promoter has access to many concerts
* Promoter has access to many lineups through concerts

## Lineup
* Initializes with an Array of band names, wallet= 0, and the concert instance they're working with
* Lineup should know all other instances of the class
* Lineup belongs to one concert

## Concert
* Initializes with venue name, day, estimated attendees, price of concert(default to 0 for free events), payout (also defaulted to 0 for free events) and promoter.
* Concerts should know all other instances of the class
* Concert should know the promoter
* A concert belongs to the promoter
* SSOT