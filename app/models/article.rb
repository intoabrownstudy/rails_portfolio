class Article < ActiveRecord::Base
  attr_accessible :content, :draft, :title
  
  validates :content, :title, presence: true
  
  scope :is_draft, where(:draft => true)
  
  require "markdown_processor"
  
    attr_accessible :body, :title
  
    has_many :likes
  
    def html_body
      MarkdownProcessor.convert_to_h1(self.body)
    end
  end

# def excerpt
#     return body[0...30]
#   end
#
#   def relative_length
#     if body.length < 50
#       "short"
#     elsif body.length > 300
#       "long"
#     else
#       "medium"
#     end
#   end
# end