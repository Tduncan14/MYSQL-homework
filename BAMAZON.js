// adding npm packages

var mysql = require('mysql');
var inquirer = require('inquirer');

// create a connectiomn with  node use the server and the database

var connection = mysql.createConnection({
    host:"localhost",
    port:3306,
    user:"root",
    password:"Keepmovingforward1",
    database:"Bamazon"
})


// connect to the database and create a function that shows the product

connection.connect(function(err){
    if(err) throw err;
    showProducts();
});

// items for sale

function showProducts (){
   var query = 'SELECT * FROM Products'
   connection.query(query,function(err,res){
       for(var i = 0; i < res.length; i++){
           console.log("Item ID: " + res[i].items + " || Product: " + res[i].productName + " || Department: " + res[i].Department + " || Price: " + res[i].price + " || Stock: " + res[i].stockQuantity);
       }
        shopping();
   })
};

// need to collect the userINPUT values

 function shopping(){
     inquirer.prompt([{
          name:"ProductID",
          type:"input",
          message:" What item are you looking for, input an id",
          validate: function(value){
             if(isNaN(value)== false){
                 return true;
             }
             else {return false;}
          },
          name :"Quantity",
          type:"input",
          message:"How many would you like buy?",
        /*===========================================*/
      validate:function(value){       
          if (isNaN(value) == false) {
            return true;
        } else {
            return false;
        }
    }
          }]). then(function(answer){


            var query = 'Select * FROM Products WHERE items ='+ answer.Quantity;
             connection.query(query,function(err,res){
                  if( answer.Quantity <= res) {
                       for( var i = 0; i < res.length; i++) {
                         console.log("We have this many " + res[i].stockQuantity +" "+ res[i].productName + ".");
                         console.log("Thanks Your order of "+ res[i].stockQuantity + " " + res[i].productName + " is now being processed.");
                       }
                  }
//////================================================================
                else {
                      console.log("come back later")
                }
////=====================================================
             })
             showProducts();


          })
        
 };



