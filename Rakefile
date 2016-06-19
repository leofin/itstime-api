require 'bundler'
Bundler.require
require 'active_record'

require "pry-byebug"
desc "drop its_time_api database"
task :drop_db do
  conn = ActiveRecord::Base.establish_connection(ENV['DATABASE_URL'])
  db_name = conn.spec.config[:database];
  conn.spec.config[:database] = 'postgres';

  ActiveRecord::Base.connection.drop_database(db_name)
end

desc "create its_time_api database"
task :create_db do
  conn = ActiveRecord::Base.establish_connection(ENV['DATABASE_URL'])
  db_name = conn.spec.config[:database];
  conn.spec.config[:database] = 'postgres';

  ActiveRecord::Base.connection.create_database(db_name)
end

desc "reset its_time_api database"
task :reset_db do
  conn = ActiveRecord::Base.establish_connection(ENV['DATABASE_URL'])
  db_name = conn.spec.config[:database];
  conn.spec.config[:database] = 'postgres';

  ActiveRecord::Base.connection.drop_database(db_name)
  ActiveRecord::Base.connection.create_database(db_name)

  ActiveRecord::Base.establish_connection(ENV['DATABASE_URL'])

  ActiveRecord::Migrator.migrate('db/migrate')
end

desc "migrate its_time_api database"
task :migrate_db do
  ActiveRecord::Base.establish_connection(ENV['DATABASE_URL'])
  ActiveRecord::Migrator.migrate('db/migrate')
end

desc "seed its_time_api database"
task :seed_db do
  ActiveRecord::Base.establish_connection(ENV['DATABASE_URL'])

  require_relative './db/seeds.rb'
end
