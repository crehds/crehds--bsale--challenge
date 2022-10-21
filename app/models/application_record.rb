class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class
  ActiveRecord::Base.pluralize_table_names = false
end
