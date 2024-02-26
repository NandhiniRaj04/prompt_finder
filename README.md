# Prompt Finder Rails Application

## Description

Prompt Finder is a web application built with Ruby on Rails that allows users to search for prompts. It utilizes the Algolia search service to provide fast and relevant search results. The application also keeps track of recent keyword searches.

## Versions Used

- Ruby: 3.1.0
- Rails:  7.1.3.2
- PostgreSQL: 12.17
- Operating System: Ubuntu 20.04 (WSL)


## Setup Instructions

### 1. Clone the Repository

cd prompt-finder

### 2. Install Dependencies

bundle install

### 3. Set Up PostgreSQL
Install PostgreSQL on your system if you haven't already. 
sudo apt update
sudo apt install postgresql postgresql-contrib

### 4. Start and Enable PostgreSQL Service
Ensure that PostgreSQL is running on your system. You may need to start the PostgreSQL service using your system's service manager.
sudo systemctl start postgresql

### 5.Set Up the Database
Create a database and set up the necessary tables by running the following commands:
rails db:create
rails db:migrate

### 6. Start Rails Server
rails server

### 7. Access the Application
Open your web browser and navigate to http://localhost:3000 to access the Prompt Finder application.

### USAGE
Enter keywords in the search form and click the "Search" button to find relevant prompts.
Matching prompts will be displayed below the search form.
Recent keyword searches will be displayed on the same page, allowing you to see what others have searched for recently.
Seeds file is not explicitly used here, rather the algolia indexes are populated with the dataset and used.

![image](https://github.com/NandhiniRaj04/prompt_finder/assets/39384668/15f6c809-3103-4e25-b6f3-1269ce8ff798)

![image](https://github.com/NandhiniRaj04/prompt_finder/assets/39384668/23d0c3e2-c770-4da0-aeef-cf0a9bcb5b80)

### Contributors
Nandhini Raj
