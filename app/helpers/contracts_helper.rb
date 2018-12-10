# frozen_string_literal: true

module ContractsHelper
  def options_for_vendor_select(vendors = Vendor.all)
    options_for_select(
      vendors.collect { |vendor| [vendor.name, vendor.id] }
    )
  end

  def options_for_category_select(categories = Category.all)
    options_for_select(
      categories.collect { |category| [category.name, category.id] }
    )
  end
end
