# 1 เปลี่ยนจำนวนถุงลูกอม
```c
// หาบรรทัดนี้ในโค้ด:
int candy_bags = 5;         // จำนวนถุง
int candies_per_bag = 6;    // ลูกอมต่อถุง

// ลองเปลี่ยนเป็น:
int candy_bags = 7;         // เพิ่มเป็น 7 ถุง
int candies_per_bag = 8;    // ลูกอมถุงละ 8 เม็ด
```
### Result
```c
I (14020) CANDIES_MATH: 🧮 ขั้นตอนการคิด:
I (14020) CANDIES_MATH:    จำนวนถุง × ลูกอมต่อถุง
I (14020) CANDIES_MATH:    = 7 × 8
I (14020) CANDIES_MATH:    = 56 เม็ด
I (14020) CANDIES_MATH: 
I (14020) CANDIES_MATH: ✅ คำตอบ:
I (14020) CANDIES_MATH:    มีลูกอมทั้งหมด 56 เม็ด
I (14020) CANDIES_MATH:
I (14020) CANDIES_MATH: 🎨 ภาพประกอบ:
I (14020) CANDIES_MATH:    ถุงที่ 1: 🍬🍬🍬🍬🍬🍬 (8 เม็ด)
I (14020) CANDIES_MATH:    ถุงที่ 2: 🍬🍬🍬🍬🍬🍬 (8 เม็ด)
I (14020) CANDIES_MATH:    ถุงที่ 3: 🍬🍬🍬🍬🍬🍬 (8 เม็ด)
I (14020) CANDIES_MATH:    ถุงที่ 4: 🍬🍬🍬🍬🍬🍬 (8 เม็ด)
I (14020) CANDIES_MATH:    ถุงที่ 5: 🍬🍬🍬🍬🍬🍬 (8 เม็ด)
I (14020) CANDIES_MATH:    รวม:     56 เม็ด
I (14020) CANDIES_MATH: 
I (14020) CANDIES_MATH: 🔄 เปรียบเทียบกับการบวกซ้ำๆ:
I (14020) CANDIES_MATH:    การคูณ: 7 × 8 = 56
I (14020) CANDIES_MATH:    การบวกซ้ำๆ: 
I (14020) CANDIES_MATH:                   8
I (14020) CANDIES_MATH:                 + 8
I (14020) CANDIES_MATH:                 + 8
I (14020) CANDIES_MATH:                 + 8
I (14020) CANDIES_MATH:                 + 8
I (14020) CANDIES_MATH:                 + 8
I (14020) CANDIES_MATH:                 + 8 = 56
I (14020) CANDIES_MATH:    ผลลัพธ์เหมือนกัน! การคูณคือการบวกซ้ำๆ
I (14020) CANDIES_MATH:
I (14020) CANDIES_MATH: 📊 ตารางสูตรคูณ 8:
I (14020) CANDIES_MATH:    1 × 8 = 8
I (14320) CANDIES_MATH:    2 × 8 = 16
I (14620) CANDIES_MATH:    3 × 8 = 24
I (14920) CANDIES_MATH:    4 × 8 = 32
I (15220) CANDIES_MATH:    5 × 8 = 40
I (15520) CANDIES_MATH:    6 × 8 = 48
I (15820) CANDIES_MATH:    7 × 8 = 56
I (16120) CANDIES_MATH:    8 × 8 = 64
I (16420) CANDIES_MATH:    9 × 8 = 72
I (16720) CANDIES_MATH:    10 × 8 = 80
I (17020) CANDIES_MATH: 
I (17020) CANDIES_MATH: 💡 ตัวอย่างเพิ่มเติม:
I (17020) CANDIES_MATH:    ถ้ามีถุงลูกอม 3 ถุง ถุงละ 8 เม็ด
I (17020) CANDIES_MATH:    จะได้ลูกอม 3 × 8 = 24 เม็ด
I (17020) CANDIES_MATH:
I (17020) CANDIES_MATH:    ถ้ามีถุงลูกอม 7 ถุง ถุงละ 4 เม็ด
I (17020) CANDIES_MATH:    จะได้ลูกอม 7 × 4 = 28 เม็ด
I (17020) CANDIES_MATH:
I (17020) CANDIES_MATH: 🔄 เปรียบเทียบการดำเนินการ:
I (17020) CANDIES_MATH:    การบวก (+): เพิ่มจำนวน (เช่น ไข่ 4 + 2 = 6)
I (17020) CANDIES_MATH:    การลบ (-): ลดจำนวน (เช่น ของเล่น 8 - 3 = 5)
I (17020) CANDIES_MATH:    การคูณ (×): บวกซ้ำๆ (เช่น ลูกอม 5 × 6 = 30)
I (17020) CANDIES_MATH: 
I (17020) CANDIES_MATH: 🎓 แนวคิดขั้นสูง:
I (17020) CANDIES_MATH:    1. การคูณมีคุณสมบัติการสับเปลี่ยน:
I (17020) CANDIES_MATH:       7 × 8 = 8 × 7 = 56
I (17020) CANDIES_MATH:    2. การคูณด้วย 0 จะได้ 0 เสมอ:
I (17020) CANDIES_MATH:       7 × 0 = 0 (ไม่มีถุงลูกอม)
I (17020) CANDIES_MATH:    3. การคูณด้วย 1 จะได้ตัวเลขเดิม:
I (17020) CANDIES_MATH:       8 × 1 = 8 (มีถุงเดียว)
I (17020) CANDIES_MATH:
I (17020) CANDIES_MATH: 📚 สิ่งที่เรียนรู้:
I (17020) CANDIES_MATH:    1. การคูณเลข (Multiplication): a × b = c
I (17020) CANDIES_MATH:    2. การใช้ for loop สำหรับการทำซ้ำ
I (17020) CANDIES_MATH:    3. ความสัมพันธ์ระหว่างการคูณและการบวกซ้ำๆ
I (17020) CANDIES_MATH:    4. คุณสมบัติพิเศษของการคูณ
I (17020) CANDIES_MATH:    5. การแสดงผลแบบตาราง
I (17020) CANDIES_MATH: 
I (17030) CANDIES_MATH: 🎉 จบโปรแกรมนับลูกอมในถุง!
I (17030) CANDIES_MATH: 📖 อ่านต่อในโปรเจคถัดไป: 04_division_cookies
I (19030) main_task: Returned from app_main()
```

# 2.เพิ่มลูกอมหลายรส
- เพิ่มลูกอมหลายรส:
```c
int strawberry_bags = 3;    // ถุงรสสตรอเบอร์รี่
int orange_bags = 2;        // ถุงรสส้ม
int grape_bags = 4;         // ถุงรสองุ่น

int total_bags = strawberry_bags + orange_bags + grape_bags;
int total_candies = total_bags * candies_per_bag;

ESP_LOGI(TAG, "🍓 สตรอเบอร์รี่: %d ถุง = %d เม็ด", 
         strawberry_bags, strawberry_bags * candies_per_bag);
ESP_LOGI(TAG, "🍊 รสส้ม: %d ถุง = %d เม็ด", 
         orange_bags, orange_bags * candies_per_bag);
ESP_LOGI(TAG, "🍇 รสองุ่น: %d ถุง = %d เม็ด", 
         grape_bags, grape_bags * candies_per_bag);
```

## Result
```c
I (13756) CANDIES_MATH: 🧮 ขั้นตอนการคิด:
I (13756) CANDIES_MATH:    จำนวนถุง × ลูกอมต่อถุง
I (13756) CANDIES_MATH:    = 7 × 8
I (13756) CANDIES_MATH:    = 56 เม็ด
I (13756) CANDIES_MATH:
I (13756) CANDIES_MATH: ✅ คำตอบ:
I (13756) CANDIES_MATH:    มีลูกอมทั้งหมด 56 เม็ด
I (13756) CANDIES_MATH:
I (13756) CANDIES_MATH: 🎨 ภาพประกอบ:
I (13756) CANDIES_MATH:    ถุงที่ 1: 🍬🍬🍬🍬🍬🍬 (8 เม็ด)
I (13756) CANDIES_MATH:    ถุงที่ 2: 🍬🍬🍬🍬🍬🍬 (8 เม็ด)
I (13756) CANDIES_MATH:    ถุงที่ 3: 🍬🍬🍬🍬🍬🍬 (8 เม็ด)
I (13756) CANDIES_MATH:    ถุงที่ 4: 🍬🍬🍬🍬🍬🍬 (8 เม็ด)
I (13756) CANDIES_MATH:    ถุงที่ 5: 🍬🍬🍬🍬🍬🍬 (8 เม็ด)
I (13756) CANDIES_MATH:    รวม:     56 เม็ด
I (13756) CANDIES_MATH: 🍓 สตรอเบอร์รี่: 3 ถุง = 24 เม็ด
I (13756) CANDIES_MATH: 🍊 รสส้ม: 2 ถุง = 16 เม็ด
I (13756) CANDIES_MATH: 🍇 รสองุ่น: 4 ถุง = 32 เม็ด
I (13756) CANDIES_MATH:    รวมทั้งหมด:     72 เม็ด
I (13756) CANDIES_MATH: 
I (13756) CANDIES_MATH: 🔄 เปรียบเทียบกับการบวกซ้ำๆ:
I (13756) CANDIES_MATH:    การคูณ: 7 × 8 = 56
I (13756) CANDIES_MATH:    การบวกซ้ำๆ: 
I (13756) CANDIES_MATH:                   8
I (13756) CANDIES_MATH:                 + 8
I (13756) CANDIES_MATH:                 + 8
I (13756) CANDIES_MATH:                 + 8
I (13756) CANDIES_MATH:                 + 8
I (13756) CANDIES_MATH:                 + 8
I (13756) CANDIES_MATH:                 + 8 = 56
I (13756) CANDIES_MATH:    ผลลัพธ์เหมือนกัน! การคูณคือการบวกซ้ำๆ
I (13756) CANDIES_MATH:
I (13756) CANDIES_MATH: 📊 ตารางสูตรคูณ 8:
I (13756) CANDIES_MATH:    1 × 8 = 8
I (14056) CANDIES_MATH:    2 × 8 = 16
I (14356) CANDIES_MATH:    3 × 8 = 24
I (14656) CANDIES_MATH:    4 × 8 = 32
I (14956) CANDIES_MATH:    5 × 8 = 40
I (15256) CANDIES_MATH:    6 × 8 = 48
I (15556) CANDIES_MATH:    7 × 8 = 56
I (15856) CANDIES_MATH:    8 × 8 = 64
I (16156) CANDIES_MATH:    9 × 8 = 72
I (16456) CANDIES_MATH:    10 × 8 = 80
I (16756) CANDIES_MATH: 
I (16756) CANDIES_MATH: 💡 ตัวอย่างเพิ่มเติม:
I (16756) CANDIES_MATH:    ถ้ามีถุงลูกอม 3 ถุง ถุงละ 8 เม็ด
I (16756) CANDIES_MATH:    จะได้ลูกอม 3 × 8 = 24 เม็ด
I (16756) CANDIES_MATH:
I (16756) CANDIES_MATH:    ถ้ามีถุงลูกอม 7 ถุง ถุงละ 4 เม็ด
I (16756) CANDIES_MATH:    จะได้ลูกอม 7 × 4 = 28 เม็ด
I (16756) CANDIES_MATH:
I (16756) CANDIES_MATH: 🔄 เปรียบเทียบการดำเนินการ:
I (16756) CANDIES_MATH:    การบวก (+): เพิ่มจำนวน (เช่น ไข่ 4 + 2 = 6)
I (16756) CANDIES_MATH:    การลบ (-): ลดจำนวน (เช่น ของเล่น 8 - 3 = 5)
I (16756) CANDIES_MATH:    การคูณ (×): บวกซ้ำๆ (เช่น ลูกอม 5 × 6 = 30)
I (16756) CANDIES_MATH:
I (16756) CANDIES_MATH: 🎓 แนวคิดขั้นสูง:
I (16756) CANDIES_MATH:    1. การคูณมีคุณสมบัติการสับเปลี่ยน:
I (16756) CANDIES_MATH:       7 × 8 = 8 × 7 = 56
I (16756) CANDIES_MATH:    2. การคูณด้วย 0 จะได้ 0 เสมอ:
I (16756) CANDIES_MATH:       7 × 0 = 0 (ไม่มีถุงลูกอม)
I (16756) CANDIES_MATH:    3. การคูณด้วย 1 จะได้ตัวเลขเดิม:
I (16756) CANDIES_MATH:       8 × 1 = 8 (มีถุงเดียว)
I (16756) CANDIES_MATH:
I (16756) CANDIES_MATH: 📚 สิ่งที่เรียนรู้:
I (16756) CANDIES_MATH:    1. การคูณเลข (Multiplication): a × b = c
I (16756) CANDIES_MATH:    2. การใช้ for loop สำหรับการทำซ้ำ
I (16756) CANDIES_MATH:    3. ความสัมพันธ์ระหว่างการคูณและการบวกซ้ำๆ
I (16756) CANDIES_MATH:    4. คุณสมบัติพิเศษของการคูณ
I (16766) CANDIES_MATH:    5. การแสดงผลแบบตาราง
I (16766) CANDIES_MATH: 
I (16766) CANDIES_MATH: 🎉 จบโปรแกรมนับลูกอมในถุง!
I (16766) CANDIES_MATH: 📖 อ่านต่อในโปรเจคถัดไป: 04_division_cookies
I (18766) main_task: Returned from app_main()
```

# 3.สร้างตารางสูตรคูณ
- เพิ่มการแสดงตารางสูตรคูณ:
```c
ESP_LOGI(TAG, "📊 ตารางสูตรคูณของ %d:", candies_per_bag);
for (int i = 1; i <= 10; i++) {
    ESP_LOGI(TAG, "   %d x %d = %d", i, candies_per_bag, i * candies_per_bag);
}
```
## Result
```c
I (13756) CANDIES_MATH: 🧮 ขั้นตอนการคิด:
I (13756) CANDIES_MATH:    จำนวนถุง × ลูกอมต่อถุง
I (13756) CANDIES_MATH:    = 7 × 8
I (13756) CANDIES_MATH:    = 56 เม็ด
I (13756) CANDIES_MATH:
I (13756) CANDIES_MATH: ✅ คำตอบ:
I (13756) CANDIES_MATH:    มีลูกอมทั้งหมด 56 เม็ด
I (13756) CANDIES_MATH:
I (13756) CANDIES_MATH: 🎨 ภาพประกอบ:
I (13756) CANDIES_MATH:    ถุงที่ 1: 🍬🍬🍬🍬🍬🍬 (8 เม็ด)
I (13756) CANDIES_MATH:    ถุงที่ 2: 🍬🍬🍬🍬🍬🍬 (8 เม็ด)
I (13756) CANDIES_MATH:    ถุงที่ 3: 🍬🍬🍬🍬🍬🍬 (8 เม็ด)
I (13756) CANDIES_MATH:    ถุงที่ 4: 🍬🍬🍬🍬🍬🍬 (8 เม็ด)
I (13756) CANDIES_MATH:    ถุงที่ 5: 🍬🍬🍬🍬🍬🍬 (8 เม็ด)
I (13756) CANDIES_MATH:    รวม:     56 เม็ด
I (13756) CANDIES_MATH: 🍓 สตรอเบอร์รี่: 3 ถุง = 24 เม็ด
I (13756) CANDIES_MATH: 🍊 รสส้ม: 2 ถุง = 16 เม็ด
I (13756) CANDIES_MATH: 🍇 รสองุ่น: 4 ถุง = 32 เม็ด
I (13756) CANDIES_MATH:    รวมทั้งหมด:     72 เม็ด
I (13756) CANDIES_MATH: 
I (13756) CANDIES_MATH: 🔄 เปรียบเทียบกับการบวกซ้ำๆ:
I (13756) CANDIES_MATH:    การคูณ: 7 × 8 = 56
I (13756) CANDIES_MATH:    การบวกซ้ำๆ: 
I (13756) CANDIES_MATH:                   8
I (13756) CANDIES_MATH:                 + 8
I (13756) CANDIES_MATH:                 + 8
I (13756) CANDIES_MATH:                 + 8
I (13756) CANDIES_MATH:                 + 8
I (13756) CANDIES_MATH:                 + 8
I (13756) CANDIES_MATH:                 + 8 = 56
I (13756) CANDIES_MATH:    ผลลัพธ์เหมือนกัน! การคูณคือการบวกซ้ำๆ
I (13756) CANDIES_MATH:
I (13756) CANDIES_MATH: 📊 ตารางสูตรคูณ 8:
I (13756) CANDIES_MATH:    1 × 8 = 8
I (14056) CANDIES_MATH:    2 × 8 = 16
I (14356) CANDIES_MATH:    3 × 8 = 24
I (14656) CANDIES_MATH:    4 × 8 = 32
I (14956) CANDIES_MATH:    5 × 8 = 40
I (15256) CANDIES_MATH:    6 × 8 = 48
I (15556) CANDIES_MATH:    7 × 8 = 56
I (15856) CANDIES_MATH:    8 × 8 = 64
I (16156) CANDIES_MATH:    9 × 8 = 72
I (16456) CANDIES_MATH:    10 × 8 = 80
I (16756) CANDIES_MATH: 
I (16756) CANDIES_MATH: 💡 ตัวอย่างเพิ่มเติม:
I (16756) CANDIES_MATH:    ถ้ามีถุงลูกอม 3 ถุง ถุงละ 8 เม็ด
I (16756) CANDIES_MATH:    จะได้ลูกอม 3 × 8 = 24 เม็ด
I (16756) CANDIES_MATH:
I (16756) CANDIES_MATH:    ถ้ามีถุงลูกอม 7 ถุง ถุงละ 4 เม็ด
I (16756) CANDIES_MATH:    จะได้ลูกอม 7 × 4 = 28 เม็ด
I (16756) CANDIES_MATH:
I (16756) CANDIES_MATH: 🔄 เปรียบเทียบการดำเนินการ:
I (16756) CANDIES_MATH:    การบวก (+): เพิ่มจำนวน (เช่น ไข่ 4 + 2 = 6)
I (16756) CANDIES_MATH:    การลบ (-): ลดจำนวน (เช่น ของเล่น 8 - 3 = 5)
I (16756) CANDIES_MATH:    การคูณ (×): บวกซ้ำๆ (เช่น ลูกอม 5 × 6 = 30)
I (16756) CANDIES_MATH:
I (16756) CANDIES_MATH: 🎓 แนวคิดขั้นสูง:
I (16756) CANDIES_MATH:    1. การคูณมีคุณสมบัติการสับเปลี่ยน:
I (16756) CANDIES_MATH:       7 × 8 = 8 × 7 = 56
I (16756) CANDIES_MATH:    2. การคูณด้วย 0 จะได้ 0 เสมอ:
I (16756) CANDIES_MATH:       7 × 0 = 0 (ไม่มีถุงลูกอม)
I (16756) CANDIES_MATH:    3. การคูณด้วย 1 จะได้ตัวเลขเดิม:
I (16756) CANDIES_MATH:       8 × 1 = 8 (มีถุงเดียว)
I (16756) CANDIES_MATH:
I (16756) CANDIES_MATH: 📚 สิ่งที่เรียนรู้:
I (16756) CANDIES_MATH:    1. การคูณเลข (Multiplication): a × b = c
I (16756) CANDIES_MATH:    2. การใช้ for loop สำหรับการทำซ้ำ
I (16756) CANDIES_MATH:    3. ความสัมพันธ์ระหว่างการคูณและการบวกซ้ำๆ
I (16756) CANDIES_MATH:    4. คุณสมบัติพิเศษของการคูณ
I (16766) CANDIES_MATH:    5. การแสดงผลแบบตาราง
I (16766) CANDIES_MATH: 
I (16766) CANDIES_MATH: 🎉 จบโปรแกรมนับลูกอมในถุง!
I (16766) CANDIES_MATH: 📖 อ่านต่อในโปรเจคถัดไป: 04_division_cookies
I (18766) main_task: Returned from app_main()
```

# 4.แจกลูกอมให้เพื่อน
- คำนวณการแจกลูกอม:
```c
int friends = 12;           // จำนวนเพื่อน
int candies_per_friend = total_candies / friends;  // ลูกอมต่อคน
int remaining_candies = total_candies % friends;   // ลูกอมที่เหลือ

ESP_LOGI(TAG, "👥 แจกให้เพื่อน %d คน:", friends);
ESP_LOGI(TAG, "   คนละ %d เม็ด", candies_per_friend);
ESP_LOGI(TAG, "   เหลือ %d เม็ด", remaining_candies);
```

## Result
```c
I (13641) CANDIES_MATH: 🧮 ขั้นตอนการคิด:
I (13641) CANDIES_MATH:    จำนวนถุง × ลูกอมต่อถุง
I (13641) CANDIES_MATH:    = 7 × 8
I (13641) CANDIES_MATH:    = 56 เม็ด
I (13641) CANDIES_MATH: 
I (13641) CANDIES_MATH: ✅ คำตอบ:
I (13641) CANDIES_MATH:    มีลูกอมทั้งหมด 56 เม็ด
I (13641) CANDIES_MATH:
I (13641) CANDIES_MATH: 🎨 ภาพประกอบ:
I (13641) CANDIES_MATH:    ถุงที่ 1: 🍬🍬🍬🍬🍬🍬 (8 เม็ด)
I (13641) CANDIES_MATH:    ถุงที่ 2: 🍬🍬🍬🍬🍬🍬 (8 เม็ด)
I (13641) CANDIES_MATH:    ถุงที่ 3: 🍬🍬🍬🍬🍬🍬 (8 เม็ด)
I (13641) CANDIES_MATH:    ถุงที่ 4: 🍬🍬🍬🍬🍬🍬 (8 เม็ด)
I (13641) CANDIES_MATH:    ถุงที่ 5: 🍬🍬🍬🍬🍬🍬 (8 เม็ด)
I (13641) CANDIES_MATH:    รวม:     56 เม็ด
I (13641) CANDIES_MATH: 🍓 สตรอเบอร์รี่: 3 ถุง = 24 เม็ด
I (13641) CANDIES_MATH: 🍊 รสส้ม: 2 ถุง = 16 เม็ด
I (13641) CANDIES_MATH: 🍇 รสองุ่น: 4 ถุง = 32 เม็ด
I (13641) CANDIES_MATH:    รวมทั้งหมด:     72 เม็ด
I (13641) CANDIES_MATH: 
I (13641) CANDIES_MATH: 🔄 เปรียบเทียบกับการบวกซ้ำๆ:
I (13641) CANDIES_MATH:    การคูณ: 7 × 8 = 56
I (13641) CANDIES_MATH:    การบวกซ้ำๆ: 
I (13641) CANDIES_MATH:                   8
I (13641) CANDIES_MATH:                 + 8
I (13641) CANDIES_MATH:                 + 8
I (13641) CANDIES_MATH:                 + 8
I (13641) CANDIES_MATH:                 + 8
I (13641) CANDIES_MATH:                 + 8
I (13641) CANDIES_MATH:                 + 8 = 56
I (13641) CANDIES_MATH:    ผลลัพธ์เหมือนกัน! การคูณคือการบวกซ้ำๆ
I (13641) CANDIES_MATH:
I (13641) CANDIES_MATH: 📊 ตารางสูตรคูณ 8:
I (13641) CANDIES_MATH:    1 × 8 = 8
I (13941) CANDIES_MATH:    2 × 8 = 16
I (14241) CANDIES_MATH:    3 × 8 = 24
I (14541) CANDIES_MATH:    4 × 8 = 32
I (14841) CANDIES_MATH:    5 × 8 = 40
I (15141) CANDIES_MATH:    6 × 8 = 48
I (15441) CANDIES_MATH:    7 × 8 = 56
I (15741) CANDIES_MATH:    8 × 8 = 64
I (16041) CANDIES_MATH:    9 × 8 = 72
I (16341) CANDIES_MATH:    10 × 8 = 80
I (16641) CANDIES_MATH: 
I (16641) CANDIES_MATH: 👥 แจกให้เพื่อน 12 คน:
I (16641) CANDIES_MATH:    คนละ 6 เม็ด
I (16641) CANDIES_MATH:    เหลือ 0 เม็ด
I (16641) CANDIES_MATH:
I (16641) CANDIES_MATH: 💡 ตัวอย่างเพิ่มเติม:
I (16641) CANDIES_MATH:    ถ้ามีถุงลูกอม 3 ถุง ถุงละ 8 เม็ด
I (16641) CANDIES_MATH:    จะได้ลูกอม 3 × 8 = 24 เม็ด
I (16641) CANDIES_MATH:
I (16641) CANDIES_MATH:    ถ้ามีถุงลูกอม 7 ถุง ถุงละ 4 เม็ด
I (16641) CANDIES_MATH:    จะได้ลูกอม 7 × 4 = 28 เม็ด
I (16641) CANDIES_MATH:
I (16641) CANDIES_MATH: 🔄 เปรียบเทียบการดำเนินการ:
I (16641) CANDIES_MATH:    การบวก (+): เพิ่มจำนวน (เช่น ไข่ 4 + 2 = 6)
I (16641) CANDIES_MATH:    การลบ (-): ลดจำนวน (เช่น ของเล่น 8 - 3 = 5)
I (16641) CANDIES_MATH:    การคูณ (×): บวกซ้ำๆ (เช่น ลูกอม 5 × 6 = 30)
I (16641) CANDIES_MATH: 
I (16641) CANDIES_MATH: 🎓 แนวคิดขั้นสูง:
I (16641) CANDIES_MATH:    1. การคูณมีคุณสมบัติการสับเปลี่ยน:
I (16641) CANDIES_MATH:       7 × 8 = 8 × 7 = 56
I (16641) CANDIES_MATH:    2. การคูณด้วย 0 จะได้ 0 เสมอ:
I (16641) CANDIES_MATH:       7 × 0 = 0 (ไม่มีถุงลูกอม)
I (16641) CANDIES_MATH:    3. การคูณด้วย 1 จะได้ตัวเลขเดิม:
I (16641) CANDIES_MATH:       8 × 1 = 8 (มีถุงเดียว)
I (16641) CANDIES_MATH:
I (16641) CANDIES_MATH: 📚 สิ่งที่เรียนรู้:
I (16641) CANDIES_MATH:    1. การคูณเลข (Multiplication): a × b = c
I (16641) CANDIES_MATH:    2. การใช้ for loop สำหรับการทำซ้ำ
I (16641) CANDIES_MATH:    3. ความสัมพันธ์ระหว่างการคูณและการบวกซ้ำๆ
I (16641) CANDIES_MATH:    4. คุณสมบัติพิเศษของการคูณ
I (16641) CANDIES_MATH:    5. การแสดงผลแบบตาราง
I (16641) CANDIES_MATH:
I (16641) CANDIES_MATH: 🎉 จบโปรแกรมนับลูกอมในถุง!
I (16651) CANDIES_MATH: 📖 อ่านต่อในโปรเจคถัดไป: 04_division_cookies
I (18651) main_task: Returned from app_main()
```
