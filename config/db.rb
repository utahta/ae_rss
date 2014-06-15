require 'active_record'

ActiveRecord::Base.establish_connection(
    encoding: ENV['DATABASE_ENCODING'],
    adapter: ENV['DATABASE_ADAPTER'],
    database: ENV['DATABASE_NAME'],
    host: ENV['DATABASE_HOST'],
    port: ENV['DATABASE_PORT'],
    username: ENV['DATABASE_USERNAME'],
    password: ENV['DATABASE_PASSWORD'],
)
