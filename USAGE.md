# Lab4 Arithmetic Operations - คู่มือการใช้งาน

## การติดตั้งและรันโปรเจค

### 1. เริ่มต้น Docker Container
```bash
docker-compose up -d
```

### 2. เข้าสู่ Container
```bash
docker exec -it esp32-lab4 bash
```

### 3. ตั้งค่า ESP-IDF Environment
```bash
. $IDF_PATH/export.sh
```

### 4. กำหนดค่า Target (ESP32)
```bash
idf.py set-target esp32
```

### 5. Build โปรเจค
```bash
idf.py build
```

### 6. รันบน QEMU (แนะนำสำหรับการทดสอบ)
```bash
idf.py qemu monitor
```

### 7. หรือ Flash ลงบอร์ดจริง (ถ้ามี)
```bash
idf.py -p /dev/ttyUSB0 flash monitor
```

## คำสั่งที่มีประโยชน์

### ทำความสะอาด Build
```bash
idf.py fullclean
```

### ดู Configuration Menu
```bash
idf.py menuconfig
```

### ดู Size ของ Binary
```bash
idf.py size
```

### Monitor Serial Output เท่านั้น
```bash
idf.py monitor
```

## การแก้ไขปัญหาที่เป็นไปได้

### 1. ถ้า Docker ไม่สามารถ Access Serial Port
```bash
# Add user to dialout group (Linux)
sudo usermod -a -G dialout $USER

# Or run Docker with privileged mode
docker run --privileged ...
```

### 2. ถ้า Build Error เรื่อง CMake
```bash
# ตรวจสอบ IDF_PATH
echo $IDF_PATH

# Re-source environment
. $IDF_PATH/export.sh
```

### 3. ถ้า QEMU ไม่ทำงาน
```bash
# ตรวจสอบว่ามี QEMU support
idf.py --help | grep qemu

# หรือใช้ hardware simulation
idf.py build flash monitor
```

## ผลลัพธ์ที่คาดหวัง

เมื่อรันโปรแกรมสำเร็จ คุณจะเห็น:

1. **Basic Arithmetic Operations**: การบวก ลบ คูณ หาร ยกกำลัง และรากที่สอง
2. **Advanced Operations**: แฟกทอเรียล และการหาค่าสถิติของ array
3. **Error Handling**: การจัดการข้อผิดพลาด เช่น หารด้วยศูนย์
4. **Performance Test**: การวัดประสิทธิภาพการคำนวณ

## การปรับแต่งโปรแกรม

### เปลี่ยนค่าตัวเลขที่ใช้ทดสอบ
แก้ไขในฟังก์ชัน `demonstrate_basic_operations()` ในไฟล์ `main/main.c`

### เพิ่มฟังก์ชันคณิตศาสตร์ใหม่
1. สร้าง prototype ในส่วนบนของไฟล์
2. Implement ฟังก์ชัน
3. เรียกใช้ในส่วน main loop

### ปรับเวลาในการแสดงผล
แก้ไข `vTaskDelay()` ในฟังก์ชัน `app_main()`
