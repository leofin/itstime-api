module ItsTimeApi
  module Model
    class Model2 < ActiveRecord::Base
      validates :name, presence: true
    end
  end
end
