class Ael < ActiveRecord::Base
  has_many :minutes

  def get_members
    if members.nil?
      ' , , , , , , , , '
    else
      members.split(', ')
    end
  end
end