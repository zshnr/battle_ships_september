Feature: Starting the game
	In order to play battleships
	As a nostalgic player
	I want to start a new game

Scenario: Getting to the form
	Given I am on the homepage
	When I follow "New Game"
	Then I should see "What's your name?

Scenario: Starting the game
	Given I am on the New Game page
	When I provide my "name" as "Steve"
	And click the "Bring it on!" button
	Then it should show my board

Scenario: User fails to enter their name
	Given I am on the New Game page
	When I fail to provide my "name"
	And click the "Bring it on!" button
	Then it should take me to an error page