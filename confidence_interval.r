# Dataset completo
data <- read.csv("datasets/credit_scoring_db.csv")
# Edad de los clientes
ages <- data[["age"]]
# Tamaño de la muestra
n <- length(ages)
# Media muestral
xbar <- mean(ages)

# # Varianza
variance <- var(ages)
# Desviación estándar
standard_detivation <- sd(ages)
# Margen de error
margin <- qt(0.975, df = n - 1) * standard_detivation / sqrt(n)

# Límites inferior y superior
low <- xbar - margin
upper <- xbar + margin