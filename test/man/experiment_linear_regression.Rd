\name{experiment_linear_regression}
\alias{experiment_linear_regression}
\docType{data}
\title{
A Capitalized Title for the Data Set
}
\description{
%%  ~~ A concise (1-5 lines) description of the dataset. ~~
}
\usage{data("experiment_linear_regression")}
\format{
  The format is:
List of 12
 $ coefficients : Named num [1:2] 54.859 -0.452
  ..- attr(*, "names")= chr [1:2] "(Intercept)" "control_expression"
 $ residuals    : Named num [1:100] -15.2521 2.6015 -0.0829 -3.0004 -1.541 ...
  ..- attr(*, "names")= chr [1:100] "1" "2" "3" "4" ...
 $ effects      : Named num [1:100] -503.11 8.05 1.92 -2.05 -0.14 ...
  ..- attr(*, "names")= chr [1:100] "(Intercept)" "control_expression" "" "" ...
 $ rank         : int 2
 $ fitted.values: Named num [1:100] 49.7 50.2 51.5 49.4 50.3 ...
  ..- attr(*, "names")= chr [1:100] "1" "2" "3" "4" ...
 $ assign       : int [1:2] 0 1
 $ qr           :List of 5
  ..$ qr   : num [1:100, 1:2] -10 0.1 0.1 0.1 0.1 0.1 0.1 0.1 0.1 0.1 ...
  .. ..- attr(*, "dimnames")=List of 2
  .. .. ..$ : chr [1:100] "1" "2" "3" "4" ...
  .. .. ..$ : chr [1:2] "(Intercept)" "control_expression"
  .. ..- attr(*, "assign")= int [1:2] 0 1
  ..$ qraux: num [1:2] 1.1 1.01
  ..$ pivot: int [1:2] 1 2
  ..$ tol  : num 1e-07
  ..$ rank : int 2
  ..- attr(*, "class")= chr "qr"
 $ df.residual  : int 98
 $ xlevels      : Named list()
 $ call         : language lm(formula = drought_expression ~ control_expression)
 $ terms        :Classes 'terms', 'formula'  language drought_expression ~ control_expression
  .. ..- attr(*, "variables")= language list(drought_expression, control_expression)
  .. ..- attr(*, "factors")= int [1:2, 1] 0 1
  .. .. ..- attr(*, "dimnames")=List of 2
  .. .. .. ..$ : chr [1:2] "drought_expression" "control_expression"
  .. .. .. ..$ : chr "control_expression"
  .. ..- attr(*, "term.labels")= chr "control_expression"
  .. ..- attr(*, "order")= int 1
  .. ..- attr(*, "intercept")= int 1
  .. ..- attr(*, "response")= int 1
  .. ..- attr(*, ".Environment")=<environment: R_GlobalEnv> 
  .. ..- attr(*, "predvars")= language list(drought_expression, control_expression)
  .. ..- attr(*, "dataClasses")= Named chr [1:2] "numeric" "numeric"
  .. .. ..- attr(*, "names")= chr [1:2] "drought_expression" "control_expression"
 $ model        :'data.frame':	100 obs. of  2 variables:
  ..$ drought_expression: num [1:100] 34.5 52.8 51.4 46.4 48.7 ...
  ..$ control_expression: num [1:100] 11.33 10.29 7.41 12.16 10.12 ...
  ..- attr(*, "terms")=Classes 'terms', 'formula'  language drought_expression ~ control_expression
  .. .. ..- attr(*, "variables")= language list(drought_expression, control_expression)
  .. .. ..- attr(*, "factors")= int [1:2, 1] 0 1
  .. .. .. ..- attr(*, "dimnames")=List of 2
  .. .. .. .. ..$ : chr [1:2] "drought_expression" "control_expression"
  .. .. .. .. ..$ : chr "control_expression"
  .. .. ..- attr(*, "term.labels")= chr "control_expression"
  .. .. ..- attr(*, "order")= int 1
  .. .. ..- attr(*, "intercept")= int 1
  .. .. ..- attr(*, "response")= int 1
  .. .. ..- attr(*, ".Environment")=<environment: R_GlobalEnv> 
  .. .. ..- attr(*, "predvars")= language list(drought_expression, control_expression)
  .. .. ..- attr(*, "dataClasses")= Named chr [1:2] "numeric" "numeric"
  .. .. .. ..- attr(*, "names")= chr [1:2] "drought_expression" "control_expression"
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
data(experiment_linear_regression)
## maybe str(experiment_linear_regression) ; plot(experiment_linear_regression) ...
}
\keyword{datasets}
