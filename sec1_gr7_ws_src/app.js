const express = require('express');
const path = require('path');
const dotenv = require("dotenv");

const app = express();
const router = express.Router();

app.use(router)
dotenv.config();

// For nodeJS to know where front-end Folder is. ( to make HTTP know that where it should go in src in HTML (TO MAKE SWIPER WORK!!! DO NOT DELETE) )
app.use('/front-end', express.static(path.join(__dirname, 'front-end')));

//for post
router.use(express.json());
router.use(express.urlencoded({ extended: true}));
//Port-Listen
app.listen(process.env.PORT, function () {
    console.log("Server listening at Port " 
    + process.env.PORT);});

//------------------------------------SQL IMNPORT-------------------------------------------------
const mysql = require('mysql2');
var connection = mysql.createConnection({
host     : process.env.DB_HOST,
user     : process.env.DB_USERNAME,
password : process.env.DB_PASSWORD,
database : process.env.DB_NAME
});
/* Connect to DB */
connection.connect(function(err){
   if(err) throw err;
   console.log(`Connected DB: ${process.env.DB_NAME}`);
});

//-----------------------------------ROUTING--------------------------------------------------
//Login
router.get(['/Login'], (req, res) => {
   console.log("Request at " + req.url);
   res.sendFile(path.join(`${__dirname}/front-end/html/login.html`))
});

//HomePage
router.get(['/', '/HomePage'], (req, res) => {
    console.log("Request at " + req.url);
    res.sendFile(path.join(`${__dirname}/front-end/html/HomePage.html`))
});

//SearchPage
router.get('/SearchPage', (req, res) => {
    console.log("Request at " + req.url);
    res.sendFile(path.join(`${__dirname}/front-end/html/SearchPage.html`))
});

//ProductDetail
router.get('/ProductDetail', (req, res) => {
    console.log("Request at " + req.url);
    res.sendFile(path.join(`${__dirname}/front-end/html/ProductDetail.html`))
});

//ProductManagement
router.get('/ProductManagement', (req, res) => {
   console.log("Request at " + req.url);
   res.sendFile(path.join(`${__dirname}/front-end/html/ProductManagement.html`))
});

//OurTeam
router.get('/OurTeam', (req, res) => {
    console.log("Request at " + req.url);
    res.sendFile(path.join(`${__dirname}/front-end/html/Team.html`))
});

//ContactUs
router.get('/Contact-Us', (req, res) => {
   console.log("Request at " + req.url);
   res.sendFile(path.join(`${__dirname}/front-end/html/Contact-Us.html`))
});



// ------------------ POST route for handling login attempts ----------------------------
router.post('/api/login', (req, res) => {
   const { email, password } = req.body; // Extract email and password from the request body

   console.log(email)
   console.log(password)
   console.log(`Login attempt for email: ${email}`);

   // Basic validation
   if (!email || !password) {
       return res.status(400).json({ success: false, message: 'Email and password are required.' });
   }

   const query = 'SELECT * FROM user WHERE email = ?';

   connection.query(query, [email], (error, results) => {
       //checking error
      if (error) {
           console.error('Database query error during login:', error);
           return res.status(500).json({ success: false, message: 'An internal server error occurred.' });
       }

       if (results.length === 0) {
           // User not found
           console.log(`Login failed: User not found for email ${email}`);
           return res.status(401).json({ success: false, message: 'Invalid email or password.' });
       }
       //if not error
       const user = results;
       user.forEach(element => {
          if (password === element.pwd) { // Direct comparison 
              // --- Password matches (Plain text) ---
              console.log(`Login successful for email: ${email}`);
              return res.status(200).json({ success: true, message: 'Login successful!' });
          } else {
              // --- Password does not match ---
              console.log(`Login failed: Incorrect password for email ${email}`);
              return res.status(401).json({ success: false, message: 'Invalid email or password.' }); // Use a generic message
          }
       });
   });
});
//----------------------------------------------------------------------------------------------------------------


//SELECT ALL PRODUCTS
router.get('/product', function (req, res){
   connection.query(`SELECT * FROM product`, function (error, results) {
      if(results.length ==0){
         return res.status(400).send({error: true, message: 'Your database didnt have any data.'})
      }
      else{
         console.log(`${results.length} rows returned`);
         return res.send({error: false, data: results, message: 'Select All Products successfully.'});
      }
   });
});
//----------------------------------------------------------------------------------------------------------------


//SELECT PRODUCT BY CODE or category name
router.get('/product/:ProductCodeOrCatName', function (req, res){
   let product_CodeOrCatName = req.params.ProductCodeOrCatName;
   console.log(`Searching for: ${product_CodeOrCatName}`);
   const query = `SELECT * FROM product WHERE product_code = ? OR category3_code LIKE ?`;
      connection.query(query, [product_CodeOrCatName, product_CodeOrCatName + '%'], function (error, results) {
         if(results.length == 0){
            return res.status(400).send({error: true, message: 'Please Provide product code or category name.'})
         }
         console.log(`${results.length} rows returned`);
            return res.send({error: false, data: results, message: 'Select Product successfully.'});
      });
});
//----------------------------------------------------------------------------------------------------------------


//INSERT PRODUCT
router.post('/product', function (req, res){
    let product = req.body.product;
    console.log(product);
    if(!product){
       return res.status(400).send({error: true, message: 'Please Provide product information'})
    }
 
    connection.query(`INSERT into product SET ?`, [product], function (error, results) {
       if(error){
         throw error;
       }
       console.log(`New Product has been inserted`);
       return res.send({error: false, data: results.affectedRows, message: 'Product has been inserted successfully.'});
    });
 
 }); 
 //----------------------------------------------------------------------------------------------------------------
 

 //UPDATE STUDENTS
 router.put('/product', function (req,res){
    let PreviousProduct_code = req.body.product.product_code;
    let NewProduct = req.body.newProduct;
 
    if (!PreviousProduct_code || !NewProduct){
       return res.status(400).send({error: true, message: 'Please Provide Product information'})
    }
 
    connection.query(`UPDATE product SET ? WHERE product_code = ?`, [NewProduct, PreviousProduct_code], function (error, results) {
       if(error){
         throw error;
       }
       console.log(`Product has been updated`);
       return res.send({error: false, data: results.affectedRows, message: `Product has been updated successfully.`});
    });
 
 });
 //----------------------------------------------------------------------------------------------------------------

 
 //DELETE PRODUCT
 router.delete('/product', function (req,res){
    let product_code = req.body.product.product_code;
    
    if (!product_code){
       return res.status(400).send({error: true, message: 'Please provide product_code'})
    }
 
    connection.query(`DELETE FROM product WHERE product_code = ?`, [product_code], function (error, results) {
       if(error){
         throw error;
       }
       console.log(`The product code ${product_code} has been deleted.`);
       return res.send({error: false, data: results.affectedRows, message: `The Product id ${product_code} has been deleted successfully.`});
    });
 });
//----------------------------------------------------------------------------------------------------------------










 