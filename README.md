# Lab4: Arithmetic Operations in C and ESP32

## วัตถุประสงค์ของการทดลอง
1. เรียนรู้การเขียนโปรแกรมภาษา C สำหรับการคำนวณทางคณิตศาสตร์
2. ทำความเข้าใจการใช้งาน ESP32 development framework (ESP-IDF)
3. ฝึกการใช้ Docker สำหรับการพัฒนา embedded systems
4. ทดสอบการทำงานของโปรแกรมบน ESP32 QEMU emulator

## เครื่องมือที่ใช้
- Docker
- ESP-IDF (Espressif IoT Development Framework)
- ESP32 QEMU Emulator
- Visual Studio Code

## โครงสร้างโปรเจค
```
Lab4 Arithematic in C and ESP32/
├── README.md
├── docker-compose.yml
├── Dockerfile
├── main/
│   ├── CMakeLists.txt
│   └── main.c
├── CMakeLists.txt
├── sdkconfig
└── build/
```

## การเตรียมความพร้อม

### 1. ติดตั้ง Docker
ตรวจสอบว่าได้ติดตั้ง Docker แล้วโดยใช้คำสั่ง:
```bash
docker --version
```

### 2. Clone ESP-IDF Docker Image
```bash
docker pull espressif/idf:latest
```

## วิธีการทำการทดลอง

### ขั้นตอนที่ 1: สร้างโปรเจค ESP32
1. สร้างไฟล์ docker-compose.yml สำหรับการพัฒนา
2. สร้างโค้ดโปรแกรมการคำนวณทางคณิตศาสตร์
3. Build และ Flash โปรแกรมลง ESP32

### ขั้นตอนที่ 2: ทดสอบการทำงาน
1. รันโปรแกรมบน ESP32 QEMU
2. ตรวจสอบผลลัพธ์การคำนวณ
3. วิเคราะห์ประสิทธิภาพการทำงาน

### ขั้นตอนที่ 3: การวิเคราะห์ผล
1. บันทึกผลการทดลอง
2. เปรียบเทียบผลลัพธ์
3. สรุปผลการทดลอง

## คำสั่งสำหรับการรันโปรเจค

### สร้าง Docker Container
```bash
docker-compose up -d
```

### เข้าสู่ Container
```bash
docker exec -it esp32-dev bash
```

### Build โปรเจค
```bash
idf.py build
```

### Flash ลง ESP32 (หรือ QEMU)
```bash
idf.py flash
```

### Monitor Serial Output
```bash
idf.py monitor
```

### รันบน QEMU
```bash
idf.py qemu monitor
```

## ผลลัพธ์ที่คาดหวัง
- โปรแกรมสามารถทำการคำนวณทางคณิตศาสตร์ได้ถูกต้อง
- สามารถรันโปรแกรมบน ESP32 QEMU ได้สำเร็จ
- แสดงผลลัพธ์การคำนวณผ่าน Serial Monitor

## การประเมินผล
- ความถูกต้องของการคำนวณ (40%)
- การใช้งาน Docker และ ESP-IDF (30%)
- การทำงานบน QEMU (20%)
- การเขียนรายงาน (10%)

## หมายเหตุ
- ตรวจสอบให้แน่ใจว่า Docker service กำลังทำงานอยู่
- ใช้ ESP-IDF version ล่าสุดสำหรับความเสถียร
- บันทึกข้อผิดพลาดและวิธีการแก้ไขไว้ในรายงาน
