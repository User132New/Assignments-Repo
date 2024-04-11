public class fifthincplt {
    int x = 10;
    
    void display() {
        System.out.println("Superclass method");
    }
}

class fifthsub extends fifthincplt {
    int y = 20;
    
    void display() {
        //Mistake  ---  fifth.display(); // Call superclass method
        System.out.println("Subclass method");
    }

    void accessSuperclassField() {
        System.out.println("Value of x in superclass: " + super.x);
    }
}
