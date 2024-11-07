This project is still under development. Along with this readme.md file

# Library Book Reservation System

A web application designed to allow users to browse, reserve, and manage library books efficiently. The system integrates a React frontend with an Express.js backend and uses PostgreSQL for data storage.

## Description

The Library Book Reservation System provides users with a seamless interface to search for books, check availability, and reserve them for later pickup. Librarians can manage book inventories, track reservations, and ensure the smooth operation of the library's book lending process. The application is built using a modern tech stack, combining React for the frontend, Express.js for the backend, and PostgreSQL for the database. This ensures a responsive user experience and robust data management.

## Getting Started

### Dependencies

* Node.js and npm (for running Express.js and React)
* PostgreSQL (for the database)
* A modern web browser (for the frontend)
* Recommended OS: Windows 10, macOS, or a Linux distribution

### Installing

1. **Clone the repository:**
   ```
   git clone https://github.com/yourusername/library-book-reservation-system.git
   ```
2. **Install backend dependencies:**
   ```
   cd backend
   npm install
   ```
3. **Install frontend dependencies:**
   ```
   cd ../frontend
   npm install
   ```
4. **Set up PostgreSQL:**
   * Create a PostgreSQL database. You can follow the .sql file created
   * Configure the database connection in the backend by editing the `.env` file with your database credentials.

### Executing program

* **Running the backend:**
   ```
   cd backend
   npm start
   ```
* **Running the frontend:**
   ```
   cd frontend
   npm start
   ```
* **Access the application:**
   * Open your browser and navigate to `http://localhost:3000` to start using the application.

## Help

Common issues and solutions:

* **Port conflict:**
   ```
   Error: Port 3000 is already in use.
   ```
   * Solution: Change the port in the frontend's `package.json` or close the program using that port.

* **Database connection issues:**
   * Ensure PostgreSQL is running and that your connection credentials in `.env` are correct.

## Authors

* Rodolfo Gil-Pereira  
* Odin Fox

## Version History

* 0.2
    * Various bug fixes and optimizations
    * See [commit change](#) or See [release history](#)
* 0.1
    * Initial Release

## License

This project is licensed under the [MIT] License - see the LICENSE.md file for details.
