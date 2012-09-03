class Request < ActiveRecord::Base
  belongs_to :users
  belongs_to :requests
end
