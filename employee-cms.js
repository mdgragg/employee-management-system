const mysql = require("mysql")
const inquirer = require("inquirer")
const cTable = require("console.table")

const connection = mysql.createConnection({
  host: "localhost",
  port: 3306,
  user: "root",
  password: "KyrieZoey93", // yes, these are my cats names
  database: "theOffice_db"
});

connection.connect(function(err) {
    if (err) throw err;
    start();
  });

  
function start() {
    inquirer.prompt([
        {
            type: "list",
            message: "What would you like to do?",
            name: "action",
            choices: ["View All Employees", "View All Employees By Department", "View All Employees by Role", "Add Employee", "Add Department", "Add Role", "Update Employee Role", "Exit"]
        }
    ]).then(function (res) {
        switch (res.action) {
            case "View All Employees":
                viewAll();
                break;
            case "View All Employees By Department":
                viewDept();
                break;
            case "View All Employees by Role":
                viewRole();
                break;
            case "Add Employee":
                addEmployee();
                break;
            case "Add Department":
                addDept();
                break;
            case "Add Role":
                addRole();
                break;
            case "Update Employee Role":
                updateEmployee();
                break;
            case "Update Employee Manager":
                updateEmployee();
                break;
            case "Exit":
                return;
        };
    });
};
