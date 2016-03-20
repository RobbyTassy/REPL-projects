
puts "
╦ ╦╔═╗╦═╗╦  ╔╦╗  ╔═╗╔═╗  ╦ ╦╦ ╦╔╗╔╔═╗╦═╗╔═╗╔═╗╔╦╗
║║║║ ║╠╦╝║   ║║  ║ ║╠╣   ║║║╚╦╝║║║║  ╠╦╝╠═╣╠╣  ║
╚╩╝╚═╝╩╚═╩═╝═╩╝  ╚═╝╚    ╚╩╝ ╩ ╝╚╝╚═╝╩╚═╩ ╩╚   ╩
"

puts "This is a two-player game."
puts " "

## possible selection of classes
class_choices = ['Wizard', 'Warrior', 'Archer']


## Step 1: asks player one for his/her name
puts "Player one, What is your name?"
player_one_name = gets.chomp.capitalize


puts"
/////////////////////| Wizard | Warrior | Archer |
|Health Points       |   6    |   10    |   8    |
|Attack Power Range  |  0-5   |   1-3   |  0-4   |
/////////////////////////////////////////////////
"

## Step 2: Classifies player one's character into either wizard, warrior, archer
## If player does not choose among provided classes, an error prompts
## asking them to re-choose among provided selection.
## Then player one is greeted by name and class.

begin
puts "Choose your class: Wizard, Warrior, or Archer"
player_one_class = gets.chomp.capitalize
  if player_one_class == "Wizard"
    player_one_health = 6
    player_one_attack = rand(0..5)
    player_one_defense = 2
  elsif player_one_class == "Warrior"
    player_one_health = 10
    player_one_attack = rand(1..3)
    player_one_defense = 6
  elsif player_one_class == "Archer"
    player_one_health = 8
    player_one_attack = rand(0..4)
    player_one_defense = 4
  else
    puts "I'm sorry, " + player_one_class.capitalize + " class does not exist. Please pick again."
  end
end until class_choices.include? player_one_class
puts "Greetings, #{player_one_name} the #{player_one_class}!"
puts " "


## Step 3: asks player two for his/her class.
puts "Player two, What is your name?"
player_two_name = gets.chomp.capitalize


## Step 4: Classifies player two's character into either wizard, warrior, archer
## If player does not choose among provided classes, an error prompts
## asking them to re-choose among provided selection.
## oppononets are introduced by name and class and the battle begins

begin
puts "Choose your class: Wizard, Warrior, Archer"
player_two_class = gets.chomp.capitalize
  if player_two_class == "Wizard"
    player_two_health = 6
    player_two_attack = rand(0..5)
    player_two_defense = 2
  elsif player_two_class == "Warrior"
    player_two_health = 10
    player_two_attack = rand(1..3)
    player_two_defense = 6
  elsif player_two_class == "Archer"
    player_two_health = 8
    player_two_attack = rand(0..4)
    player_two_defense = 4
  else
    puts "I'm sorry, " + player_two_class.capitalize + " class does not exist. Please pick again."
  end
end until class_choices.include? player_two_class
puts "#{player_two_name} the #{player_two_class} vs. #{player_one_name} the #{player_one_class}!

 +-+-+-+ +-+-+-+ +-+-+-+-+-+ +-+-+-+-+-+-+
 |L|e|t| |t|h|e| |G|a|m|e|s| |B|e|g|i|n|!|
 +-+-+-+ +-+-+-+ +-+-+-+-+-+ +-+-+-+-+-+-+
 "



## Begins the battle loop between player two and player one by asking player two
## if he/she would like to attack player one (if so type Y). when player
## 'Y', it triggers player two's offensive attack again player one

def initial_attack(player_one_health, player_one_attack, player_two_health, player_two_attack, player_one_name, player_two_name, player_one_class, player_two_class)
  if player_two_health > 0
    puts "#{player_two_name}, do you want to attack #{player_one_name}? Y / N"
    player_two_response = gets.chomp.capitalize
    if player_two_response == "Y"
      player_two_offense(player_one_health, player_one_attack, player_two_health, player_two_attack, player_one_name, player_two_name, player_one_class, player_two_class)
    else
      puts "You are forced to attack #{player_one_name}!"
      player_two_offense(player_one_health, player_one_attack, player_two_health, player_two_attack, player_one_name, player_two_name, player_one_class, player_two_class)
    end
  else
    puts "*"*50
    puts "#{player_one_name} the #{player_one_class} wins!"
    puts "*"*50
  end
end


## Begins player two's offensive:
## Classifies player two's attack power by referring back to their choice in step 1.
## The player's attach is a random number between that classes min and max attack power
## player one attacks player two's hit points, returning the difference in string
## which is the remaining balance of player two's hit points.
## Triggers reverse attack

def player_two_offense(player_one_health, player_one_attack, player_two_health, player_two_attack, player_one_name, player_two_name, player_one_class, player_two_class)
  if player_two_class == "Wizard"
    player_two_attack = rand (0..5)
  elsif player_two_class == "Warrior"
    player_two_attack = rand (1..3)
  elsif player_two_name == "Archer"
    player_two_attack = rand (0..4)
  end
  player_one_health = player_one_health - player_two_attack
  puts "BAM! #{player_two_name} hits #{player_one_name} for #{player_two_attack}!\n#{player_one_name} now has #{player_one_health} health!"
  puts ""
  reverse_attack(player_one_health, player_one_attack, player_two_health, player_two_attack, player_one_name, player_two_name, player_one_class, player_two_class)
end


## Continues the battle loop between from player two to player one by asking player one
## if he/she would like to attack player two (if so type Y). when player one types
## 'Y', it triggers player one's offensive attack

def reverse_attack(player_one_health, player_one_attack, player_two_health, player_two_attack, player_one_name, player_two_name, player_one_class, player_two_class)
  if player_one_health > 0
    puts "#{player_one_name}, do you want to attack #{player_two_name}? Y / N"
    player_one_response = gets.chomp.capitalize
    if player_one_response == "Y"
      player_one_offense(player_one_health, player_one_attack, player_two_health, player_two_attack, player_one_name, player_two_name, player_one_class, player_two_class)
    else
      puts "You are forced to attack #{player_two_name}!"
      player_one_offense(player_one_health, player_one_attack, player_two_health, player_two_attack, player_one_name, player_two_name, player_one_class, player_two_class)
    end
  else
    puts "*"*50
    puts "#{player_two_name} the #{player_two_class} wins!"
    puts "*"*50
  end
end

## Classifies player one's attack power by referring back to their choice in step 1.
## The player's attach is a random number between that classes min and max attack power
## player one attacks player two's hit points, returning the difference in string
## which is the remaining balance of player two's hit points.

def player_one_offense(player_one_health, player_one_attack, player_two_health, player_two_attack, player_one_name, player_two_name, player_one_class, player_two_class)
  if player_one_class == "Wizard"
    player_one_attack = rand (0..5)
  elsif player_one_class == "Warrior"
    player_one_attack = rand (1..3)
  elsif player_one_name == "Archer"
    player_one_attack = rand (0..4)
  end
  player_two_health = player_two_health - player_one_attack
  puts "POW! #{player_one_name} hits #{player_two_name} for #{player_one_attack}!\n#{player_two_name} now has #{player_two_health} health!"
  puts ""
  initial_attack(player_one_health, player_one_attack, player_two_health, player_two_attack, player_one_name, player_two_name, player_one_class, player_two_class)
end

## Asks the starting player (player two) to begin the battle by typing START
## after typing, initial attack begins the attack loop between player one and player two
puts "#{player_two_name}. You attack first. Type 'START' to begin attacking your enemy, #{player_one_name}!"
input = gets.chomp.upcase
  if input == "START"
    initial_attack(player_one_health, player_one_attack, player_two_health, player_two_attack, player_one_name, player_two_name, player_one_class, player_two_class)
  else
    puts "Not sure what you typed but let's get this battle started!"
    initial_attack(player_one_health, player_one_attack, player_two_health, player_two_attack, player_one_name, player_two_name, player_one_class, player_two_class)
end
