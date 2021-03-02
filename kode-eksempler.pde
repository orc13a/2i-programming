int x = 5;

int minFunc(int n) {
    for (int i = 1; i <= 10; i++) {
        n += i;
    }

    return n;
}

println(minFunc(x)); // Output: 15



int x = 5;

int minFunc(int n) {
    int newN = n;

    for (int i = 1; i <= 10; i++) {
        newN += i;
    }

    return n;
}

println(minFunc(x)); // Output: 5





class User {
    String firstName;
    String lastName;

    User(String firstName_, String lastName_) {
        this.firstName = firstName_;
        this.lastName = lastName_;
    }

    void printUser() {
        println(this.firstName + " " + this.lastName);
    }
}

User user1 = new User("Oliver", "Christensen");

