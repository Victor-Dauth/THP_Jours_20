require_relative 'controller.rb'

class Router

  def initialize

    @controller = Controller.new
  end

  def perform

    puts " " + "-"*30 + " "
    puts "|" + "DEMARAGE DE GOSSIP APP".center(30) + "|"
    puts " " + "-"*30 + " "
    puts ""

    while true

      puts "Que souhaite tu faire ?"
      puts "1) Ecrir un nouveau potin"
      puts "2) Afficher tous les potins"
      puts "3) Supprimer un potin"
      puts "4) Arreter le programme"
      print "> "
      choice = gets.chomp.to_i
      puts ""

      case choice
      when 1
        puts "Tu as choisi de créer un gossip" 
        @controller.create_gossip
        puts ""
      when 2
        puts "Tu as choisi d'afficher la liste des potins"
        @controller.index_gossips
        puts ""
      when 3
        puts "Tu as chosi de supprimer un potin"
        @controller.delete_gossips
      when 4
        puts "À bientôt !"
        puts ""
        break
      else
        puts "je n'ai pas compris ton choix, j'ai besoin d'un chiffre entre 1 et 4 pour fonctionner"
        puts ""
      end

      puts " " + "-"*30 + " "
      puts ""
    end
  end

end