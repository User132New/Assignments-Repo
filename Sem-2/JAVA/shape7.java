abstract class shape7 {
    abstract double area();
    void display() {
        System.out.println("This is a shape.");
    }
}
class Rectangle extends shape7 {
    double length, width;
    Rectangle(double length, double width) {
        this.length = length;
        this.width = width;
    }
    double area() {
        return length * width;
    }
}