package com.example;

public class HelloDevOpsTest {

    public static void main(String[] args) {
        System.out.println("Testing HelloDevOps class...");

        String message = HelloDevOps.getMessage();

        if ("Hello from DevOps Training".equals(message)) {
            System.out.println("Test passed!");
            System.exit(0);
        } else {
            System.out.println("Test failed!");
            System.exit(1);
        }
    }
}
