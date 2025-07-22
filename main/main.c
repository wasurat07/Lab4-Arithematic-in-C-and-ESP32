#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "esp_system.h"
#include "esp_log.h"
#include "esp_timer.h"

static const char *TAG = "ARITHMETIC_LAB4";

// Function prototypes
float add(float a, float b);
float subtract(float a, float b);
float multiply(float a, float b);
float divide(float a, float b);
float power(float base, float exponent);
float square_root(float number);
int factorial(int n);
float average(float numbers[], int count);
float find_max(float numbers[], int count);
float find_min(float numbers[], int count);

// Arithmetic functions implementation
float add(float a, float b) {
    return a + b;
}

float subtract(float a, float b) {
    return a - b;
}

float multiply(float a, float b) {
    return a * b;
}

float divide(float a, float b) {
    if (b == 0) {
        ESP_LOGE(TAG, "Error: Division by zero!");
        return 0;
    }
    return a / b;
}

float power(float base, float exponent) {
    return powf(base, exponent);
}

float square_root(float number) {
    if (number < 0) {
        ESP_LOGE(TAG, "Error: Cannot calculate square root of negative number!");
        return 0;
    }
    return sqrtf(number);
}

int factorial(int n) {
    if (n < 0) {
        ESP_LOGE(TAG, "Error: Cannot calculate factorial of negative number!");
        return 0;
    }
    if (n == 0 || n == 1) {
        return 1;
    }
    return n * factorial(n - 1);
}

float average(float numbers[], int count) {
    if (count == 0) {
        ESP_LOGE(TAG, "Error: Cannot calculate average of empty array!");
        return 0;
    }
    float sum = 0;
    for (int i = 0; i < count; i++) {
        sum += numbers[i];
    }
    return sum / count;
}

float find_max(float numbers[], int count) {
    if (count == 0) {
        ESP_LOGE(TAG, "Error: Cannot find max of empty array!");
        return 0;
    }
    float max = numbers[0];
    for (int i = 1; i < count; i++) {
        if (numbers[i] > max) {
            max = numbers[i];
        }
    }
    return max;
}

float find_min(float numbers[], int count) {
    if (count == 0) {
        ESP_LOGE(TAG, "Error: Cannot find min of empty array!");
        return 0;
    }
    float min = numbers[0];
    for (int i = 1; i < count; i++) {
        if (numbers[i] < min) {
            min = numbers[i];
        }
    }
    return min;
}

void demonstrate_basic_operations() {
    ESP_LOGI(TAG, "=== Basic Arithmetic Operations ===");
    
    float a = 15.5, b = 4.2;
    
    ESP_LOGI(TAG, "Numbers: a = %.2f, b = %.2f", a, b);
    ESP_LOGI(TAG, "Addition: %.2f + %.2f = %.2f", a, b, add(a, b));
    ESP_LOGI(TAG, "Subtraction: %.2f - %.2f = %.2f", a, b, subtract(a, b));
    ESP_LOGI(TAG, "Multiplication: %.2f * %.2f = %.2f", a, b, multiply(a, b));
    ESP_LOGI(TAG, "Division: %.2f / %.2f = %.2f", a, b, divide(a, b));
    ESP_LOGI(TAG, "Power: %.2f ^ %.2f = %.2f", a, b, power(a, b));
    ESP_LOGI(TAG, "Square root of %.2f = %.2f", a, square_root(a));
}

void demonstrate_advanced_operations() {
    ESP_LOGI(TAG, "=== Advanced Operations ===");
    
    // Factorial
    int n = 5;
    ESP_LOGI(TAG, "Factorial of %d = %d", n, factorial(n));
    
    // Array operations
    float numbers[] = {2.5, 8.1, 3.7, 9.2, 1.4, 6.8, 4.3};
    int count = sizeof(numbers) / sizeof(numbers[0]);
    
    ESP_LOGI(TAG, "Array: [%.1f, %.1f, %.1f, %.1f, %.1f, %.1f, %.1f]", 
             numbers[0], numbers[1], numbers[2], numbers[3], 
             numbers[4], numbers[5], numbers[6]);
    
    ESP_LOGI(TAG, "Average: %.2f", average(numbers, count));
    ESP_LOGI(TAG, "Maximum: %.2f", find_max(numbers, count));
    ESP_LOGI(TAG, "Minimum: %.2f", find_min(numbers, count));
}

void demonstrate_error_handling() {
    ESP_LOGI(TAG, "=== Error Handling Demonstration ===");
    
    // Division by zero
    ESP_LOGI(TAG, "Testing division by zero:");
    divide(10.0, 0.0);
    
    // Square root of negative number
    ESP_LOGI(TAG, "Testing square root of negative number:");
    square_root(-5.0);
    
    // Factorial of negative number
    ESP_LOGI(TAG, "Testing factorial of negative number:");
    factorial(-3);
}

void performance_test() {
    ESP_LOGI(TAG, "=== Performance Test ===");
    
    const int iterations = 100000;
    float a = 123.456, b = 789.012;
    
    // Start time measurement
    int64_t start_time = esp_timer_get_time();
    
    // Perform operations
    for (int i = 0; i < iterations; i++) {
        volatile float result = add(a, b);
        result = multiply(result, 2.0);
        result = divide(result, 3.0);
        result = square_root(result);
    }
    
    // End time measurement
    int64_t end_time = esp_timer_get_time();
    int64_t execution_time = end_time - start_time;
    
    ESP_LOGI(TAG, "Performed %d arithmetic operations", iterations * 4);
    ESP_LOGI(TAG, "Total execution time: %lld microseconds", execution_time);
    ESP_LOGI(TAG, "Average time per operation: %.2f microseconds", 
             (float)execution_time / (iterations * 4));
}

void app_main(void)
{
    ESP_LOGI(TAG, "Starting Arithmetic Lab4 on ESP32");
    ESP_LOGI(TAG, "Free heap size: %lu bytes", esp_get_free_heap_size());
    
    // Main demonstration loop
    while (1) {
        ESP_LOGI(TAG, "\n" 
                      "========================================\n"
                      "    ESP32 Arithmetic Calculator Lab4   \n"
                      "========================================");
        
        // Demonstrate basic operations
        demonstrate_basic_operations();
        vTaskDelay(2000 / portTICK_PERIOD_MS);
        
        // Demonstrate advanced operations
        demonstrate_advanced_operations();
        vTaskDelay(2000 / portTICK_PERIOD_MS);
        
        // Demonstrate error handling
        demonstrate_error_handling();
        vTaskDelay(2000 / portTICK_PERIOD_MS);
        
        // Performance test
        performance_test();
        
        ESP_LOGI(TAG, "Lab4 cycle completed. Restarting in 10 seconds...");
        ESP_LOGI(TAG, "Free heap size: %lu bytes", esp_get_free_heap_size());
        
        vTaskDelay(10000 / portTICK_PERIOD_MS);
    }
}
