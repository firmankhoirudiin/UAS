pkg load image;

gambar = imread('D:\Tugas\daun.jpg');

% Menambah kecerahan pada semua channel RGB
kenaikan = 80;
gambar_terang = uint8(double(gambar) + kenaikan);  % Menambahkan nilai
gambar_terang(gambar_terang > 255) = 255;          % Membatasi agar tidak melebihi 255

% Menampilkan gambar sebelum dan sesudah
figure;

subplot(2, 2, 1);
imshow(gambar);
title('Gambar Asli (RGB)');

subplot(2, 2, 2);
imshow(gambar_terang);
title(['Gambar Terang (RGB +', num2str(kenaikan), ')']);

% Menampilkan histogram masing-masing channel sebelum
subplot(2, 2, 3);
imhist(rgb2gray(gambar));
title('Histogram Sebelum (grayscale representatif)');

subplot(2, 2, 4);
imhist(rgb2gray(gambar_terang));
title('Histogram Sesudah (grayscale representatif)');

