module ApplicationHelper
    def resource_name
    :merchant
  end

  def resource
    @resource ||= Merchant.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:merchant]
  end
end