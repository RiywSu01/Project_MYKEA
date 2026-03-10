# MYKEA - Online Store about bedding accessories

This project is a web application for an online bedding accessories store called "MYKEA".

This project includes:
*   A website for customers to browse and search for products.
*   An admin area for managing products and viewing information.
*   A backend server using Node.js to handle data and logic.
*   A database to store product and admin information.


## Features

*   **Home Page:** Shows featured products and previews. ([`/html/homePage.html`](http://localhost:3000/)).
*   **Search Page:** Allows users to search for products by name(title). ([`/html/SearchPage.html`](http://localhost:3000/SearchPage)).
*   **Product Detail Page:** Shows details for a specific product that user chosen, For example product id = 125944224. ([`/html/ProductDetail.html`](http://localhost:3000/ProductDetail?productCode=125944224)).
*   **Login Page:** login page. ([`/html/login.html`](http://localhost:3000/login)).
*   **Product Management Page (Admin):** Allows admins to use modify, add, delete the products **(*need to login as admin account first to access this page*)**. ([`/html/ProductManagement.html`](http://localhost:3000/ProductManagement)).
*   **Team Page:** Information about the development team. ([`/html/team.html`](http://localhost:3000/OurTeam)).
*   **Contact-us Page:** Information about our company. ([`/html/Contact-Us.html`](http://localhost:3000/Contact-Us)).
*   **Backend API:** Handles requests for data (login, products, images) using Node.js and Express (app.js)

*   **Database:** Uses SQL database to store the data.

## Librarys and Service Used

*   **Frontend:** HTML, CSS, JavaScript, Bootstrap 5, Swiper
*   **Backend:** Node.js, Express.js
*   **Database:** MYSQL (mysql2)
*   **Environment Variables:** dotenv
*   **Development:** Nodemon
*   **Public API:** Longdo Map


## Setup and Installation

**Install Dependencies:** : Open a terminal in the directory and run:
```sh
    npm install dotenv express jsdom mysql2 nodemon swiper
```

## How to Run

1.  **Start the Server:** Open a terminal in the directory and run:
    ```sh
    npm start app.js
    ```
    This uses `nodemon` to start the server, which will automatically restart if you make changes to the code.
2.  **Access the Website:** Open your web browser and go to http://localhost:3000.



## Notes

*   This project uses separate frontend (HTML/CSS/JS) and backend (Node.js) components.
*   The backend provides API endpoints that the frontend uses to get and manage data.
**Reminders**
*   **To access ProductManagement Page (ProductManagement.html)**
    
    -you need to **login as admin account first**. ( All of admin account can see in our **mykea_database** the table named **User** ) , example:

    ```
        • Email: admin123@gmail.com
        • Password: admin123
    ```
*   **Search Page, search bar value (SearchPage.html)**
    
    -For the **search bar** of the SearchPage.html, the value that is use for searching is **title** of the product.

*   **ProductManagement Page (ProductManagement.html)**
    
    -For the **search bar** of the ProductManagement.html, the value that is use for searching is **(product_code and category3_code)** of the product.


## Expected Directory Structure

* The node_modules directory and package-lock.json file will appear after you run npm install.

```
In new created Folder
│
├───front-end
│   ├───asset      
│   │        ....
│   │
│   ├───css
│   │       ProductDetail.css
│   │       style.css
│   │       swiper-bundle.min.css
│   │ 
│   │
│   ├───html
│   │        Contact-Us.html
│   │        HomePage.html
│   │        login.html
│   │        ProductDetail.html
│   │        ProductManagement.html
│   │        SearchPage.html
│   │        team.html
│   │
│   └───js
│           script.js
│           swiper-bundle.min.js
│ 
|
│
├───node_modules                 # (Generated after npm install)
│   └───...                      # (Contains installed dependencies)
│
│
├───.env
├───app.js
├───package-lock.json            # (Generated after npm install)
└───package.json         
   

