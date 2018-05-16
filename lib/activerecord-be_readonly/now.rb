require 'active_support'

module BeReadonly
  module Now
    extend ActiveSupport::Concern
    included do
      include BeReadonly::Model
      be_readonly
    end
  end
end
