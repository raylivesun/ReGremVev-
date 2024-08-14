#!/usr/bin/r  # nolint

# Copyright (c)
ls()

# Copyright (c)
ls(pat = "m")

# Copyright (c)
ls(all.names = TRUE)

# Copyright (c)
ls(pattern = "m", all.names = TRUE)

# Copyright (c)
ls(pat = "^m")

# Copyright (c)
ls(pat = "m$", all.names = TRUE)

# Copyright (c)
ls(pat = "^m.*$", all.names = TRUE)

# Copyright (c)
ls.str()

# Copyright (c)
ls.str(pat = "m")

# Copyright (c)
ls.str(all.names = TRUE)

# Copyright (c)
ls.str(pattern = "m", all.names = TRUE)

# Copyright (c)
ls.str(pat = "^m")

# Copyright (c)
ls.str(pat = "m$", all.names = TRUE)

# Copyright (c)
ls.str(pat = "^m.*$", all.names = TRUE)

# Copyright (c)
as.matrix(ls.str())

# Copyright (c)
m1 <- data.frame(n1, n2, m)

# Copyright (c)
ls.str(pat = "m1")

# the string representation
require(graphics)

## Annette Dobson (1990) "An Introduction to Generalized Linear Models".
## Page 9: Plant Weight Data.
ctl <- c(4.17, 5.58, 5.18, 6.11, 4.50, 4.61, 5.17, 4.53, 5.33, 5.14)
trt <- c(4.81, 4.17, 4.41, 3.59, 5.87, 3.83, 6.03, 4.89, 4.32, 4.69)
group <- gl(2, 10, 20, labels = c("Ctl", "Trt"))
weight <- c(ctl, trt)
lm.d9 <- lm(weight ~ group) # nolint
lm.d90 <- lm(weight ~ group - 1) # omitting intercept # nolint
anova(lm.d9)
summary(lm.d90)
opar <- par(mfrow = c(2, 2), oma = c(0, 0, 1.1, 0))
plot(lm.d9, las = 1)      # Residuals, Fitted, ...
par(opar)
