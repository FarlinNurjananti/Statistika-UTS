# Install Packages 
#install.packages("readxl")

# Import Data
library(readxl)
data_ukuran_sepatu <- read_excel("C:/Users/ASUS/Downloads/Semester 2/Statistika/data ukuran sepatu.xlsx")
View(data_ukuran_sepatu)

# Input Frekuensi(fi)
fi <- c(15,45,30,5,5)
print(fi)

# Input Titik Tengah (xi)
xi <- c(37.5,39.5,41.5,43.5,45.5)
print(xi)

# Mean (rata-rata)
MEAN <- sum(fi*xi) / sum(fi)
print(MEAN)
mean = round(MEAN)
print(mean)

# Median
# Letak Median
MEDIAN <- 1/2 * sum(fi)
MEDIAN = round(MEDIAN)
print(MEDIAN)

# Tb (batas bawah kelas median)
Tb <- 39 - 0.5
print(Tb)

#F (frekuensi komulatif kurang dari kelas median)
F = 15

#f (frekuensi kelas median) & p (panjang kelas)
f <- 45
p <- 2
median <- Tb + ((1/2 * sum(fi)- F) /f) * p
print(median)

# MODUS
# b (batas bawah kelas interval dengan frekuensi terbanyak)
b <- 39 - 0.5
print(b)
# d1 (selisih frekuensi kelas modus dengan kelas modus sebelumnya)
d1 <- 45 - 15
print(d1)
# d2 (selisih frekuensi kelas modus dengan kelas modus setelahnya)
d2 <- 45 - 30
print(d2)
#p (panjanng kelas interval)
l <- 2
print(l)
MODUS <- b + (d1 / (d1+d2)) * l
print(MODUS)
modus = round(MODUS)
print(modus)

# Range (rentang nilai)
xmax <- max(xi)
xmin <- min(xi)
range <- xmax - xmin
print(range)

# Mean deviasi (simpangan rata-rata)
SR <- sum(fi*abs(xi - mean)) / sum(fi)
print(SR)

# Standar deviasi (simpangan baku)
# mencari ragam/ varian dahulu, karena SD merupakan akarkuadrad dari ragam/varian
S2 <- sum(fi*(xi - mean)^2) / sum(fi)
print(S2)
SD <- sqrt (S2)
print(SD)