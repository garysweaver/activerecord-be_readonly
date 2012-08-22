require 'activerecord-be_readonly'

module BeReadonly
  class Railtie < Rails::Railtie
    initializer "activerecord-be_readonly.active_record" do
      ActiveSupport.on_load(:active_record) do
        # ActiveRecord::Base gets new behavior
        include BeReadonly::Model # ActiveSupport::Concern
      end
    end
  end
end
