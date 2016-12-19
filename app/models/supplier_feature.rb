class SupplierFeature < ActiveRecord::Base
    belongs_to :supplier_highlight
    belongs_to :supplier
end
