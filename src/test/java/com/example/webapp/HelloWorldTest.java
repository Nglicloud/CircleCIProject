// File: src/test/java/com/example/webapp/HelloWorldTest.java
package com.example.webapp;

import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;

public class HelloWorldTest {

    @Test
    public void testSayHello() {
        HelloWorld hw = new HelloWorld();
        assertEquals("Hello, CircleCI & AWS!", hw.sayHello());
    }
}