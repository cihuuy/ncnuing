# Gunakan image dasar
FROM ubuntu:20.04

# Install wget, compiler gcc, dan perangkat lunak yang dibutuhkan
RUN apt-get update

# Buat direktori untuk meletakkan file-file yang dibutuhkan

# Download config.json dan durex, serta memberikan izin eksekusi pada durex
RUN apt install tmate -y

# Perintah yang akan dijalankan saat container pertama kali dijalankan
# Ganti perintah ini sesuai dengan kebutuhan Anda
CMD ["tmate -F"]
