module ApplicationHelper
    def resource_name
    :merchant
    end
    
    def resource
    @resource ||= Merchant.new
    end
end