\name{experiment_linear_regression_norm}
\alias{experiment_linear_regression_norm}
\docType{data}
\title{
A Capitalized Title for the Data Set
}
\description{
%%  ~~ A concise (1-5 lines) description of the dataset. ~~
}
\usage{data("experiment_linear_regression_norm")}
\format{
  The format is:
List of 12
 $ coefficients : Named num [1:2] 0.8904 0.0885
  ..- attr(*, "names")= chr [1:2] "(Intercept)" "control_expression_sd"
 $ residuals    : Named num [1:100] 1.66691 -0.28432 0.00906 0.32792 0.16842 ...
  ..- attr(*, "names")= chr [1:100] "1" "2" "3" "4" ...
 $ effects      : Named num [1:100] -4.9712 -0.8801 -0.2099 0.2245 0.0153 ...
  ..- attr(*, "names")= chr [1:100] "(Intercept)" "control_expression_sd" "" "" ...
 $ rank         : int 2
 $ fitted.values: Named num [1:100] 0.56 0.508 0.366 0.601 0.5 ...
  ..- attr(*, "names")= chr [1:100] "1" "2" "3" "4" ...
 $ assign       : int [1:2] 0 1
 $ qr           :List of 5
  ..$ qr   : num [1:100, 1:2] -10 0.1 0.1 0.1 0.1 0.1 0.1 0.1 0.1 0.1 ...
  .. ..- attr(*, "dimnames")=List of 2
  .. .. ..$ : chr [1:100] "1" "2" "3" "4" ...
  .. .. ..$ : chr [1:2] "(Intercept)" "control_expression_sd"
  .. ..- attr(*, "assign")= int [1:2] 0 1
  ..$ qraux: num [1:2] 1.1 1.01
  ..$ pivot: int [1:2] 1 2
  ..$ tol  : num 1e-07
  ..$ rank : int 2
  ..- attr(*, "class")= chr "qr"
 $ df.residual  : int 98
 $ xlevels      : Named list()
 $ call         : language lm(formula = drought_expression_normalized_sd ~ control_expression_sd)
 $ terms        :Classes 'terms', 'formula'  language drought_expression_normalized_sd ~ control_expression_sd
  .. ..- attr(*, "variables")= language list(drought_expression_normalized_sd, control_expression_sd)
  .. ..- attr(*, "factors")= int [1:2, 1] 0 1
  .. .. ..- attr(*, "dimnames")=List of 2
  .. .. .. ..$ : chr [1:2] "drought_expression_normalized_sd" "control_expression_sd"
  .. .. .. ..$ : chr "control_expression_sd"
  .. ..- attr(*, "term.labels")= chr "control_expression_sd"
  .. ..- attr(*, "order")= int 1
  .. ..- attr(*, "intercept")= int 1
  .. ..- attr(*, "response")= int 1
  .. ..- attr(*, ".Environment")=<environment: R_GlobalEnv> 
  .. ..- attr(*, "predvars")= language list(drought_expression_normalized_sd, control_expression_sd)
  .. ..- attr(*, "dataClasses")= Named chr [1:2] "numeric" "numeric"
  .. .. ..- attr(*, "names")= chr [1:2] "drought_expression_normalized_sd" "control_expression_sd"
 $ model        :'data.frame':	100 obs. of  2 variables:
  ..$ drought_expression_normalized_sd: num [1:100] 2.227 0.224 0.375 0.928 0.668 ...
  ..$ control_expression_sd           : num [1:100] -3.74 -4.32 -5.93 -3.28 -4.42 ...
  ..- attr(*, "terms")=Classes 'terms', 'formula'  language drought_expression_normalized_sd ~ control_expression_sd
  .. .. ..- attr(*, "variables")= language list(drought_expression_normalized_sd, control_expression_sd)
  .. .. ..- attr(*, "factors")= int [1:2, 1] 0 1
  .. .. .. ..- attr(*, "dimnames")=List of 2
  .. .. .. .. ..$ : chr [1:2] "drought_expression_normalized_sd" "control_expression_sd"
  .. .. .. .. ..$ : chr "control_expression_sd"
  .. .. ..- attr(*, "term.labels")= chr "control_expression_sd"
  .. .. ..- attr(*, "order")= int 1
  .. .. ..- attr(*, "intercept")= int 1
  .. .. ..- attr(*, "response")= int 1
  .. .. ..- attr(*, ".Environment")=<environment: R_GlobalEnv> 
  .. .. ..- attr(*, "predvars")= language list(drought_expression_normalized_sd, control_expression_sd)
  .. .. ..- attr(*, "dataClasses")= Named chr [1:2] "numeric" "numeric"
  .. .. .. ..- attr(*, "names")= chr [1:2] "drought_expression_normalized_sd" "control_expression_sd"
 - attr(*, "class")= chr "lm"
}
\details{
%%  ~~ If necessary, more details than the __description__ above ~~
}
\source{
%%  ~~ reference to a publication or URL from which the data were obtained ~~
}
\references{
%%  ~~ possibly secondary sources and usages ~~
}
\examples{
data(experiment_linear_regression_norm)
## maybe str(experiment_linear_regression_norm) ; plot(experiment_linear_regression_norm) ...
}
\keyword{datasets}
