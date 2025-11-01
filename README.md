# 🧪 Restful Booker API Testing Project

## 📌 Description

This project demonstrates **manual API testing** using **Postman** for the [Restful Booker API](https://restful-booker.herokuapp.com/).  
It covers the **CRUD operations** (Create, Read, Update, Delete) and authentication process for hotel booking management.

The goal is to validate API responses, verify data integrity, and ensure that all endpoints work as expected.

---

## 🔗 Base URL

## [https://restful-booker.herokuapp.com](https://restful-booker.herokuapp.com)

## 🧰 Tools Used

| Tool | Purpose |
| --- | --- |
| **Postman** | API testing and collection management |
| **Newman** | run Automation API testing |
| **Allure** | for report |
| **GitHub** | Version control and documentation |

---

## 📂 Folder Structure

```bash
RestfulBooker_API_Testing/  
│  
├── Collections/  
│  │
│  └── RestfulBooker_Collection.json  
│  
├── Environment/  
│ │
│ └── RestfulBooker_Env.json 
│
├── scripts/  
│ │
│ ├── run_newman.bat
│ │
│ ├── generate_report.bat
│ │
│ └── open_report.bat
│ 
├── allure-results/              (generated automatically)
│
├── allure-report/               (generated automatically)
│  
├── README.md
│
└── run_newman_and_report.bat         (main pipeline runner)
```
---

## 🚀 Test Scenarios

| # | Endpoint | Method | Description | Auth Required |
| --- | --- | --- | --- | --- |
| 1 | `/ping` | `GET` | Check if API is up and running | ❌ |
| 2 | `/auth` | `POST` | Create a token for authentication | ❌ |
| 3 | `/booking` | `POST` | Create a new booking | ❌ |
| 4 | `/booking/{id}` | `GET` | Get booking details by ID | ❌ |
| 5 | `/booking/{id}` | `PUT` | Update a booking (full update) | ✅ |
| 6 | `/booking/{id}` | `PATCH` | Update a booking (partial update) | ✅ |
| 7 | `/booking/{id}` | `DELETE` | Delete a booking | ✅ |

---

## 🧩 Variables (in Postman Environment)

| Variable | Description | Example |
| --- | --- | --- |
| `base_url` | Base endpoint of API | `https://restful-booker.herokuapp.com` |
| `username` | user used for logging in to create token | `admin` |
| `password` | password used for logging in to create token | `password123` |
| `token` | Authentication token | `generated on firing API` |
| `created_bookingid` | ID of created booking | `generated on firing API` |
| `update_bookingid` | ID of created booking for full update | `generated on firing API` |
| `partial_update_bookingid` | ID of created booking for partial update (PATCH) | `generated on firing API` |
| `bookingid` | ID of created booking for Deletion | `generated on firing API` |

---
## 🚀 Running API Tests with Newman & Allure

To execute the API test suite using **Newman** and automatically generate a clean **Allure Report**, follow the steps below:

### ✅ 1. Run Tests
Use the batch script to clean old results, run Newman, generate and open allure report (double click on file):

```bash
run_newman_and_report.bat
```

### ✅ 2. Run Newman Manually from Terminal
If you want to run the collection manually (without the batch script), execute the following command:

Open Windows PowerShell on the project folder (Shift+Right Click).

Write the below comands on PowerShell.

```bash
newman run "Collections/Restful-Booker-collection.json" -e "Environment/Restful-Booker-Env.json" --reporters cli,allure
```
to generate allure report 

```bash
allure generate allure-results -o allure-report
```
to open allure report 

```bash
allure open allure-report
```
---
## ✅ Expected Results

- **Status Codes:**
    
    - 200 → Successful operation
        
    - 201 → Resource created
        
    - 403 → Forbidden / Invalid token
        
    - 404 → Resource not found

    - 500 → Internal server error

    - 400 → Bad Request

        
- **Validation Points:**
    
    - Response structure matches schema
        
    - Data consistency after CRUD operations
        
    - Token authentication required for update/delete
        

---

## 🧠 Author

🧑‍💻 **Eslam Roshdy**  
📧 [esroshdy22@gmail.com](https://mailto:esroshdy22@gmail.com)  
🔗 [GitHub Profile](https://github.com/EslamR0shdy94)


---

