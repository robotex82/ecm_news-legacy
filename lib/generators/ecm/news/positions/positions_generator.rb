require 'rails/generators/migration'

module Ecm
  module News
    module Generators
      class PositionsGenerator < ::Rails::Generators::Base
        include Rails::Generators::Migration
        source_root File.expand_path('../templates', __FILE__)
        desc "adds categories to news"

        def self.next_migration_number(path)
          unless @prev_migration_nr
            @prev_migration_nr = Time.now.utc.strftime("%Y%m%d%H%M%S").to_i
          else
            @prev_migration_nr += 1
          end
          @prev_migration_nr.to_s
        end

        def copy_migrations
          migration_template "add_news_position_id_to_news_categories.rb", "db/migrate/add_news_position_id_to_news_categories.rb"
          migration_template "create_news_positions.rb", "db/migrate/create_news_positions.rb"
        end
      end
    end
  end
end

