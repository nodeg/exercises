#!/bin/bash


function create_user {
    echo "First name:"
    read first_name
    echo "Last name:"
    read last_name
    echo "Birthday (Format: YYYY-MM-DD)"
    read birthday
    echo "Phone number"
    read phonenumber
    echo "Email address"
    read email
    echo "Street"
    read street
    echo "Street number"
    read street_number
    echo "PLZ"
    read plz
    echo "City"
    read city

    sqlite3 shop.db "INSERT INTO customers (first_name, last_name, birthdate, phonenumber, email) VALUES ($first_name, $last_name, $birthday);"
    sqlite3 shop.db "INSERT INTO address (street, street_number, plz, city) VALUES ($street, $street_number, $plz, $city);"
}

function create_product {
    echo "Product name:"
    read name
    echo "Product price:"
    read price
    echo "Amount:"
    read amount

    sqlite3 shop.db "INSERT INTO products (name, price, amount) VALUES (\"$name\", $price, $amount);"
}

function create_order {
    echo "User ID"
    read customer_id
    echo "Product ID"
    read product_id
    echo "Amount"
    read product_amount
    echo "Order date"
    read order_date
    echo "Shipment"
    read shipment
    echo "Payment method"
    read payment

    sqlite3 shop.db "INSERT INTO orders (order_date customer_id, product_id, product_amount shipment payment) VALUES ($order_date, $customer_id, $product_id, $product_amount, $shipment, $payment);"
}

function menu {
    clear
    echo "1. Create database"
    echo "2. Create user"
    echo "3. Create product"
    echo "4. Create order"
    echo "5. Show customer names"
    echo "6. Show customer orders"
    echo "7. Show products"
    echo "8. Show addresses"
    echo "7. Exit"
    read menu_selection
}

while true; do
    menu
    case "$menu_selection" in
    1) sqlite3 shop.db < create_db.sql
       ;;
    2) create_user
       ;;
    3) create_product
       ;;
    4) create_order
       ;;
    5) sqlite3 shop.db "SELECT * FROM view_customers;"
       ;;
    6) sqlite3 shop.db "SELECT * FROM view_orders;"
       ;;
    7) sqlite3 shop.db "SELECT * FROM view_products;"
       ;;
    8) sqlite3 shop.db "SELECT * FROM view_addresses;"
       ;;
    9) exit
       ;;
    *) echo "Invalid input"
       read
       ;;
    esac
done
