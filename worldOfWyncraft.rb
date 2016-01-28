
puts "
╦ ╦╔═╗╦═╗╦  ╔╦╗  ╔═╗╔═╗  ╦ ╦╦ ╦╔╗╔╔═╗╦═╗╔═╗╔═╗╔╦╗
║║║║ ║╠╦╝║   ║║  ║ ║╠╣   ║║║╚╦╝║║║║  ╠╦╝╠═╣╠╣  ║
╚╩╝╚═╝╩╚═╩═╝═╩╝  ╚═╝╚    ╚╩╝ ╩ ╝╚╝╚═╝╩╚═╩ ╩╚   ╩
"

puts "This is a two-player game."
puts " "


## possible selection of classes
class_choices = ['Wizard', 'Warrior', 'Archer']

def say(statement)
  puts statement
end

# say "Robert"

def pick_your_class(class_choices)
  if class_choices == "Wizard"
    say "#{class_choices}: Holy rusted metal, Batman!"
  elsif class_choices == "Warrior"
    say "#{class_choices}: Suit me up, Uncle Alfred."
  elsif class_choices == "Archer"
    say "#{class_choices}: Suit me up, Uncle Alfred."
  else
    say "Fine, we'll pick one for you!"
    class_choices = "Robin"
  end

  class_choices
end

pick_your_class('Wizard')
