class Gossip

  attr_reader :author, :content

  def initialize(author, content)

    @author = author
    @content = content
  end

  def save

    CSV.open("db/gossip.csv", "ab") do |csv|
      csv << [@author, @content]
    end
  end

  def self.all

    array_gossip = []

    csv_gossip = CSV.read("db/gossip.csv") 
    csv_gossip.each do |ligne|
      array_gossip << Gossip.new(ligne[0], ligne[1])
    end

    return array_gossip
  end

  def self.delete(number_gossip)

    csv_gossip = CSV.read("db/gossip.csv")
    csv_gossip.delete_at(number_gossip - 1)
    
    CSV.open("db/gossip.csv", 'w') do |f|
      csv_gossip.each do |i|
        f << i
      end
    end
  end
end
