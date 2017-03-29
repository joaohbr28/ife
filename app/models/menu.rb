class Menu < ApplicationRecord
	has_many :indices, :foreign_key => "menu_id", :class_name => "Indice" 
end


