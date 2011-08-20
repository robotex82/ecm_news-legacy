Factory.define(:news) do |news|
  news.title "Example news"
  news.body  "This is the body"
end

Factory.define(:news_with_category, :class => "news") do |news|
  news.title "Example news"
  news.body  "This is the body"
  news.publish_at 5.minutes.ago
  news.association :news_category 
end

Factory.define(:news_with_other_category, :class => "news") do |news|
  news.title "More Example news"
  news.body  "This is the body"
  news.publish_at 5.minutes.ago  
  news.news_category { |news| news.association :second_news_category }
end
