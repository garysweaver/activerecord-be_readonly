module BeReadonly
  module Model
    extend ActiveSupport::Concern

    included do
    end

    module ClassMethods
      def be_readonly
        extend BeReadonlyClassMethods # intentionally not in ClassMethods which is automatically extended via ActiveSupport::Concern
        include BeReadonlyInstanceMethods # intentionally not just InstanceMethods as those would be automatically included via ActiveSupport::Concern
      end
    end

    module BeReadonlyClassMethods
      def delete(id_or_array)
        raise ActiveRecord::ReadOnlyRecord
      end

      def delete_all(conditions = nil)
        raise ActiveRecord::ReadOnlyRecord
      end
    end

    module BeReadonlyInstanceMethods
      def readonly?
        return true
      end

      def before_create
        raise ActiveRecord::ReadOnlyRecord
      end

      def before_save
        raise ActiveRecord::ReadOnlyRecord
      end

      def before_destroy
        raise ActiveRecord::ReadOnlyRecord
      end

      def delete
        raise ActiveRecord::ReadOnlyRecord
      end
    end
  end
end
