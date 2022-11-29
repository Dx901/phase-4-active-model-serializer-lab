class AuthorPostSerializer < ActiveModel::Serializer
  attributes :title, :short_content
  has_many :tags

  def short_content
    
    "#{object.content[0..39]...}"
    # Could also write as object.content[0..39]... without the elipsis and it would still work

  end
end
