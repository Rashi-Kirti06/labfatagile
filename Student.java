import java.util.ArrayList;

public class Student {
    private String name;
    private int id;
    private ArrayList<String> registeredCourses;

    // Constructor to initialize student details
    public Student(String name, int id) {
        this.name = name;
        this.id = id;
        this.registeredCourses = new ArrayList<>();
    }

    // Method to add a course to the student's list
    public void registerCourse(String courseName) {
        registeredCourses.add(courseName);
        System.out.println("Successfully registered for: " + courseName);
    }

    // Method to display all student registration details
    public void displayDetails() {
        System.out.println("----- Student Details -----");
        System.out.println("Student Name: " + name);
        System.out.println("Student ID  : " + id);
        System.out.println("Courses     : " + (registeredCourses.isEmpty() ? "None" : registeredCourses));
    }

    public static void main(String[] args) {
        // Example usage
        Student student1 = new Student("Alice Johnson", 101);
        student1.registerCourse("Computer Science 101");
        student1.registerCourse("Data Structures");
        
        student1.displayDetails();
    }
}
