package com.example.orderservice.controller;

import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.GetMapping;

@RestController
@RequestMapping("/orders")
public class OrderController {

    @GetMapping("/createorder")
    public String getOrders() {
        return "From the Order Service: Order created successfully!";
    }
}
