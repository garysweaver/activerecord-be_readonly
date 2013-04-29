module BeReadonly
  module Model
    extend ActiveSupport::Concern

    module ClassMethods
      def be_readonly
        extend BeReadonlyClassMethods # intentionally not in ClassMethods which is automatically extended via ActiveSupport::Concern
        include BeReadonlyInstanceMethods # intentionally not just InstanceMethods as those would be automatically included via ActiveSupport::Concern

        before_destroy do
          raise ActiveRecord::ReadOnlyRecord
        end
      end
    end

    module BeReadonlyClassMethods
      def delete(id_or_array)
        raise ActiveRecord::ReadOnlyRecord
      end

      def delete_all(conditions = nil)
        raise ActiveRecord::ReadOnlyRecord
      end

      def update_all(conditions = nil)
        raise ActiveRecord::ReadOnlyRecord
      end
    end

    module BeReadonlyInstanceMethods
      def readonly?
        return true
      end

      def delete
        raise ActiveRecord::ReadOnlyRecord
      end
    end
  end
end
