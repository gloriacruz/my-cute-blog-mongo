class Comment
  include Mongoid::Document
  field :author, type: String
  field :body, type: String
  embedded_in :article
  validates :body, presence: true
end
