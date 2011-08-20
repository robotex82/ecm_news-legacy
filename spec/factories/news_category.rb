Factory.define(:news_category) do |news_category|
  news_category.name "Ruby"
  news_category.identifier "ruby"
  news_category.description "Ruby stuff"
end

Factory.define(:second_news_category, :class => 'news_category') do |news_category|
  news_category.name "Rails"
  news_category.identifier "rails"
  news_category.description "Rails stuff"
end
