class Cart < ApplicationRecord
    #one cart consists usually of many line items
    has_many :line_items, dependent: :destroy

    def add_product(product)
        current_item = line_items.find_by(product_id: product.id) #defines current_item as an item in the cart with the same product id as the item to be added (if it finds one)
        if current_item
            current_item.quantity += 1 #if a current item has been found, its quantity gets added +1
        else
            current_item = line_items.build(product_id: product.id) #else the new line_item gets build
        end
        current_item
    end 

end
