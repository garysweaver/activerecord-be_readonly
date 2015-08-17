module BeReadonly
  class << self
    attr_accessor :enabled
  end
end

BeReadonly.enabled = true
