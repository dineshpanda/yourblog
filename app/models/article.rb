class Article < ApplicationRecord
  # Direct associations

  has_many   :comments,
             :dependent => :destroy

  # Indirect associations

  # Validations

  # Scopes

  scope :second_scope, -> { where(articles: { publish_date: '2020-03-20T00:00:00+00:00' }).or(Article.where(articles: { publish_time: '2020-03-20 20:45:00 +0530' })) }

  scope :first_scope, -> { where(articles: { id: [100, 200] }).where('articles.created_at < :query', query: '2020-03-19T18:21:00+00:00' ).where(articles: { updated_at: '2020-03-31T18:00:00+00:00' }).or(Article.where(articles: { published: [true, false] })).or(Article.where(articles: { publish_date: '2020-03-15T00:00:00+00:00' })).or(Article.where(articles: { publish_time: '2020-03-20 00:00:00 +0530' })) }

end
