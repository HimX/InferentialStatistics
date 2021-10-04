# Dataset completo
data <- read.csv("datasets/credit_scoring_db.csv")
# Valor de los prestamos
credit_amounts <- data[["credit_amount"]]
# Media muestral
xbar <- mean(credit_amounts)
# Tamaño de la muestra
n <- length(credit_amounts)
# Desviación estándar
standard_detivation <- sd(credit_amounts)
# Estadístico de prueba
z <- (xbar - 3000) / (standard_detivation / sqrt(n))
p_value <- pnorm(z)

hypothesis <- t.test(credit_amounts, mu = 3000, alternative = "less")