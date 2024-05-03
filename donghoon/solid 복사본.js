// Bad example without SRP
class UserManagement {
    constructor() {
        // User management logic including authentication, validation, and database operations
    }

    authenticate(username, password) {
        // Authentication logic
    }

    validateInput(input) {
        // Input validation logic
    }

    saveToDatabase(user) {
        // Database operation to save user information
    }
}

// Good example with SRP
class UserAuthentication {
    constructor() {
        // Authentication logic
    }

    authenticate(username, password) {
        // Authentication logic
    }
}

class UserValidation {
    constructor() {
        // Input validation logic
    }

    validateInput(input) {
        // Input validation logic
    }
}

class UserDatabase {
    constructor() {
        // Database operation to save user information
    }

    saveToDatabase(user) {
        // Database operation to save user information
    }
}
