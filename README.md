
<!-- README.md is generated from README.Rmd. Please edit that file -->

# rosyicd10 <img src="man/figures/logo.png" align="right" height="200" />

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
<!-- badges: end -->

The goal of rosyicd10 is to select ICD10 codes! We are still in
development.

## Installation

You can install the development version of rosyicd10 like so:

``` r
# install remotes package if you don't have it
# install.packages("remotes") 
remotes::install_github("brandonerose/rosyicd10")
```

## Run

This is how you launch the app locally!

``` r
library(rosyicd10)

run_app()
```

## Links

The LIVE website (to run the live app) is at
[brandonerose.shinyapps.io/rosyicd10/](https://brandonerose.shinyapps.io/rosyicd10/ "rosyicd10 app")
If the website gets too much traffic you may need to install the current
version yourself below.

The rosyicd10 package (to run the app locally) is at
[github.com/brandonerose/rosyicd10](https://github.com/brandonerose/rosyicd10 "rosyicd10 R package")
See instructions above. Install remotes, install rosyicd10, and
run_app()

Donate if I helped you out and want more development (anything helps)!
[account.venmo.com/u/brandonerose](https://account.venmo.com/u/brandonerose "Venmo Donation")

The simple example shiny app (for learning shiny) is at
[github.com/brandonerose/rosyicd10_simple](https://github.com/brandonerose/rosyicd10_simple "rosyicd10 R project")
Just download the entire folder, open it as an R project, and run the
app.R (make sure you have all library packages installed)

For more R coding visit
[thecodingdocs.com/](https://www.thecodingdocs.com/ "TheCodingDocs.com")

Follow us on Twitter
[twitter.com/TheCodingDocs](https://twitter.com/TheCodingDocs "TheCodingDocs Twitter")

Follow me on Twitter
[twitter.com/BRoseMDMPH](https://twitter.com/BRoseMDMPH "BRoseMDMPH Twitter")

## ICD10 data

I custom made this data.frame in R. If you’re interested let me know and
I can share the code. The raw XML can be found at
[cms.gov/medicare/icd-10/2023-icd-10-cm](https://www.cms.gov/medicare/icd-10/2023-icd-10-cm "ICD10 Raw")

``` r
library("rosyicd10")

kableExtra::kable(ICD10[1:100, ])#first 100 rows
```

<table>
<thead>
<tr>
<th style="text-align:left;">
code
</th>
<th style="text-align:left;">
name
</th>
<th style="text-align:left;">
inclusionTerm
</th>
<th style="text-align:left;">
notes
</th>
<th style="text-align:left;">
includes
</th>
<th style="text-align:left;">
excludes1
</th>
<th style="text-align:left;">
excludes2
</th>
<th style="text-align:left;">
codeFirst
</th>
<th style="text-align:left;">
useAdditionalCode
</th>
<th style="text-align:left;">
codeAlso
</th>
<th style="text-align:left;">
sevenChr
</th>
<th style="text-align:left;">
level
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
1
</td>
<td style="text-align:left;">
Certain infectious and parasitic diseases (A00-B99)
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
These categories are provided for use as supplementary or additional
codes to identify the infectious agent(s) in diseases classified
elsewhere.
</td>
<td style="text-align:left;">
infections due to Mycobacterium tuberculosis and Mycobacterium bovis
</td>
<td style="text-align:left;">
other protozoal intestinal diseases (A07.-)
</td>
<td style="text-align:left;">
mycosis fungoides (C84.0-)
</td>
<td style="text-align:left;">
condition resulting from (sequela) the infectious or parasitic disease
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
chapter
</td>
</tr>
<tr>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
Intestinal infectious diseases (A00-A09)
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
section
</td>
</tr>
<tr>
<td style="text-align:left;">
A00
</td>
<td style="text-align:left;">
Cholera
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
diag1
</td>
</tr>
<tr>
<td style="text-align:left;">
A00.0
</td>
<td style="text-align:left;">
Cholera due to Vibrio cholerae 01, biovar cholerae
</td>
<td style="text-align:left;">
Classical cholera
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
diag2
</td>
</tr>
<tr>
<td style="text-align:left;">
A00.1
</td>
<td style="text-align:left;">
Cholera due to Vibrio cholerae 01, biovar eltor
</td>
<td style="text-align:left;">
Cholera eltor
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
diag2
</td>
</tr>
<tr>
<td style="text-align:left;">
A00.9
</td>
<td style="text-align:left;">
Cholera, unspecified
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
diag2
</td>
</tr>
<tr>
<td style="text-align:left;">
A01
</td>
<td style="text-align:left;">
Typhoid and paratyphoid fevers
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
diag1
</td>
</tr>
<tr>
<td style="text-align:left;">
A01.0
</td>
<td style="text-align:left;">
Typhoid fever
</td>
<td style="text-align:left;">
Infection due to Salmonella typhi
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
diag2
</td>
</tr>
<tr>
<td style="text-align:left;">
A01.00
</td>
<td style="text-align:left;">
Typhoid fever, unspecified
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
diag3
</td>
</tr>
<tr>
<td style="text-align:left;">
A01.01
</td>
<td style="text-align:left;">
Typhoid meningitis
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
diag3
</td>
</tr>
<tr>
<td style="text-align:left;">
A01.02
</td>
<td style="text-align:left;">
Typhoid fever with heart involvement
</td>
<td style="text-align:left;">
Typhoid myocarditis
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
diag3
</td>
</tr>
<tr>
<td style="text-align:left;">
A01.03
</td>
<td style="text-align:left;">
Typhoid pneumonia
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
diag3
</td>
</tr>
<tr>
<td style="text-align:left;">
A01.04
</td>
<td style="text-align:left;">
Typhoid arthritis
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
diag3
</td>
</tr>
<tr>
<td style="text-align:left;">
A01.05
</td>
<td style="text-align:left;">
Typhoid osteomyelitis
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
diag3
</td>
</tr>
<tr>
<td style="text-align:left;">
A01.09
</td>
<td style="text-align:left;">
Typhoid fever with other complications
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
diag3
</td>
</tr>
<tr>
<td style="text-align:left;">
A01.1
</td>
<td style="text-align:left;">
Paratyphoid fever A
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
diag2
</td>
</tr>
<tr>
<td style="text-align:left;">
A01.2
</td>
<td style="text-align:left;">
Paratyphoid fever B
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
diag2
</td>
</tr>
<tr>
<td style="text-align:left;">
A01.3
</td>
<td style="text-align:left;">
Paratyphoid fever C
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
diag2
</td>
</tr>
<tr>
<td style="text-align:left;">
A01.4
</td>
<td style="text-align:left;">
Paratyphoid fever, unspecified
</td>
<td style="text-align:left;">
Infection due to Salmonella paratyphi NOS
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
diag2
</td>
</tr>
<tr>
<td style="text-align:left;">
A02
</td>
<td style="text-align:left;">
Other salmonella infections
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
infection or foodborne intoxication due to any Salmonella species other
than S. typhi and S. paratyphi
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
diag1
</td>
</tr>
<tr>
<td style="text-align:left;">
A02.0
</td>
<td style="text-align:left;">
Salmonella enteritis
</td>
<td style="text-align:left;">
Salmonellosis
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
diag2
</td>
</tr>
<tr>
<td style="text-align:left;">
A02.1
</td>
<td style="text-align:left;">
Salmonella sepsis
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
diag2
</td>
</tr>
<tr>
<td style="text-align:left;">
A02.2
</td>
<td style="text-align:left;">
Localized salmonella infections
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
diag2
</td>
</tr>
<tr>
<td style="text-align:left;">
A02.20
</td>
<td style="text-align:left;">
Localized salmonella infection, unspecified
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
diag3
</td>
</tr>
<tr>
<td style="text-align:left;">
A02.21
</td>
<td style="text-align:left;">
Salmonella meningitis
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
diag3
</td>
</tr>
<tr>
<td style="text-align:left;">
A02.22
</td>
<td style="text-align:left;">
Salmonella pneumonia
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
diag3
</td>
</tr>
<tr>
<td style="text-align:left;">
A02.23
</td>
<td style="text-align:left;">
Salmonella arthritis
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
diag3
</td>
</tr>
<tr>
<td style="text-align:left;">
A02.24
</td>
<td style="text-align:left;">
Salmonella osteomyelitis
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
diag3
</td>
</tr>
<tr>
<td style="text-align:left;">
A02.25
</td>
<td style="text-align:left;">
Salmonella pyelonephritis
</td>
<td style="text-align:left;">
Salmonella tubulo-interstitial nephropathy
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
diag3
</td>
</tr>
<tr>
<td style="text-align:left;">
A02.29
</td>
<td style="text-align:left;">
Salmonella with other localized infection
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
diag3
</td>
</tr>
<tr>
<td style="text-align:left;">
A02.8
</td>
<td style="text-align:left;">
Other specified salmonella infections
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
diag2
</td>
</tr>
<tr>
<td style="text-align:left;">
A02.9
</td>
<td style="text-align:left;">
Salmonella infection, unspecified
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
diag2
</td>
</tr>
<tr>
<td style="text-align:left;">
A03
</td>
<td style="text-align:left;">
Shigellosis
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
diag1
</td>
</tr>
<tr>
<td style="text-align:left;">
A03.0
</td>
<td style="text-align:left;">
Shigellosis due to Shigella dysenteriae
</td>
<td style="text-align:left;">
Group A shigellosis \[Shiga-Kruse dysentery\]
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
diag2
</td>
</tr>
<tr>
<td style="text-align:left;">
A03.1
</td>
<td style="text-align:left;">
Shigellosis due to Shigella flexneri
</td>
<td style="text-align:left;">
Group B shigellosis
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
diag2
</td>
</tr>
<tr>
<td style="text-align:left;">
A03.2
</td>
<td style="text-align:left;">
Shigellosis due to Shigella boydii
</td>
<td style="text-align:left;">
Group C shigellosis
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
diag2
</td>
</tr>
<tr>
<td style="text-align:left;">
A03.3
</td>
<td style="text-align:left;">
Shigellosis due to Shigella sonnei
</td>
<td style="text-align:left;">
Group D shigellosis
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
diag2
</td>
</tr>
<tr>
<td style="text-align:left;">
A03.8
</td>
<td style="text-align:left;">
Other shigellosis
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
diag2
</td>
</tr>
<tr>
<td style="text-align:left;">
A03.9
</td>
<td style="text-align:left;">
Shigellosis, unspecified
</td>
<td style="text-align:left;">
Bacillary dysentery NOS
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
diag2
</td>
</tr>
<tr>
<td style="text-align:left;">
A04
</td>
<td style="text-align:left;">
Other bacterial intestinal infections
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
tuberculous enteritis (A18.32)
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
diag1
</td>
</tr>
<tr>
<td style="text-align:left;">
A04.0
</td>
<td style="text-align:left;">
Enteropathogenic Escherichia coli infection
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
diag2
</td>
</tr>
<tr>
<td style="text-align:left;">
A04.1
</td>
<td style="text-align:left;">
Enterotoxigenic Escherichia coli infection
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
diag2
</td>
</tr>
<tr>
<td style="text-align:left;">
A04.2
</td>
<td style="text-align:left;">
Enteroinvasive Escherichia coli infection
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
diag2
</td>
</tr>
<tr>
<td style="text-align:left;">
A04.3
</td>
<td style="text-align:left;">
Enterohemorrhagic Escherichia coli infection
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
diag2
</td>
</tr>
<tr>
<td style="text-align:left;">
A04.4
</td>
<td style="text-align:left;">
Other intestinal Escherichia coli infections
</td>
<td style="text-align:left;">
Escherichia coli enteritis NOS
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
diag2
</td>
</tr>
<tr>
<td style="text-align:left;">
A04.5
</td>
<td style="text-align:left;">
Campylobacter enteritis
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
diag2
</td>
</tr>
<tr>
<td style="text-align:left;">
A04.6
</td>
<td style="text-align:left;">
Enteritis due to Yersinia enterocolitica
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
extraintestinal yersiniosis (A28.2)
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
diag2
</td>
</tr>
<tr>
<td style="text-align:left;">
A04.7
</td>
<td style="text-align:left;">
Enterocolitis due to Clostridium difficile
</td>
<td style="text-align:left;">
Pseudomembraneous colitis
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
diag2
</td>
</tr>
<tr>
<td style="text-align:left;">
A04.71
</td>
<td style="text-align:left;">
Enterocolitis due to Clostridium difficile, recurrent
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
diag3
</td>
</tr>
<tr>
<td style="text-align:left;">
A04.72
</td>
<td style="text-align:left;">
Enterocolitis due to Clostridium difficile, not specified as recurrent
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
diag3
</td>
</tr>
<tr>
<td style="text-align:left;">
A04.8
</td>
<td style="text-align:left;">
Other specified bacterial intestinal infections
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
diag2
</td>
</tr>
<tr>
<td style="text-align:left;">
A04.9
</td>
<td style="text-align:left;">
Bacterial intestinal infection, unspecified
</td>
<td style="text-align:left;">
Bacterial enteritis NOS
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
diag2
</td>
</tr>
<tr>
<td style="text-align:left;">
A05
</td>
<td style="text-align:left;">
Other bacterial foodborne intoxications, not elsewhere classified
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
toxic effect of noxious foodstuffs (T61-T62)
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
diag1
</td>
</tr>
<tr>
<td style="text-align:left;">
A05.0
</td>
<td style="text-align:left;">
Foodborne staphylococcal intoxication
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
diag2
</td>
</tr>
<tr>
<td style="text-align:left;">
A05.1
</td>
<td style="text-align:left;">
Botulism food poisoning
</td>
<td style="text-align:left;">
Classical foodborne intoxication due to Clostridium botulinum
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
wound botulism (A48.52)
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
diag2
</td>
</tr>
<tr>
<td style="text-align:left;">
A05.2
</td>
<td style="text-align:left;">
Foodborne Clostridium perfringens \[Clostridium welchii\] intoxication
</td>
<td style="text-align:left;">
Pig-bel
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
diag2
</td>
</tr>
<tr>
<td style="text-align:left;">
A05.3
</td>
<td style="text-align:left;">
Foodborne Vibrio parahaemolyticus intoxication
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
diag2
</td>
</tr>
<tr>
<td style="text-align:left;">
A05.4
</td>
<td style="text-align:left;">
Foodborne Bacillus cereus intoxication
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
diag2
</td>
</tr>
<tr>
<td style="text-align:left;">
A05.5
</td>
<td style="text-align:left;">
Foodborne Vibrio vulnificus intoxication
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
diag2
</td>
</tr>
<tr>
<td style="text-align:left;">
A05.8
</td>
<td style="text-align:left;">
Other specified bacterial foodborne intoxications
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
diag2
</td>
</tr>
<tr>
<td style="text-align:left;">
A05.9
</td>
<td style="text-align:left;">
Bacterial foodborne intoxication, unspecified
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
diag2
</td>
</tr>
<tr>
<td style="text-align:left;">
A06
</td>
<td style="text-align:left;">
Amebiasis
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
infection due to Entamoeba histolytica
</td>
<td style="text-align:left;">
other protozoal intestinal diseases (A07.-)
</td>
<td style="text-align:left;">
Naegleriasis (B60.2)
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
diag1
</td>
</tr>
<tr>
<td style="text-align:left;">
A06.0
</td>
<td style="text-align:left;">
Acute amebic dysentery
</td>
<td style="text-align:left;">
Intestinal amebiasis NOS
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
diag2
</td>
</tr>
<tr>
<td style="text-align:left;">
A06.1
</td>
<td style="text-align:left;">
Chronic intestinal amebiasis
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
diag2
</td>
</tr>
<tr>
<td style="text-align:left;">
A06.2
</td>
<td style="text-align:left;">
Amebic nondysenteric colitis
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
diag2
</td>
</tr>
<tr>
<td style="text-align:left;">
A06.3
</td>
<td style="text-align:left;">
Ameboma of intestine
</td>
<td style="text-align:left;">
Ameboma NOS
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
diag2
</td>
</tr>
<tr>
<td style="text-align:left;">
A06.4
</td>
<td style="text-align:left;">
Amebic liver abscess
</td>
<td style="text-align:left;">
Hepatic amebiasis
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
diag2
</td>
</tr>
<tr>
<td style="text-align:left;">
A06.5
</td>
<td style="text-align:left;">
Amebic lung abscess
</td>
<td style="text-align:left;">
Amebic abscess of lung (and liver)
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
diag2
</td>
</tr>
<tr>
<td style="text-align:left;">
A06.6
</td>
<td style="text-align:left;">
Amebic brain abscess
</td>
<td style="text-align:left;">
Amebic abscess of brain (and liver) (and lung)
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
diag2
</td>
</tr>
<tr>
<td style="text-align:left;">
A06.7
</td>
<td style="text-align:left;">
Cutaneous amebiasis
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
diag2
</td>
</tr>
<tr>
<td style="text-align:left;">
A06.8
</td>
<td style="text-align:left;">
Amebic infection of other sites
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
diag2
</td>
</tr>
<tr>
<td style="text-align:left;">
A06.81
</td>
<td style="text-align:left;">
Amebic cystitis
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
diag3
</td>
</tr>
<tr>
<td style="text-align:left;">
A06.82
</td>
<td style="text-align:left;">
Other amebic genitourinary infections
</td>
<td style="text-align:left;">
Amebic vulvovaginitis
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
diag3
</td>
</tr>
<tr>
<td style="text-align:left;">
A06.89
</td>
<td style="text-align:left;">
Other amebic infections
</td>
<td style="text-align:left;">
Amebic splenic abscess
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
diag3
</td>
</tr>
<tr>
<td style="text-align:left;">
A06.9
</td>
<td style="text-align:left;">
Amebiasis, unspecified
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
diag2
</td>
</tr>
<tr>
<td style="text-align:left;">
A07
</td>
<td style="text-align:left;">
Other protozoal intestinal diseases
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
diag1
</td>
</tr>
<tr>
<td style="text-align:left;">
A07.0
</td>
<td style="text-align:left;">
Balantidiasis
</td>
<td style="text-align:left;">
Balantidial dysentery
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
diag2
</td>
</tr>
<tr>
<td style="text-align:left;">
A07.1
</td>
<td style="text-align:left;">
Giardiasis \[lambliasis\]
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
diag2
</td>
</tr>
<tr>
<td style="text-align:left;">
A07.2
</td>
<td style="text-align:left;">
Cryptosporidiosis
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
diag2
</td>
</tr>
<tr>
<td style="text-align:left;">
A07.3
</td>
<td style="text-align:left;">
Isosporiasis
</td>
<td style="text-align:left;">
Isosporosis
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
diag2
</td>
</tr>
<tr>
<td style="text-align:left;">
A07.4
</td>
<td style="text-align:left;">
Cyclosporiasis
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
diag2
</td>
</tr>
<tr>
<td style="text-align:left;">
A07.8
</td>
<td style="text-align:left;">
Other specified protozoal intestinal diseases
</td>
<td style="text-align:left;">
Sarcosporidiosis
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
diag2
</td>
</tr>
<tr>
<td style="text-align:left;">
A07.9
</td>
<td style="text-align:left;">
Protozoal intestinal disease, unspecified
</td>
<td style="text-align:left;">
Protozoal dysentery
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
diag2
</td>
</tr>
<tr>
<td style="text-align:left;">
A08
</td>
<td style="text-align:left;">
Viral and other specified intestinal infections
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
influenza with involvement of gastrointestinal tract (J09.X3, J10.2,
J11.2)
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
diag1
</td>
</tr>
<tr>
<td style="text-align:left;">
A08.0
</td>
<td style="text-align:left;">
Rotaviral enteritis
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
diag2
</td>
</tr>
<tr>
<td style="text-align:left;">
A08.1
</td>
<td style="text-align:left;">
Acute gastroenteropathy due to Norwalk agent and other small round
viruses
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
diag2
</td>
</tr>
<tr>
<td style="text-align:left;">
A08.11
</td>
<td style="text-align:left;">
Acute gastroenteropathy due to Norwalk agent
</td>
<td style="text-align:left;">
Acute gastroenteropathy due to Norwalk-like agent
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
diag3
</td>
</tr>
<tr>
<td style="text-align:left;">
A08.19
</td>
<td style="text-align:left;">
Acute gastroenteropathy due to other small round viruses
</td>
<td style="text-align:left;">
Acute gastroenteropathy due to small round virus \[SRV\] NOS
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
diag3
</td>
</tr>
<tr>
<td style="text-align:left;">
A08.2
</td>
<td style="text-align:left;">
Adenoviral enteritis
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
diag2
</td>
</tr>
<tr>
<td style="text-align:left;">
A08.3
</td>
<td style="text-align:left;">
Other viral enteritis
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
diag2
</td>
</tr>
<tr>
<td style="text-align:left;">
A08.31
</td>
<td style="text-align:left;">
Calicivirus enteritis
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
diag3
</td>
</tr>
<tr>
<td style="text-align:left;">
A08.32
</td>
<td style="text-align:left;">
Astrovirus enteritis
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
diag3
</td>
</tr>
<tr>
<td style="text-align:left;">
A08.39
</td>
<td style="text-align:left;">
Other viral enteritis
</td>
<td style="text-align:left;">
Torovirus enteritis
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
diag3
</td>
</tr>
<tr>
<td style="text-align:left;">
A08.4
</td>
<td style="text-align:left;">
Viral intestinal infection, unspecified
</td>
<td style="text-align:left;">
Viral gastroenteropathy NOS
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
diag2
</td>
</tr>
<tr>
<td style="text-align:left;">
A08.8
</td>
<td style="text-align:left;">
Other specified intestinal infections
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
diag2
</td>
</tr>
<tr>
<td style="text-align:left;">
A09
</td>
<td style="text-align:left;">
Infectious gastroenteritis and colitis, unspecified
</td>
<td style="text-align:left;">
Infectious gastroenteritis NOS
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
noninfective gastroenteritis and colitis, unspecified (K52.9)
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
diag1
</td>
</tr>
<tr>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
Tuberculosis (A15-A19)
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
infections due to Mycobacterium tuberculosis and Mycobacterium bovis
</td>
<td style="text-align:left;">
silicotuberculosis (J65)
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
section
</td>
</tr>
<tr>
<td style="text-align:left;">
A15
</td>
<td style="text-align:left;">
Respiratory tuberculosis
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
diag1
</td>
</tr>
<tr>
<td style="text-align:left;">
A15.0
</td>
<td style="text-align:left;">
Tuberculosis of lung
</td>
<td style="text-align:left;">
Tuberculous pneumothorax
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
diag2
</td>
</tr>
<tr>
<td style="text-align:left;">
A15.4
</td>
<td style="text-align:left;">
Tuberculosis of intrathoracic lymph nodes
</td>
<td style="text-align:left;">
Tuberculosis of tracheobronchial lymph nodes
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
tuberculosis specified as primary (A15.7)
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
NA
</td>
<td style="text-align:left;">
diag2
</td>
</tr>
</tbody>
</table>
