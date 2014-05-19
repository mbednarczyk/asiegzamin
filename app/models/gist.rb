class Gist < ActiveRecord::Base
	has_many :comments
  validates :snippet, presence: true
def self.search(search)
     if search
       find(:all, :conditions => ['lang LIKE ?', "%#{search}%"])
     else
       limit(0)
     end
   end
end