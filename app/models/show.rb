class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  def build_network(shame)
    network_found = Network.find_by(:call_letters)

    #network_found.id = self.network_id
  end


end
