class Post < ActiveRecord::Base
  
  
  validates :title, presence: true
  validates :content, :length { minimum: 250 }
  validates :summary, :length { maximum: 250 }
  validates :category, inclusion: { in: %w(fiction nonfiction)}
  
  
  validates :clickbait_title
  
  def clickbait_title
    if title
end


# validate :expiration_date_cannot_be_in_the_past,
#     :discount_cannot_be_greater_than_total_value
 
#   def expiration_date_cannot_be_in_the_past
#     if expiration_date.present? && expiration_date < Date.today
#       errors.add(:expiration_date, "can't be in the past")
#     end
#   end
 
#   def discount_cannot_be_greater_than_total_value
#     if discount > total_value
#       errors.add(:discount, "can't be greater than total value")
#     end
#   end