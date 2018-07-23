class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters

  def build_network(whatever)
    network_found = Network.find_by(whatever)
    network_found.id = self.network_id
  end


end
