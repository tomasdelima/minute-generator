class Minute < ActiveRecord::Base
  has_many :entries
  belongs_to :ael
end
