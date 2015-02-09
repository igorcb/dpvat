class Sinister < ActiveRecord::Base
  validates :client_id, presence: true
  belongs_to :client

  def status_name
  	case self.status
	  	when 0 then "Andamento"
	  	when 1 then "Pedencias"
	  	when 2 then "Indenizado"
  	end
  end
end
