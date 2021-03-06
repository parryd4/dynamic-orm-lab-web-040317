require_relative "../config/environment.rb"
require 'active_support/inflector'
require 'interactive_record.rb'

class Student < InteractiveRecord
  # needs to use ::column_names to make attr_accessors
  self.column_names.each do |col|
    attr_accessor col.to_sym
  end

end
