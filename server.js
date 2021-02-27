const mysql = require("mysql");
const inquirer = require("inquirer");
const consoleTable = require("console.table");
const promisemysql = require("promise-mysql");

//-------------------CONNECTION --------------------------------------------
const connectionPath = {
    host: "localhost",
    port: 3306,
    //---------------YOUR MYSQL USERNAME-------------------------------------
    user: "root",
    //---------------YOUR MYSQL PASSWORD-------------------------------------
    password: "12345678",
    database: "employees_DB"
}

//-------------------CONNECTION----------------------------------------------
const connection = mysql.createConnection(connectionPath);
//-------------------DATABASE CONNECTION-------------------------------------
connection.connect((err) => {
    if (err) throw err;

    //--------------EMPLOYEE TRACKER------------------------------------------
    console.log("\n EMPLOYEE TRACKER \n");
    mainMenu();
});

//------------------MENU FUNCTION---------------------------------------------
function mainMenu() {
    //--------------QUESTIONS-------------------------------------------------
    inquirer.prompt({
            name: "action",
            type: "list",
            message: "MAIN MENU",
            choices: [
                "View all employees",
                "View all employees by role",
                "View all employees by department",
                "View all employees by manager",
                "Add employee",
                "Add role",
                "Add department",
                "Update employee role",
                "Update employee manager",
                "Delete employee",
                "Delete role",
                "Delete department",
                "View department budgets"
            ]
        })
        .then((answer) => {

            //-----SWITCH STATEMENT---------------------------------------------
            switch (answer.action) {
                case "View all employees":
                    viewAllEmp();
                    break;
                case "View all employees by department":
                    viewAllEmpByDept();
                    break;
                case "View all employees by role":
                    viewAllEmpByRole();
                    break;
                case "Add employee":
                    addEmp();
                    break;
                case "Add department":
                    addDept();
                    break;
                case "Add role":
                    addRole();
                    break;
                case "Update employee role":
                    updateEmpRole();
                    break;
                case "Update employee manager":
                    updateEmpMngr();
                    break;
                case "View all employees by manager":
                    viewAllEmpByMngr();
                    break;
                case "Delete employee":
                    deleteEmp();
                    break;
                case "View department budgets":
                    viewDeptBudget();
                    break;
                case "Delete role":
                    deleteRole();
                    break;
                case "Delete department":
                    deleteDept();
                    break;
            }
        });
}

