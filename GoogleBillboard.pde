public final static String e = "2.7182818284590452353602874713526624977572470936999595749669676277240766303535475945713821785251664274274663919320030599218174135966290435";  

public void setup() {
    // Loop through the digits of e to find the first 10-digit prime
    for (int i = 0; i < e.length() - 10; i++) {
        String digits = e.substring(i + 2, i + 12);  // Take 10 consecutive digits after the decimal point
        double dNum = Double.parseDouble(digits);  // Convert string to double
        if (isPrime(dNum)) {  // Double check if the number is prime
            System.out.println("First 10-digit prime: " + dNum);
            break;
        }
    }
}

public boolean isPrime(double dNum) {
    if (dNum <= 1) return false;  // Numbers less than or equal to 1 are not prime
    for (int i = 2; i <= Math.sqrt(dNum); i++) {
        if (dNum % i == 0) return false;  // If divisible by any number, it's not prime
    }
    return true;
}

public void draw() {
    // Not needed for this assignment
}
