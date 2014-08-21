class CharmItem < ActiveRecord::Base
  self.primary_key = "Name"
  before_save { self.Name = self.Name.downcase }
end
