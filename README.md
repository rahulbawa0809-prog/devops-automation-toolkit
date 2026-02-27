# 🚀 DevOps Automation Toolkit

## 📌 Project Description

The DevOps Automation Toolkit is a Linux-based automation project designed to demonstrate practical DevOps skills using Shell Scripting and Git version control.

This project simulates a real-world development workflow by implementing feature branching, merging, rebasing, and remote repository management while automating common administrative tasks such as system setup, backup, and monitoring.

---

## 🎯 Project Objectives

- Apply structured Git branching strategy
- Practice merge and rebase workflows
- Automate repetitive Linux tasks using shell scripting
- Implement backup and monitoring utilities
- Understand real DevOps development lifecycle

---

## 🏗️ Project Structure

devops-automation-toolkit  
│  
├── scripts/  
│   ├── setup.sh  
│   ├── backup.sh  
│   ├── monitor.sh  
│   └── menu.sh  
│  
├── logs/  
├── backup/  
├── README.md  
└── .gitignore  

---

## 🌿 Branching Model

The project follows a structured branch workflow:

- **main** – Production-ready code  
- **develop** – Integration branch  
- **feature-setup**  
- **feature-backup**  
- **feature-monitor**  
- **feature-menu**

Feature branches were individually developed and later merged into `develop`, and finally merged into `main`.  
Rebase operations were also performed to maintain a cleaner commit history.

---

## 🛠️ Script Modules

### 🔹 setup.sh
- Creates required directories
- Generates sample log files
- Sets execution permissions
- Displays completion message

### 🔹 backup.sh
- Compresses project files
- Adds date to backup filename (`backup_YYYY_MM_DD.tar.gz`)
- Stores backups inside `backup/`
- Removes old backups automatically

### 🔹 monitor.sh
Displays important system information:
- Disk usage (`df -h`)
- Memory usage (`free -h`)
- Logged-in users (`who`)
- Running processes (`top`)

### 🔹 menu.sh
Menu-driven program that allows users to:
1. Setup environment  
2. Backup files  
3. Monitor system  
4. Exit  

Concepts used:
- While loop
- Case statement
- Variables
- Control flow

---

## 🔎 Git Operations Demonstrated

The following Git commands were used during development:

- git clone  
- git branch  
- git switch / checkout  
- git add  
- git commit  
- git push / pull / fetch  
- git status  
- git diff  
- git log  
- git merge  
- git rebase  
- git stash  
- git reset  
- git revert  

---

## 🔁 Merge & Rebase

Both merge and rebase strategies were implemented:

- **Merge** preserves complete branch history.
- **Rebase** creates a linear and cleaner commit structure.

---

## 📚 Learning Outcomes

Through this project, the following skills were developed:

- Understanding Git workflow (Working Directory → Staging → Repository)
- Managing multiple branches effectively
- Handling merge and rebase operations
- Automating Linux tasks with shell scripting
- Managing remote repositories on GitHub

---

## 👨‍💻 Author

Rahul Goswami  
DevOps Assignment – Linux Automation Toolkit
