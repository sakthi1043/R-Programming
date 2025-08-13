library(imager)
library(tesseract)
library(stringdist)

# OCR engine
eng <- tesseract("eng")

# Path to Aadhaar image
img_path <- "E:/Dataset/images1.jpg"

# Read image
img <- load.image(img_path)
plot(img, main = "Original Image")

# Convert to grayscale
gray_img <- grayscale(img)
plot(gray_img, main = "Grayscale Image")

# Normalize contrast
norm_img <- (gray_img - min(gray_img)) / (max(gray_img) - min(gray_img))
plot(norm_img, main = "Normalized Image")

# Threshold (binarization) - ensure cimg format
bw_img <- as.cimg(norm_img > 0.5)
plot(bw_img, main = "Binarized Image")

# Save preprocessed image
save.image(bw_img, "processed_aadhaar.png")

# OCR extraction
predicted_text <- ocr("processed_aadhaar.png", engine = eng)
cat("Extracted Text:\n", predicted_text, "\n")

# Aadhaar keywords
true_keywords <- c("AADHAAR", "Government of India", "UIDAI", "Unique Identification Authority")

# Detected keywords
detected_keywords <- sapply(true_keywords, function(k) grepl(k, predicted_text, ignore.case = TRUE))

# Metrics calculation
TP <- sum(detected_keywords)
FP <- 0
FN <- length(true_keywords) - TP
TN <- 0

precision <- ifelse((TP+FP) > 0, TP / (TP+FP), 0)
recall <- TP / (TP+FN)
accuracy <- (TP + TN) / (TP + TN + FP + FN)

cat("\n--- Metrics ---\n")
cat("True Positives :", TP, "\n")
cat("False Positives:", FP, "\n")
cat("False Negatives:", FN, "\n")
cat(sprintf("Precision: %.2f%%\n", precision * 100))
cat(sprintf("Recall   : %.2f%%\n", recall * 100))
cat(sprintf("Accuracy : %.2f%%\n", accuracy * 100))
