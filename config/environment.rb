
# Load the rails application
require File.expand_path('../application', __FILE__)

# load file to fix primary key error
# https://github.com/brianmario/mysql2/issues/784#issuecomment-414878642
require File.expand_path('../initializers/abstract_mysql2_adapter', __FILE__)

# Initialize the rails application
Mysms::Application.initialize!

