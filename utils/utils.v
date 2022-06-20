module utils

import structs
import os {input}

pub fn create_products(avail_products [] structs.Product) [] structs.Product
{
	mut prods := avail_products.clone()

	mut name := ""
	mut price := ""

	mut prod := structs.Product{}

	mut cont := ""

	for {
		name = input("Name of the product: ")
		price = input("Price of "+name+": ")

		prod = structs.Product{
			name : name
			price : price.f64()
		}

		prods << prod

		cont = input("Would you like to continue?(y,n): ")
		if cont != "y" {
			break
		}
	}

	return prods
}

pub fn add_to_cart( avail_products [] structs.Product) structs.Product
{
	println("Available products: ")
	println(avail_products)

	name := input('Write the name of the product you want to add: ')

	mut found := structs.Product{}

	for prod in avail_products {
		if prod.name == name {
			found = prod
		}
	}

	return found
}
