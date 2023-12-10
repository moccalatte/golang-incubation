# Untuk mengambil base image
FROM alpine
# Untuk membuat working directory
WORKDIR /app
# Untuk menjalankan perintah/command
# RUN go mod tidy
# RUN go build -o be-enigma-laundry
# Untuk mencopy/menyalin file dari lokal ke container
COPY .env /app
COPY be-enigma-laundry /app
# Untuk mengeksekusi program
ENTRYPOINT [ "/app/be-enigma-laundry" ]