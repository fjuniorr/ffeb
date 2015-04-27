#' Plota graficos de diagnostico dos residuos de um modelo
#' 
#' @param modelo Um modelo estimado.
#' @return Quatro gráficos de diagnóstico
#' @examples
#' grafico_residuos(lm(y ~ x))


grafico_residuos <- function(modelo) {

par(mfrow = c(2,2))    
    
# qqnorm
qqnorm(residuals(modelo), main="")
qqline(residuals(modelo))


# std
plot(x=fitted(modelo),y=(residuals(modelo) - mean(residuals(modelo)))/sd(residuals(modelo)), main="", xy.labels=FALSE, ylab="Standardized Residuals")
abline(a=mean((residuals(modelo) - mean(residuals(modelo)))/sd(residuals(modelo))), b=0)


# hist
hist(residuals(modelo), prob=TRUE, main="")
rug(residuals(modelo))
lines(density(residuals(modelo)))


# time
plot(residuals(modelo), type="l", main="")

}
