module BeReadonly
  class << self
    attr_accessor :enabled
    attr_accessor :create_allowed
  end
end

BeReadonly.enabled = true
BeReadonly.create_allowed = false
