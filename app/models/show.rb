# frozen_string_literal: true

class Show < ApplicationRecord
  def to_param
    "#{id}-#{title.parameterize}"
end
end
