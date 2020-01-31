class Category < ActiveRecord::Base
  has_many :posts

  def self.most_popular
    self.all.max_by {|category| category.posts.count}
  end

end
