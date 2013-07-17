class ImportantDate < ActiveRecord::Base
  attr_accessible :date_of_importance, :description, :importance, :name
end
