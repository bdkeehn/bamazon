var mysql = require("mysql");
var inquirer = require("inquirer");

var connection = mysql.createConnection({
    host: "localhost",
  
    port: 3306,
  
    user: "root",
  

    password: "root",
    database: "bamazonDB"
  });
  
  connection.connect(function(err) {
    if (err) throw err;
    console.log("connected as id " + connection.threadId + "\n");
  //  createProduct();
  });

  function printProduct(){
      // selecting all products from products table
  connection.query("Select * FROM products", function(error, results){
    if (error) throw error;
    // use console table to print results for customer.
    console.table(results);
    promptPurchase(results);
  })

  }
  function promptPurchase(data){
      // inquirer prompt for id of product
      //will need to use inquirer.
      //will do 2 inquirer prompts in an array.
      inquirer
          .prompt([{
              type: "input",
              name: "itemBuy",
              message: "What item would you like to buy?"
             

          },
          {   type: "input",
              name: "itemStock",
              message: "How many would you like to buy?"
          }
        ])
        .then(function(ans){
            connection.query(`Select "${ans.itemBuy}" FROM products`, function(error, results){
                if (error) throw error;
                console.log(results)
                for( i = 0; i<data.length; i++){
                if ( ans.itemBuy == data[i].product_name){ 
                  if( ans.itemStock < data[i].stock_quantity){
                    
                  }else {
                  }
                }
                }
                // console.log("error");


        })


      //will use a .then for user input.
      //will use connection.query to make a string that we will concatanate our query string with id and number.

  });}
function start(){
    // this will print al available product and values.
printProduct();

}
start();


