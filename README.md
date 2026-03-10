# MYKEA - Online Store about bedding accessories (ITCS223 Project Phase II)
## Section 1, Group 7

This project is a web application for an online bedding accessories store called "MYKEA". It was created for the ITCS223 Introduction to Web Development course.

This project includes:
*   A website for customers to browse and search for products.
*   An admin area for managing products and viewing information.
*   A backend server using Node.js to handle data and logic.
*   A database to store product and admin information.


## Team Members

* Mr. Kanok Suriyachan 6688119
* Mr. Chatchanun Toungpornsup 6688133
* Mr. Supawit Sirikulpiboon 6688166
* Mr. Waris Sirivarint 6688217
* Mr. Thanawat Thanasirithip 6688226


## Features

*   **Home Page:** Shows featured products and previews. ([`/html/homePage.html`](http://localhost:3000/)).
*   **Search Page:** Allows users to search for products by name(title). ([`/html/SearchPage.html`](http://localhost:3000/SearchPage)).
*   **Product Detail Page:** Shows details for a specific product that user chosen, For example product id = 125944224. ([`/html/ProductDetail.html`](http://localhost:3000/ProductDetail?productCode=125944224)).
*   **Login Page:** login page. ([`/html/login.html`](http://localhost:3000/login)).
*   **Product Management Page (Admin):** Allows admins to use modify, add, delete the products **(*need to login as admin account first to access this page*)**. ([`/html/ProductManagement.html`](http://localhost:3000/ProductManagement)).
*   **Team Page:** Information about the development team. ([`/html/team.html`](http://localhost:3000/OurTeam)).
*   **Contact-us Page:** Information about our company. ([`/html/Contact-Us.html`](http://localhost:3000/Contact-Us)).
*   **Backend API:** Handles requests for data (login, products, images) using Node.js and Express (app.js)

*   **Database:** Uses SQL database to store the data. (sec1_gr7_database.sql)


## Librarys and Service Used

*   **Frontend:** HTML, CSS, JavaScript, Bootstrap 5, Swiper
*   **Backend:** Node.js, Express.js
*   **Database:** MYSQL (mysql2)
*   **Environment Variables:** dotenv
*   **Development:** Nodemon
*   **Public API:** Longdo Map


## Setup and Installation

1.  **Reminder:** Make sure you have Node.js and npm installed on your computer.
2.  **Clone the Repository:** Get the project files onto your computer.
3.  **Create a empty folder on your desktop (can name anything)**
4.  **Move 2 things into your new created empty folder:** 

4.1 **For sec1_gr7_fe_src** : move its folder into your new empty folder that you created, and rename its to "front-end" **(important, need to be exactly same name and lowercase to make it work)**.

4.2 **For sec1_gr7_ws_src** : move all 3 files in *"sec1_gr7_ws_src"* including *(app.js, package.json and .env)* into your new folder that you created.

5. **visual studio code** : open visual studio code and then select *File => Open folder...* , then select the new folder that you created from number #3.

6. **Install Dependencies:** : Open a terminal in the directory and run:
```sh
    npm install dotenv express jsdom mysql2 nodemon swiper
```
7. **Database Setup (SQL)** : open SQL workbench and select *File => Open SQL scripts...* , then select *"sec1_gr7_database.sql"* that you downloaded, and **run the script**  before do next steps.

7.1 **SetUp User to access the database** : select **Server => User and Privileges**, and then select **Add account**.

 then in **Login tab** setup like this, 
- **Login Name: "MYKEA_ADMIN"**

- **Authentication Type: "Standard"**

- **Limit to Hosts Matching: "localhost"**

- **Password: "mykea_123_kaomunkai"**

Then in **Account Limits tab**,
- set everything to be **0**

Then in **Administrative Roles tab**,
- Turn everything **on**.

Then in **Schema Privileges tab**,
- select **Add Entry...** , then select **Selected schema** and choose database name **"mykea_database"** , then select **"Select ALL"** to make this user can do every commands like select, delete, update, etc. , then select **Apply, to save all settings. (important)**



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
   

