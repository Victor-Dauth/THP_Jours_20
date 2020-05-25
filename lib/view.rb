require_relative 'gossip.rb'

class View

  def create_gossip

    params = {}
    
    puts "Quels est ton nom ?"
    print "> "
    params[:author] = gets.chomp

    puts "Quels est ton message ?"
    print "> "
    params[:content] = gets.chomp

    return params
  end

  def index_gossips(array_gossip)
    
    puts ""
    puts " " + "-"*87
    puts "|" + "N°".center(5) + "|" + "AUTEUR".center(30) + "|" + "POTIN".center(50) + "|"
    puts "|" + "-"*5 + "|" + "-"*30 + "|" + "-"*50 + "|"

    n = 1
    array_gossip.each do |gossip|
      puts "|" + "#{n}".center(5) + "|" + "#{gossip.author}".center(30) + "|" + "#{gossip.content}".center(50) + "|"
      n += 1
    end

    puts " " + "-"*87
  end

  def delete_gossips(number_of_gossips)

    number_gossip = 0
  
    while number_gossip < 1 || number_gossip > number_of_gossips 
      puts "Quelle ligne veux tu supprimer ?"
      print "> "
      number_gossip = gets.chomp.to_i

      puts "Ceci n'est pas un numéro de ligne du tableau, recommence" if number_gossip < 1 || number_gossip > number_of_gossips 
    end

    return number_gossip
  end
end