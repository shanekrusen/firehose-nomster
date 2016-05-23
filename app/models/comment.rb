class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :place
  
  RATINGS = {
    '0/5' => '0_5',
    '1/5' => '1_5',
    '2/5' => '2_5',
    '3/5' => '3_5',
    '4/5' => '4_5',
    '5/5' => '5_5'
  }
  
  def humanized_rating
    RATINGS.invert[self.rating]
  end
end
