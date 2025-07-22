# Lab4: Quick Reference Card - ภาษา C บน ESP32

## 🚀 คำสั่งพื้นฐานที่ต้องรู้

### การรัน Docker และ ESP-IDF
```bash
# เริ่ม container
docker-compose up -d

# เข้า container  
docker exec -it esp32-lab4 bash

# ตั้งค่า ESP-IDF
. $IDF_PATH/export.sh

# Build และรัน
idf.py set-target esp32
idf.py build
idf.py qemu monitor
```

---

## 📊 ประเภทข้อมูล (Data Types)

```c
// จำนวนเต็ม
int number = 42;                    // 32-bit signed
uint32_t positive = 100;            // 32-bit unsigned  
int8_t small = -128;                // 8-bit signed
int16_t medium = 32000;             // 16-bit signed

// จำนวนทศนิยม
float pi = 3.14f;                   // 32-bit floating point
double precise = 3.14159265359;     // 64-bit floating point

// ตัวอักษร
char letter = 'A';                  // Single character
char text[] = "Hello ESP32";        // String

// บูลีน
bool is_ready = true;               // true/false
```

---

## 🧮 การคำนวณ (Arithmetic)

```c
// พื้นฐาน
int sum = a + b;                    // บวก
int diff = a - b;                   // ลบ  
int product = a * b;                // คูณ
float quotient = (float)a / b;      // หาร
int remainder = a % b;              // เศษจากการหาร (mod)

// การเพิ่ม/ลดค่า
count++;                            // เพิ่ม 1
count--;                            // ลด 1
count += 5;                         // เพิ่ม 5
count *= 2;                         // คูณ 2

// ฟังก์ชันคณิตศาสตร์ (ต้อง #include <math.h>)
float root = sqrtf(16.0);           // รากที่สอง
float power = powf(2.0, 3.0);       // ยกกำลัง
float absolute = fabsf(-5.5);       // ค่าสัมบูรณ์
float rounded = roundf(3.7);        // ปัดเศษ
```

---

## 🔄 การควบคุมการทำงาน (Control Flow)

### เงื่อนไข (if-else)
```c
if (temperature > 30) {
    ESP_LOGI(TAG, "ร้อน");
} else if (temperature > 20) {
    ESP_LOGI(TAG, "ปกติ");
} else {
    ESP_LOGI(TAG, "เย็น");
}

// Ternary operator
int max = (a > b) ? a : b;
```

### ลูป (Loops)
```c
// For loop
for (int i = 0; i < 10; i++) {
    ESP_LOGI(TAG, "Count: %d", i);
}

// While loop
int count = 0;
while (count < 5) {
    ESP_LOGI(TAG, "Count: %d", count);
    count++;
}

// Do-while loop
do {
    ESP_LOGI(TAG, "At least once");
} while (false);
```

### Switch-Case
```c
switch (day) {
    case 1:
        ESP_LOGI(TAG, "จันทร์");
        break;
    case 2:
        ESP_LOGI(TAG, "อังคาร");
        break;
    default:
        ESP_LOGI(TAG, "วันอื่น");
        break;
}
```

---

## 📋 Arrays

```c
// การประกาศ
int numbers[5] = {1, 2, 3, 4, 5};
float temps[] = {25.0, 26.5, 24.8};

// การเข้าถึง
int first = numbers[0];             // อันแรก
int last = numbers[4];              // อันสุดท้าย

// วนลูปผ่าน array
int size = sizeof(numbers) / sizeof(numbers[0]);
for (int i = 0; i < size; i++) {
    ESP_LOGI(TAG, "numbers[%d] = %d", i, numbers[i]);
}
```

---

## 🔧 Functions

```c
// ฟังก์ชันไม่รับพารามิเตอร์ ไม่คืนค่า
void say_hello(void) {
    ESP_LOGI(TAG, "สวัสดี!");
}

// ฟังก์ชันรับพารามิเตอร์ และคืนค่า
int add(int a, int b) {
    return a + b;
}

// ฟังก์ชันรับ array
float average(float arr[], int size) {
    float sum = 0.0;
    for (int i = 0; i < size; i++) {
        sum += arr[i];
    }
    return sum / size;
}

// การเรียกใช้
say_hello();
int result = add(5, 3);
float avg = average(temps, 3);
```

---

## 📝 String Operations

```c
#include <string.h>
#include <ctype.h>

// การคัดลอก
char dest[50];
strcpy(dest, "Hello");              // คัดลอก string

// การเชื่อม
strcat(dest, " World");             // เชื่อม string

// การเปรียบเทียบ
if (strcmp(str1, str2) == 0) {      // เปรียบเทียบ string
    ESP_LOGI(TAG, "เหมือนกัน");
}

// ความยาว
int len = strlen(dest);             // หาความยาว

// การแปลงตัวอักษร
char upper = toupper('a');          // เป็นตัวพิมพ์ใหญ่
char lower = tolower('A');          // เป็นตัวพิมพ์เล็ก
bool is_digit = isdigit('5');       // ตรวจสอบว่าเป็นตัวเลข
```

---

## 🐛 Error Handling

```c
// การตรวจสอบพารามิเตอร์
float safe_divide(float a, float b) {
    if (b == 0.0) {
        ESP_LOGE(TAG, "Error: Division by zero!");
        return 0.0;
    }
    return a / b;
}

// การใช้ return codes
typedef enum {
    RESULT_OK = 0,
    RESULT_ERROR_INVALID_INPUT,
    RESULT_ERROR_OUT_OF_RANGE
} result_t;

result_t safe_operation(int input, int *output) {
    if (output == NULL) {
        return RESULT_ERROR_INVALID_INPUT;
    }
    
    if (input < 0 || input > 100) {
        return RESULT_ERROR_OUT_OF_RANGE;
    }
    
    *output = input * 2;
    return RESULT_OK;
}
```

---

## 📊 ESP_LOG (การแสดงผล)

```c
#include "esp_log.h"

static const char *TAG = "MY_APP";

// ระดับการแสดงผล
ESP_LOGE(TAG, "Error message");     // แสดงเป็นสีแดง
ESP_LOGW(TAG, "Warning message");   // แสดงเป็นสีเหลือง
ESP_LOGI(TAG, "Info message");      // แสดงเป็นสีเขียว
ESP_LOGD(TAG, "Debug message");     // แสดงเป็นสีขาว
ESP_LOGV(TAG, "Verbose message");   // แสดงเป็นสีเทา

// การแสดงตัวแปร
int value = 42;
float temp = 25.6;
ESP_LOGI(TAG, "Value: %d, Temp: %.1f°C", value, temp);

// Format specifiers ที่ใช้บ่อย
%d          // จำนวนเต็ม (int)
%u          // จำนวนเต็มไม่ติดลบ (unsigned)
%f          // จำนวนทศนิยม (float/double)
%.2f        // จำนวนทศนิยม 2 ตำแหน่ง
%c          // ตัวอักษร (char)
%s          // ข้อความ (string)
%x          // เลขฐาน 16
```

---

## ⏱️ Time และ Delay

```c
#include "freertos/task.h"
#include "esp_timer.h"

// หน่วงเวลา
vTaskDelay(1000 / portTICK_PERIOD_MS);  // หน่วง 1 วินาที

// วัดเวลา
int64_t start = esp_timer_get_time();   // เวลาเริ่มต้น (microseconds)
// ... ทำงาน ...
int64_t end = esp_timer_get_time();     // เวลาสิ้นสุด
int64_t duration = end - start;         // ระยะเวลาที่ใช้
ESP_LOGI(TAG, "Duration: %lld us", duration);
```

---

## 💾 Memory Management

```c
#include "esp_system.h"

// ตรวจสอบ memory
size_t free_heap = esp_get_free_heap_size();
ESP_LOGI(TAG, "Free heap: %u bytes", free_heap);

// Dynamic memory allocation
int *ptr = malloc(sizeof(int) * 10);    // จอง memory
if (ptr != NULL) {
    // ใช้งาน memory
    for (int i = 0; i < 10; i++) {
        ptr[i] = i;
    }
    free(ptr);                          // คืน memory
    ptr = NULL;                         // ป้องกัน dangling pointer
}
```

---

## 🔧 Useful Macros และ Constants

```c
// Constants ที่ใช้บ่อย
#define LED_PIN 2
#define MAX_BUFFER_SIZE 256
#define PI 3.14159265359

// ประเภท boolean
#include <stdbool.h>
bool flag = true;

// ขนาดของ array
#define ARRAY_SIZE(arr) (sizeof(arr) / sizeof(arr[0]))

// Min/Max macros
#define MIN(a, b) ((a) < (b) ? (a) : (b))
#define MAX(a, b) ((a) > (b) ? (a) : (b))
```

---

## 🎯 Common Patterns

### การหาค่าเฉลี่ย
```c
float average = 0.0;
for (int i = 0; i < count; i++) {
    average += values[i];
}
average /= count;
```

### การหาค่าสูงสุด/ต่ำสุด
```c
float max = values[0];
float min = values[0];
for (int i = 1; i < count; i++) {
    if (values[i] > max) max = values[i];
    if (values[i] < min) min = values[i];
}
```

### การตรวจสอบจำนวนเฉพาะ
```c
bool is_prime(int n) {
    if (n <= 1) return false;
    if (n == 2) return true;
    if (n % 2 == 0) return false;
    
    for (int i = 3; i * i <= n; i += 2) {
        if (n % i == 0) return false;
    }
    return true;
}
```

---

## 🆘 การแก้ปัญหาเบื้องต้น

### Build Errors
```bash
# ทำความสะอาด build
idf.py fullclean

# ตรวจสอบ environment
echo $IDF_PATH
. $IDF_PATH/export.sh

# ตั้งค่า target ใหม่
idf.py set-target esp32
```

### Runtime Errors
- ตรวจสอบ array bounds
- ตรวจสอบการหารด้วยศูนย์
- ตรวจสอบ NULL pointers
- ดู memory usage

**คู่มือฉบับย่อนี้ครอบคลุมสิ่งที่ต้องรู้พื้นฐานสำหรับ Lab4! 🚀**
