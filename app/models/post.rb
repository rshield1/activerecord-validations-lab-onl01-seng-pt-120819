class Post < ActiveRecord::Base
  
  
  validates :title, presence: true
  validates :content, :length { minimum: 250 }
  validates :summary, :length { maximum: 250 }
  validates :category, inclusion: { in: %w(fiction nonfiction)}
  
  
  validates :clickbait_title
  
  def clickbait_title
    if title
end

CLICKBAIT_PATTERNS = [
    /Won't Believe/i,
    /Secret/i,
    /Top [0-9]*/i,
    /Guess/i
  ]

  def is_clickbait?
    if CLICKBAIT_PATTERNS.none? { |pat| pat.match title }
      errors.add(:title, "must be clickbait")