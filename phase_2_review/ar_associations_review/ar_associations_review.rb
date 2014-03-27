
class Post
  belongs_to :creator, foreign_key: user_id, class_name: "User"
end

class User
end

post table:
  user_id


class Post
  has_many :notes, class_name: "Comment"
end

class Comment
  belongs_to :post
end

comments table:
  post_id




class Post
  has_many :comments
  has_many :commenters, through: :comments, source: :author
end

class Comment
  belongs_to :author, class_name "User", foreign_key: :user_id
  belongs_to :post
end

comments table
  user_id

class User
end

