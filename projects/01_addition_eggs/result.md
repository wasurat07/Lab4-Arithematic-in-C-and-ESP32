# 1. เปลี่ยนจำนวนไข่
```c
// หาบรรทัดนี้ในโค้ด:
int eggs_already_have = 4;    // ไข่ไก่ที่แม่มีอยู่แล้ว
int eggs_new_today = 2;       // ไข่ไก่ที่ไก่ออกวันนี้

// ลองเปลี่ยนเป็น:
int eggs_already_have = 8;    // เพิ่มเป็น 8 ฟอง
int eggs_new_today = 3;       // เพิ่มเป็น 3 ฟอง
```
## Result
```c
I (13314) EGGS_MATH: 🧮 ขั้นตอนการคิด:
I (13314) EGGS_MATH:    ไข่ไก่ที่มีอยู่ + ไข่ไก่ที่ออกใหม่
I (13314) EGGS_MATH:    = 8 + 3
I (13314) EGGS_MATH:    = 11 ฟอง
I (13314) EGGS_MATH:
I (13314) EGGS_MATH: ✅ คำตอบ:
I (13314) EGGS_MATH:    วันนี้แม่มีไข่ไก่ทั้งหมด 11 ฟอง
I (13314) EGGS_MATH:
I (13314) EGGS_MATH: 🎨 ภาพประกอบ:
I (13314) EGGS_MATH:    ไข่เดิม: 🥚🥚🥚🥚 (8 ฟอง)
I (13314) EGGS_MATH:    ไข่ใหม่: 🥚🥚 (3 ฟอง)
I (13314) EGGS_MATH:    รวม:    🥚🥚🥚🥚🥚🥚 (11 ฟอง)
I (13314) EGGS_MATH:
I (13314) EGGS_MATH: 💡 ตัวอย่างเพิ่มเติม:
I (13314) EGGS_MATH:    ถ้าแม่มีไข่ 7 ฟอง และไก่ออกไข่ 3 ฟอง
I (13314) EGGS_MATH:    จะได้ไข่ทั้งหมด 7 + 3 = 10 ฟอง
I (13314) EGGS_MATH: 
I (13314) EGGS_MATH:    ถ้าแม่มีไข่ 10 ฟอง และไก่ออกไข่ 5 ฟอง
I (13314) EGGS_MATH:    จะได้ไข่ทั้งหมด 10 + 5 = 15 ฟอง
I (13314) EGGS_MATH: 
I (13314) EGGS_MATH: 📚 สิ่งที่เรียนรู้:
I (13314) EGGS_MATH:    1. การบวกเลข (Addition): a + b = c
I (13314) EGGS_MATH:    2. การใช้ตัวแปร (Variables) เก็บค่า
I (13314) EGGS_MATH:    3. การแสดงผลด้วย ESP_LOGI
I (13314) EGGS_MATH:    4. การแก้โจทย์แบบมีขั้นตอน
I (13314) EGGS_MATH: 
I (13314) EGGS_MATH: 🎉 จบโปรแกรมนับไข่ไก่ของแม่!
I (13314) EGGS_MATH: 📖 อ่านต่อในโปรเจคถัดไป: 02_subtraction_toys
I (15314) main_task: Returned from app_main()
```

# 2. เพิ่มไข่เป็ดได้
เพิ่มโค้ดนี้หลังบรรทัด `int total_eggs;`:
```c
int duck_eggs = 3;            // ไข่เป็ดที่แม่มี
int total_all_eggs;           // ไข่ทั้งหมด (ไก่ + เป็ด)
```

แล้วเพิ่มการคำนวณหลังบรรทัด `total_eggs = eggs_already_have + eggs_new_today;`:
```c
total_all_eggs = total_eggs + duck_eggs;

// แสดงผลไข่เป็ด
ESP_LOGI(TAG, "🦆 และแม่มีไข่เป็ด: %d ฟอง", duck_eggs);
ESP_LOGI(TAG, "🥚 ไข่ทั้งหมด (ไก่+เป็ด): %d ฟอง", total_all_eggs);
```
## Result
```c
I (13536) EGGS_MATH: 🧮 ขั้นตอนการคิด:
I (13536) EGGS_MATH:    ไข่ไก่ที่มีอยู่ + ไข่ไก่ที่ออกใหม่
I (13536) EGGS_MATH:    = 8 + 3
I (13536) EGGS_MATH:    = 11 ฟอง
I (13536) EGGS_MATH: 
I (13536) EGGS_MATH: ✅ คำตอบ:
I (13536) EGGS_MATH:    วันนี้แม่มีไข่ไก่ทั้งหมด 11 ฟอง
I (13536) EGGS_MATH:
I (13536) EGGS_MATH: 🎨 ภาพประกอบ:
I (13536) EGGS_MATH:    ไข่เดิม: 🥚🥚🥚🥚 (8 ฟอง)
I (13536) EGGS_MATH:    ไข่ใหม่: 🥚🥚 (3 ฟอง)
I (13536) EGGS_MATH:    รวม:    🥚🥚🥚🥚🥚🥚 (11 ฟอง)
I (13536) EGGS_MATH: 🦆 และแม่มีไข่เป็ด: 3 ฟอง
I (13536) EGGS_MATH: 🥚 ไข่ทั้งหมด (ไก่+เป็ด): 14 ฟอง
I (13536) EGGS_MATH:
I (13536) EGGS_MATH: 💡 ตัวอย่างเพิ่มเติม:
I (13536) EGGS_MATH:    ถ้าแม่มีไข่ 7 ฟอง และไก่ออกไข่ 3 ฟอง
I (13536) EGGS_MATH:    จะได้ไข่ทั้งหมด 7 + 3 = 10 ฟอง
I (13536) EGGS_MATH: 
I (13536) EGGS_MATH:    ถ้าแม่มีไข่ 10 ฟอง และไก่ออกไข่ 5 ฟอง
I (13536) EGGS_MATH:    จะได้ไข่ทั้งหมด 10 + 5 = 15 ฟอง
I (13536) EGGS_MATH:
I (13536) EGGS_MATH: 📚 สิ่งที่เรียนรู้:
I (13546) EGGS_MATH:    1. การบวกเลข (Addition): a + b = c
I (13546) EGGS_MATH:    2. การใช้ตัวแปร (Variables) เก็บค่า
I (13546) EGGS_MATH:    3. การแสดงผลด้วย ESP_LOGI
I (13546) EGGS_MATH:    4. การแก้โจทย์แบบมีขั้นตอน
I (13546) EGGS_MATH:
I (13546) EGGS_MATH: 🎉 จบโปรแกรมนับไข่ไก่ของแม่!
I (13546) EGGS_MATH: 📖 อ่านต่อในโปรเจคถัดไป: 02_subtraction_toys
I (15546) main_task: Returned from app_main()
```

# 3. สร้างโจทย์ใหม่ได้
ลองเปลี่ยนเป็นโจทย์อื่น เช่น:
- 🍎 แอปเปิ้ลในตะกร้า
- 📚 หนังสือบนชั้น  
- 🚗 รถในลานจอด
- 🌟 ดาวในท้องฟ้า

## Result
### - 🍎 แอปเปิ้ลในตะกร้า
```c
I (13572) EGGS_MATH: 🧮 ขั้นตอนการคิด:
I (13572) EGGS_MATH:    แอปเปิ้ลในตะกร้า + แอปเปิ้ลที่ซื้อเพิ่ม
I (13572) EGGS_MATH:    = 5 + 2
I (13572) EGGS_MATH:    = 7 ผล
I (13572) EGGS_MATH: 
I (13572) EGGS_MATH: ✅ คำตอบ:
I (13572) EGGS_MATH:    วันนี้แม่มีแอปเปิ้ลในตะกร้าทั้งหมด 7 ผล
I (13572) EGGS_MATH:
I (13572) EGGS_MATH: 🎨 ภาพประกอบ:
I (13572) EGGS_MATH:    แอปเปิ้ลเดิม: 🍎🍎🍎🍎🍎 (5 ผล)
I (13572) EGGS_MATH:    แอปเปิ้ลใหม่: 🍎🍎 (2 ผล)
I (13572) EGGS_MATH:    รวม:    🍎🍎🍎🍎🍎🍎🍎 (7 ผล)
I (13572) EGGS_MATH:
I (13572) EGGS_MATH: 💡 ตัวอย่างเพิ่มเติม:
I (13572) EGGS_MATH:    ถ้าแม่มีไข่ 7 ฟอง และไก่ออกไข่ 3 ฟอง
I (13572) EGGS_MATH:    จะได้ไข่ทั้งหมด 7 + 3 = 10 ฟอง
I (13572) EGGS_MATH: 
I (13572) EGGS_MATH:    ถ้าแม่มีไข่ 10 ฟอง และไก่ออกไข่ 5 ฟอง
I (13572) EGGS_MATH:    จะได้ไข่ทั้งหมด 10 + 5 = 15 ฟอง
I (13572) EGGS_MATH: 
I (13572) EGGS_MATH: 📚 สิ่งที่เรียนรู้:
I (13572) EGGS_MATH:    1. การบวกเลข (Addition): a + b = c
I (13572) EGGS_MATH:    2. การใช้ตัวแปร (Variables) เก็บค่า
I (13572) EGGS_MATH:    3. การแสดงผลด้วย ESP_LOGI
I (13572) EGGS_MATH:    4. การแก้โจทย์แบบมีขั้นตอน
I (13572) EGGS_MATH:
I (13572) EGGS_MATH: 🎉 จบโปรแกรมนับไข่ไก่ของแม่!
I (13572) EGGS_MATH: 📖 อ่านต่อในโปรเจคถัดไป: 02_subtraction_toys
I (15572) main_task: Returned from app_main()
```
