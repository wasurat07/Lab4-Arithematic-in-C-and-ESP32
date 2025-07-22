# Lab4: แบบฝึกหัดขั้นที่ 1 - พื้นฐานการเขียนโปรแกรม

## 🎯 วัตถุประสงค์
- ฝึกการใช้ตัวแปรและการคำนวณพื้นฐาน
- เรียนรู้การใช้ฟังก์ชันและการจัดการข้อผิดพลาด
- ทำความเข้าใจ ESP_LOG และการแสดงผล

---

## 📝 แบบฝึกหัดที่ 1: เครื่องคิดเลขพื้นฐาน

### 1.1 สร้างไฟล์ `exercises/exercise1.c`

```c
#include <stdio.h>
#include <math.h>
#include "esp_log.h"

static const char *TAG = "EXERCISE1";

// TODO 1: สร้างฟังก์ชันการคำนวณพื้นฐาน
float add(float a, float b) {
    // เติมโค้ดที่นี่
    return 0.0;
}

float subtract(float a, float b) {
    // เติมโค้ดที่นี่
    return 0.0;
}

float multiply(float a, float b) {
    // เติมโค้ดที่นี่
    return 0.0;
}

float divide(float a, float b) {
    // TODO: ตรวจสอบการหารด้วยศูนย์
    // เติมโค้ดที่นี่
    return 0.0;
}

// TODO 2: สร้างฟังก์ชันสำหรับทดสอบ
void test_basic_calculator(void) {
    float a = 15.5;
    float b = 4.2;
    
    ESP_LOGI(TAG, "=== Basic Calculator Test ===");
    ESP_LOGI(TAG, "Testing with a = %.2f, b = %.2f", a, b);
    
    // เติมโค้ดการทดสอบที่นี่
    // แสดงผลการบวก ลบ คูณ หาร
}

void exercise1_main(void) {
    ESP_LOGI(TAG, "Starting Exercise 1: Basic Calculator");
    test_basic_calculator();
    
    // TODO 3: ทดสอบกรณีหารด้วยศูนย์
    ESP_LOGI(TAG, "Testing division by zero:");
    // เติมโค้ดที่นี่
}
```

### 1.2 เฉลย (ไม่ต้องดูก่อนทำ!)

<details>
<summary>คลิกเพื่อดูเฉลย</summary>

```c
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
    if (b == 0.0) {
        ESP_LOGE(TAG, "Error: Division by zero!");
        return 0.0;
    }
    return a / b;
}

void test_basic_calculator(void) {
    float a = 15.5;
    float b = 4.2;
    
    ESP_LOGI(TAG, "=== Basic Calculator Test ===");
    ESP_LOGI(TAG, "Testing with a = %.2f, b = %.2f", a, b);
    
    ESP_LOGI(TAG, "%.2f + %.2f = %.2f", a, b, add(a, b));
    ESP_LOGI(TAG, "%.2f - %.2f = %.2f", a, b, subtract(a, b));
    ESP_LOGI(TAG, "%.2f * %.2f = %.2f", a, b, multiply(a, b));
    ESP_LOGI(TAG, "%.2f / %.2f = %.2f", a, b, divide(a, b));
}

void exercise1_main(void) {
    ESP_LOGI(TAG, "Starting Exercise 1: Basic Calculator");
    test_basic_calculator();
    
    ESP_LOGI(TAG, "Testing division by zero:");
    float result = divide(10.0, 0.0);
    ESP_LOGI(TAG, "Result: %.2f", result);
}
```
</details>

---

## 📝 แบบฝึกหัดที่ 2: การทำงานกับ Array

### 2.1 สร้างไฟล์ `exercises/exercise2.c`

```c
#include <stdio.h>
#include "esp_log.h"

static const char *TAG = "EXERCISE2";

// TODO 1: สร้างฟังก์ชันหาค่าเฉลี่ย
float calculate_average(float numbers[], int count) {
    // ตรวจสอบ count ต้องมากกว่า 0
    // คำนวณผลรวมและหาค่าเฉลี่ย
    return 0.0;
}

// TODO 2: สร้างฟังก์ชันหาค่าสูงสุด
float find_maximum(float numbers[], int count) {
    // ตรวจสอบ count ต้องมากกว่า 0
    // วนลูปหาค่าสูงสุด
    return 0.0;
}

// TODO 3: สร้างฟังก์ชันหาค่าต่ำสุด
float find_minimum(float numbers[], int count) {
    // ตรวจสอบ count ต้องมากกว่า 0
    // วนลูปหาค่าต่ำสุด
    return 0.0;
}

// TODO 4: สร้างฟังก์ชันแสดงสถิติ
void display_statistics(float numbers[], int count) {
    ESP_LOGI(TAG, "=== Array Statistics ===");
    
    // แสดงข้อมูลใน array
    ESP_LOGI(TAG, "Numbers in array:");
    for (int i = 0; i < count; i++) {
        ESP_LOGI(TAG, "  [%d] = %.2f", i, numbers[i]);
    }
    
    // แสดงสถิติต่างๆ
    ESP_LOGI(TAG, "Count: %d", count);
    // เติมโค้ดแสดงค่าเฉลี่ย สูงสุด ต่ำสุด
}

void exercise2_main(void) {
    ESP_LOGI(TAG, "Starting Exercise 2: Array Statistics");
    
    // ข้อมูลทดสอบ
    float temperatures[] = {25.5, 28.2, 24.1, 30.0, 26.8, 23.5, 29.3};
    int count = sizeof(temperatures) / sizeof(temperatures[0]);
    
    display_statistics(temperatures, count);
    
    // TODO 5: ทดสอบกับ array ว่าง
    ESP_LOGI(TAG, "Testing with empty array:");
    // เติมโค้ดทดสอบ
}
```

### 2.2 เฉลย

<details>
<summary>คลิกเพื่อดูเฉลย</summary>

```c
float calculate_average(float numbers[], int count) {
    if (count <= 0) {
        ESP_LOGE(TAG, "Error: Array count must be positive");
        return 0.0;
    }
    
    float sum = 0.0;
    for (int i = 0; i < count; i++) {
        sum += numbers[i];
    }
    return sum / count;
}

float find_maximum(float numbers[], int count) {
    if (count <= 0) {
        ESP_LOGE(TAG, "Error: Array count must be positive");
        return 0.0;
    }
    
    float max = numbers[0];
    for (int i = 1; i < count; i++) {
        if (numbers[i] > max) {
            max = numbers[i];
        }
    }
    return max;
}

float find_minimum(float numbers[], int count) {
    if (count <= 0) {
        ESP_LOGE(TAG, "Error: Array count must be positive");
        return 0.0;
    }
    
    float min = numbers[0];
    for (int i = 1; i < count; i++) {
        if (numbers[i] < min) {
            min = numbers[i];
        }
    }
    return min;
}

void display_statistics(float numbers[], int count) {
    ESP_LOGI(TAG, "=== Array Statistics ===");
    
    ESP_LOGI(TAG, "Numbers in array:");
    for (int i = 0; i < count; i++) {
        ESP_LOGI(TAG, "  [%d] = %.2f", i, numbers[i]);
    }
    
    ESP_LOGI(TAG, "Count: %d", count);
    ESP_LOGI(TAG, "Average: %.2f", calculate_average(numbers, count));
    ESP_LOGI(TAG, "Maximum: %.2f", find_maximum(numbers, count));
    ESP_LOGI(TAG, "Minimum: %.2f", find_minimum(numbers, count));
}

void exercise2_main(void) {
    ESP_LOGI(TAG, "Starting Exercise 2: Array Statistics");
    
    float temperatures[] = {25.5, 28.2, 24.1, 30.0, 26.8, 23.5, 29.3};
    int count = sizeof(temperatures) / sizeof(temperatures[0]);
    
    display_statistics(temperatures, count);
    
    ESP_LOGI(TAG, "Testing with empty array:");
    float avg = calculate_average(NULL, 0);
    ESP_LOGI(TAG, "Empty array average: %.2f", avg);
}
```
</details>

---

## 📝 แบบฝึกหัดที่ 3: การใช้ Loop และ Condition

### 3.1 สร้างไฟล์ `exercises/exercise3.c`

```c
#include <stdio.h>
#include <stdbool.h>
#include "esp_log.h"

static const char *TAG = "EXERCISE3";

// TODO 1: สร้างฟังก์ชันตรวจสอบจำนวนเฉพาะ
bool is_prime_number(int number) {
    // จำนวนเฉพาะคือจำนวนที่หารลงตัวได้เฉพาะ 1 และตัวมันเอง
    // ตัวอย่าง: 2, 3, 5, 7, 11, 13, 17, 19, 23, 29...
    
    if (number <= 1) {
        return false;  // จำนวนที่น้อยกว่าหรือเท่ากับ 1 ไม่ใช่จำนวนเฉพาะ
    }
    
    // TODO: เขียนโค้ดตรวจสอบจำนวนเฉพาะ
    // Hint: วนลูปจาก 2 ถึง sqrt(number) และตรวจสอบการหารลงตัว
    
    return true;
}

// TODO 2: สร้างฟังก์ชันคำนวณแฟกทอเรียล
long long factorial(int number) {
    // แฟกทอเรียลของ n = n! = n × (n-1) × (n-2) × ... × 1
    // ตัวอย่าง: 5! = 5 × 4 × 3 × 2 × 1 = 120
    
    if (number < 0) {
        ESP_LOGE(TAG, "Error: Cannot calculate factorial of negative number");
        return -1;
    }
    
    // TODO: เขียนโค้ดคำนวณแฟกทอเรียล
    
    return 1;
}

// TODO 3: สร้างฟังก์ชันสร้างตารางสูตรคูณ
void multiplication_table(int number) {
    ESP_LOGI(TAG, "=== Multiplication Table for %d ===", number);
    
    // TODO: สร้างตารางสูตรคูณ 1-12
    // ตัวอย่าง: 2 × 1 = 2, 2 × 2 = 4, ...
}

// TODO 4: สร้างฟังก์ชันหาตัวเลขฟีโบนัชชี
void fibonacci_sequence(int count) {
    ESP_LOGI(TAG, "=== Fibonacci Sequence (first %d numbers) ===", count);
    
    // ลำดับฟีโบนัชชี: 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, ...
    // F(n) = F(n-1) + F(n-2)
    
    if (count <= 0) {
        ESP_LOGW(TAG, "Count must be positive");
        return;
    }
    
    // TODO: เขียนโค้ดสร้างลำดับฟีโบนัชชี
}

void exercise3_main(void) {
    ESP_LOGI(TAG, "Starting Exercise 3: Loops and Conditions");
    
    // ทดสอบจำนวนเฉพาะ
    ESP_LOGI(TAG, "=== Prime Number Check ===");
    int test_numbers[] = {2, 3, 4, 5, 6, 7, 8, 9, 10, 11};
    int test_count = sizeof(test_numbers) / sizeof(test_numbers[0]);
    
    for (int i = 0; i < test_count; i++) {
        bool is_prime = is_prime_number(test_numbers[i]);
        ESP_LOGI(TAG, "%d is %s", test_numbers[i], is_prime ? "prime" : "not prime");
    }
    
    // ทดสอบแฟกทอเรียล
    ESP_LOGI(TAG, "=== Factorial Calculation ===");
    for (int i = 0; i <= 10; i++) {
        long long fact = factorial(i);
        if (fact >= 0) {
            ESP_LOGI(TAG, "%d! = %lld", i, fact);
        }
    }
    
    // ทดสอบตารางสูตรคูณ
    multiplication_table(7);
    
    // ทดสอบฟีโบนัชชี
    fibonacci_sequence(10);
}
```

### 3.2 เฉลย

<details>
<summary>คลิกเพื่อดูเฉลย</summary>

```c
#include <math.h>

bool is_prime_number(int number) {
    if (number <= 1) {
        return false;
    }
    
    if (number == 2) {
        return true;  // 2 เป็นจำนวนเฉพาะเพียงจำนวนเดียวที่เป็นเลขคู่
    }
    
    if (number % 2 == 0) {
        return false;  // เลขคู่อื่นๆ ไม่เป็นจำนวนเฉพาะ
    }
    
    // ตรวจสอบการหารด้วยเลขคี่จาก 3 ถึง sqrt(number)
    int limit = (int)sqrt(number);
    for (int i = 3; i <= limit; i += 2) {
        if (number % i == 0) {
            return false;
        }
    }
    
    return true;
}

long long factorial(int number) {
    if (number < 0) {
        ESP_LOGE(TAG, "Error: Cannot calculate factorial of negative number");
        return -1;
    }
    
    if (number == 0 || number == 1) {
        return 1;
    }
    
    long long result = 1;
    for (int i = 2; i <= number; i++) {
        result *= i;
    }
    
    return result;
}

void multiplication_table(int number) {
    ESP_LOGI(TAG, "=== Multiplication Table for %d ===", number);
    
    for (int i = 1; i <= 12; i++) {
        ESP_LOGI(TAG, "%d × %d = %d", number, i, number * i);
    }
}

void fibonacci_sequence(int count) {
    ESP_LOGI(TAG, "=== Fibonacci Sequence (first %d numbers) ===", count);
    
    if (count <= 0) {
        ESP_LOGW(TAG, "Count must be positive");
        return;
    }
    
    long long prev = 0, curr = 1;
    
    if (count >= 1) {
        ESP_LOGI(TAG, "F(0) = %lld", prev);
    }
    
    if (count >= 2) {
        ESP_LOGI(TAG, "F(1) = %lld", curr);
    }
    
    for (int i = 2; i < count; i++) {
        long long next = prev + curr;
        ESP_LOGI(TAG, "F(%d) = %lld", i, next);
        prev = curr;
        curr = next;
    }
}
```
</details>

---

## 📝 แบบฝึกหัดที่ 4: การจัดการ String และ Character

### 4.1 สร้างไฟล์ `exercises/exercise4.c`

```c
#include <stdio.h>
#include <string.h>
#include <ctype.h>
#include "esp_log.h"

static const char *TAG = "EXERCISE4";

// TODO 1: สร้างฟังก์ชันนับจำนวนตัวอักษร
int count_characters(const char *text) {
    // นับจำนวนตัวอักษรในข้อความ (ไม่นับ space และ special characters)
    return 0;
}

// TODO 2: สร้างฟังก์ชันนับจำนวนคำ
int count_words(const char *text) {
    // นับจำนวนคำในข้อความ (คั่นด้วย space)
    return 0;
}

// TODO 3: สร้างฟังก์ชันแปลงเป็นตัวพิมพ์ใหญ่
void to_uppercase(char *text) {
    // แปลงข้อความเป็นตัวพิมพ์ใหญ่ทั้งหมด
}

// TODO 4: สร้างฟังก์ชันกลับข้อความ
void reverse_string(char *text) {
    // กลับลำดับตัวอักษรในข้อความ
    // ตัวอย่าง: "hello" -> "olleh"
}

// TODO 5: สร้างฟังก์ชันตรวจสอบ palindrome
bool is_palindrome(const char *text) {
    // ตรวจสอบว่าข้อความอ่านจากซ้ายไปขวาและขวาไปซ้ายเหมือนกันหรือไม่
    // ตัวอย่าง: "radar", "level", "madam"
    return false;
}

void test_string_functions(void) {
    char test_text1[] = "Hello ESP32 World";
    char test_text2[] = "radar";
    char test_text3[] = "A man a plan a canal Panama";
    
    ESP_LOGI(TAG, "=== String Analysis ===");
    ESP_LOGI(TAG, "Original text: '%s'", test_text1);
    ESP_LOGI(TAG, "Character count: %d", count_characters(test_text1));
    ESP_LOGI(TAG, "Word count: %d", count_words(test_text1));
    
    // ทดสอบการแปลงตัวพิมพ์ใหญ่
    char upper_text[100];
    strcpy(upper_text, test_text1);
    to_uppercase(upper_text);
    ESP_LOGI(TAG, "Uppercase: '%s'", upper_text);
    
    // ทดสอบการกลับข้อความ
    char reversed_text[100];
    strcpy(reversed_text, test_text1);
    reverse_string(reversed_text);
    ESP_LOGI(TAG, "Reversed: '%s'", reversed_text);
    
    // ทดสอบ palindrome
    ESP_LOGI(TAG, "'%s' is %spalindrome", test_text2, is_palindrome(test_text2) ? "" : "not ");
}

void exercise4_main(void) {
    ESP_LOGI(TAG, "Starting Exercise 4: String Processing");
    test_string_functions();
}
```

---

## 📝 แบบฝึกหัดที่ 5: การรวมทุกอย่างเข้าด้วยกัน

### 5.1 สร้าง Main Exercise File

```c
// exercises/main_exercises.c
#include "esp_log.h"

// Include all exercise headers
void exercise1_main(void);  // Basic Calculator
void exercise2_main(void);  // Array Statistics  
void exercise3_main(void);  // Loops and Conditions
void exercise4_main(void);  // String Processing

static const char *TAG = "EXERCISES";

void run_all_exercises(void) {
    ESP_LOGI(TAG, "========================================");
    ESP_LOGI(TAG, "    Running All Lab4 Exercises        ");
    ESP_LOGI(TAG, "========================================");
    
    exercise1_main();
    vTaskDelay(2000 / portTICK_PERIOD_MS);
    
    exercise2_main();
    vTaskDelay(2000 / portTICK_PERIOD_MS);
    
    exercise3_main();
    vTaskDelay(2000 / portTICK_PERIOD_MS);
    
    exercise4_main();
    
    ESP_LOGI(TAG, "========================================");
    ESP_LOGI(TAG, "    All Exercises Completed!          ");
    ESP_LOGI(TAG, "========================================");
}
```

---

## ✅ การตรวจสอบความถูกต้อง

### Test Cases สำหรับแต่ละแบบฝึกหัด:

#### Exercise 1: Basic Calculator
- [ ] `add(5.0, 3.0)` = 8.0
- [ ] `subtract(10.0, 4.0)` = 6.0
- [ ] `multiply(3.0, 4.0)` = 12.0
- [ ] `divide(10.0, 2.0)` = 5.0
- [ ] `divide(10.0, 0.0)` แสดง error message

#### Exercise 2: Array Statistics
- [ ] Array `[1, 2, 3, 4, 5]` average = 3.0
- [ ] Array `[1, 2, 3, 4, 5]` max = 5.0, min = 1.0
- [ ] Empty array แสดง error message

#### Exercise 3: Loops and Conditions
- [ ] `is_prime_number(7)` = true
- [ ] `is_prime_number(8)` = false
- [ ] `factorial(5)` = 120
- [ ] Fibonacci(5) = [0, 1, 1, 2, 3]

#### Exercise 4: String Processing
- [ ] `count_characters("Hello")` = 5
- [ ] `count_words("Hello World")` = 2
- [ ] `is_palindrome("radar")` = true

---

## 🎯 การประเมินผล

### เกณฑ์การให้คะแนน:
- **ความถูกต้องของโค้ด (50%)**
- **การจัดการข้อผิดพลาด (20%)**  
- **การใช้ ESP_LOG อย่างเหมาะสม (15%)**
- **ความเรียบร้อยของโค้ด (15%)**

### Tips สำหรับการทำแบบฝึกหัด:
1. **อ่านโจทย์ให้เข้าใจก่อนเขียนโค้ด**
2. **ทดสอบทีละฟังก์ชัน**
3. **ใส่ comment อธิบายโค้ด**
4. **ตรวจสอบ edge cases**
5. **ใช้ ESP_LOG ในการ debug**

**Happy Coding! 🚀**
