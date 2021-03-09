// Spørgsmål a --------
class Car {
    float speed;

    Car(float s) {
        speed = s;
        // Kode
    }

    void drive() {
        // Kode
    }

    void blinker(boolean side) {
        // Kode
    }
}

class Brand extends Car {
    String brand;

    Brand(float s, String brandName) {
        super(s);
        brand = brandName;
    }

    // Kode
}

// Spørgsmål c --------
Car[] allCars = new Car[2];

allCars[0] = new Brand(30, "BMW");
allCars[1] = new Brand(30, "VOLVO");

for (Car car : allCars) {
    car.drive();
}