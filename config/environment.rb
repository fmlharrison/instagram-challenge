# Load the Rails application.
require_relative 'application'

Paperclip.options[:command_path] = '/usr/local/bin/convert'

# Initialize the Rails application.
Rails.application.initialize!
