import utils
import os {input}
import structs

fn main()
{
	mut shop_cart := [] structs.Product{}

	mut operation := ""

	mut avail_products := [] structs.Product{}

	// mut total := 0.0

	for {
		operation = input("What would you like to do?\n(1) Create products\n(2) View cart\n(3) View available products\n(4) Add to cart\n(0) End program\nChoose:  ")

		// println("------------------------------------------------------------------------------")

		if operation == "0" {
			break
		}else if operation == "1" {
			avail_products = utils.create_products(avail_products)
			continue
		}else if operation == "2" && shop_cart.len > 0 {
			println(shop_cart)
			continue
		}else if operation == "3" && avail_products.len > 0 {
			println(avail_products)
			continue
		}else if operation == "4" {
			shop_cart << utils.add_to_cart(avail_products)
			continue
		}else {
			continue
		}

		// println("------------------------------------------------------------------------------")
	}

}