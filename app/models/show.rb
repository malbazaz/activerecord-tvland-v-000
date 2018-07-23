class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters

  def build_network(:call_letters)
    network_found = Network.find_by(:call_letters)
    network_found.id = self.network_id
  end


end
