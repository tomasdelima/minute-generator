class Minute < ActiveRecord::Base
  has_many :entries, dependent: :destroy
  belongs_to :ael
end
