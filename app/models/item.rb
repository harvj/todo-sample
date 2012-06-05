class Item < ActiveRecord::Base
  attr_accessible :description
  validates_presence_of :description

  state_machine :initial => :active do

    event :complete do
      transition :active => :completed
    end

    event :restart do
      transition :completed => :active
    end

  end

end
