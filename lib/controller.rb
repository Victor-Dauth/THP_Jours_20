require_relative 'gossip.rb'
require_relative 'view.rb'

class Controller

  def initialize

    @view = View.new
  end

  def create_gossip

    params = @view.create_gossip

    new_gossip = Gossip.new(params[:author], params[:content])

    new_gossip.save
  end

  def index_gossips

    array_gossip = Gossip.all
    @view.index_gossips(array_gossip)

    return array_gossip.length
  end

  def delete_gossips

    number_of_gossips = self.index_gossips
    number_gossip = @view.delete_gossips(number_of_gossips)
    Gossip.delete(number_gossip)
  end
end