
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

ICD10[1:100, ]#first 100 rows
#>       code
#> 1        1
#> 2     <NA>
#> 3      A00
#> 4    A00.0
#> 5    A00.1
#> 6    A00.9
#> 7      A01
#> 8    A01.0
#> 9   A01.00
#> 10  A01.01
#> 11  A01.02
#> 12  A01.03
#> 13  A01.04
#> 14  A01.05
#> 15  A01.09
#> 16   A01.1
#> 17   A01.2
#> 18   A01.3
#> 19   A01.4
#> 20     A02
#> 21   A02.0
#> 22   A02.1
#> 23   A02.2
#> 24  A02.20
#> 25  A02.21
#> 26  A02.22
#> 27  A02.23
#> 28  A02.24
#> 29  A02.25
#> 30  A02.29
#> 31   A02.8
#> 32   A02.9
#> 33     A03
#> 34   A03.0
#> 35   A03.1
#> 36   A03.2
#> 37   A03.3
#> 38   A03.8
#> 39   A03.9
#> 40     A04
#> 41   A04.0
#> 42   A04.1
#> 43   A04.2
#> 44   A04.3
#> 45   A04.4
#> 46   A04.5
#> 47   A04.6
#> 48   A04.7
#> 49  A04.71
#> 50  A04.72
#> 51   A04.8
#> 52   A04.9
#> 53     A05
#> 54   A05.0
#> 55   A05.1
#> 56   A05.2
#> 57   A05.3
#> 58   A05.4
#> 59   A05.5
#> 60   A05.8
#> 61   A05.9
#> 62     A06
#> 63   A06.0
#> 64   A06.1
#> 65   A06.2
#> 66   A06.3
#> 67   A06.4
#> 68   A06.5
#> 69   A06.6
#> 70   A06.7
#> 71   A06.8
#> 72  A06.81
#> 73  A06.82
#> 74  A06.89
#> 75   A06.9
#> 76     A07
#> 77   A07.0
#> 78   A07.1
#> 79   A07.2
#> 80   A07.3
#> 81   A07.4
#> 82   A07.8
#> 83   A07.9
#> 84     A08
#> 85   A08.0
#> 86   A08.1
#> 87  A08.11
#> 88  A08.19
#> 89   A08.2
#> 90   A08.3
#> 91  A08.31
#> 92  A08.32
#> 93  A08.39
#> 94   A08.4
#> 95   A08.8
#> 96     A09
#> 97    <NA>
#> 98     A15
#> 99   A15.0
#> 100  A15.4
#>                                                                           name
#> 1                          Certain infectious and parasitic diseases (A00-B99)
#> 2                                     Intestinal infectious diseases (A00-A09)
#> 3                                                                      Cholera
#> 4                           Cholera due to Vibrio cholerae 01, biovar cholerae
#> 5                              Cholera due to Vibrio cholerae 01, biovar eltor
#> 6                                                         Cholera, unspecified
#> 7                                               Typhoid and paratyphoid fevers
#> 8                                                                Typhoid fever
#> 9                                                   Typhoid fever, unspecified
#> 10                                                          Typhoid meningitis
#> 11                                        Typhoid fever with heart involvement
#> 12                                                           Typhoid pneumonia
#> 13                                                           Typhoid arthritis
#> 14                                                       Typhoid osteomyelitis
#> 15                                      Typhoid fever with other complications
#> 16                                                         Paratyphoid fever A
#> 17                                                         Paratyphoid fever B
#> 18                                                         Paratyphoid fever C
#> 19                                              Paratyphoid fever, unspecified
#> 20                                                 Other salmonella infections
#> 21                                                        Salmonella enteritis
#> 22                                                           Salmonella sepsis
#> 23                                             Localized salmonella infections
#> 24                                 Localized salmonella infection, unspecified
#> 25                                                       Salmonella meningitis
#> 26                                                        Salmonella pneumonia
#> 27                                                        Salmonella arthritis
#> 28                                                    Salmonella osteomyelitis
#> 29                                                   Salmonella pyelonephritis
#> 30                                   Salmonella with other localized infection
#> 31                                       Other specified salmonella infections
#> 32                                           Salmonella infection, unspecified
#> 33                                                                 Shigellosis
#> 34                                     Shigellosis due to Shigella dysenteriae
#> 35                                        Shigellosis due to Shigella flexneri
#> 36                                          Shigellosis due to Shigella boydii
#> 37                                          Shigellosis due to Shigella sonnei
#> 38                                                           Other shigellosis
#> 39                                                    Shigellosis, unspecified
#> 40                                       Other bacterial intestinal infections
#> 41                                 Enteropathogenic Escherichia coli infection
#> 42                                  Enterotoxigenic Escherichia coli infection
#> 43                                   Enteroinvasive Escherichia coli infection
#> 44                                Enterohemorrhagic Escherichia coli infection
#> 45                                Other intestinal Escherichia coli infections
#> 46                                                     Campylobacter enteritis
#> 47                                    Enteritis due to Yersinia enterocolitica
#> 48                                  Enterocolitis due to Clostridium difficile
#> 49                       Enterocolitis due to Clostridium difficile, recurrent
#> 50      Enterocolitis due to Clostridium difficile, not specified as recurrent
#> 51                             Other specified bacterial intestinal infections
#> 52                                 Bacterial intestinal infection, unspecified
#> 53           Other bacterial foodborne intoxications, not elsewhere classified
#> 54                                       Foodborne staphylococcal intoxication
#> 55                                                     Botulism food poisoning
#> 56        Foodborne Clostridium perfringens [Clostridium welchii] intoxication
#> 57                              Foodborne Vibrio parahaemolyticus intoxication
#> 58                                      Foodborne Bacillus cereus intoxication
#> 59                                    Foodborne Vibrio vulnificus intoxication
#> 60                           Other specified bacterial foodborne intoxications
#> 61                               Bacterial foodborne intoxication, unspecified
#> 62                                                                   Amebiasis
#> 63                                                      Acute amebic dysentery
#> 64                                                Chronic intestinal amebiasis
#> 65                                                Amebic nondysenteric colitis
#> 66                                                        Ameboma of intestine
#> 67                                                        Amebic liver abscess
#> 68                                                         Amebic lung abscess
#> 69                                                        Amebic brain abscess
#> 70                                                         Cutaneous amebiasis
#> 71                                             Amebic infection of other sites
#> 72                                                             Amebic cystitis
#> 73                                       Other amebic genitourinary infections
#> 74                                                     Other amebic infections
#> 75                                                      Amebiasis, unspecified
#> 76                                         Other protozoal intestinal diseases
#> 77                                                               Balantidiasis
#> 78                                                     Giardiasis [lambliasis]
#> 79                                                           Cryptosporidiosis
#> 80                                                                Isosporiasis
#> 81                                                              Cyclosporiasis
#> 82                               Other specified protozoal intestinal diseases
#> 83                                   Protozoal intestinal disease, unspecified
#> 84                             Viral and other specified intestinal infections
#> 85                                                         Rotaviral enteritis
#> 86  Acute gastroenteropathy due to Norwalk agent and other small round viruses
#> 87                                Acute gastroenteropathy due to Norwalk agent
#> 88                    Acute gastroenteropathy due to other small round viruses
#> 89                                                        Adenoviral enteritis
#> 90                                                       Other viral enteritis
#> 91                                                       Calicivirus enteritis
#> 92                                                        Astrovirus enteritis
#> 93                                                       Other viral enteritis
#> 94                                     Viral intestinal infection, unspecified
#> 95                                       Other specified intestinal infections
#> 96                         Infectious gastroenteritis and colitis, unspecified
#> 97                                                      Tuberculosis (A15-A19)
#> 98                                                    Respiratory tuberculosis
#> 99                                                        Tuberculosis of lung
#> 100                                  Tuberculosis of intrathoracic lymph nodes
#>                                                     inclusionTerm
#> 1                                                            <NA>
#> 2                                                            <NA>
#> 3                                                            <NA>
#> 4                                               Classical cholera
#> 5                                                   Cholera eltor
#> 6                                                            <NA>
#> 7                                                            <NA>
#> 8                               Infection due to Salmonella typhi
#> 9                                                            <NA>
#> 10                                                           <NA>
#> 11                                            Typhoid myocarditis
#> 12                                                           <NA>
#> 13                                                           <NA>
#> 14                                                           <NA>
#> 15                                                           <NA>
#> 16                                                           <NA>
#> 17                                                           <NA>
#> 18                                                           <NA>
#> 19                      Infection due to Salmonella paratyphi NOS
#> 20                                                           <NA>
#> 21                                                  Salmonellosis
#> 22                                                           <NA>
#> 23                                                           <NA>
#> 24                                                           <NA>
#> 25                                                           <NA>
#> 26                                                           <NA>
#> 27                                                           <NA>
#> 28                                                           <NA>
#> 29                     Salmonella tubulo-interstitial nephropathy
#> 30                                                           <NA>
#> 31                                                           <NA>
#> 32                                                           <NA>
#> 33                                                           <NA>
#> 34                    Group A shigellosis [Shiga-Kruse dysentery]
#> 35                                            Group B shigellosis
#> 36                                            Group C shigellosis
#> 37                                            Group D shigellosis
#> 38                                                           <NA>
#> 39                                        Bacillary dysentery NOS
#> 40                                                           <NA>
#> 41                                                           <NA>
#> 42                                                           <NA>
#> 43                                                           <NA>
#> 44                                                           <NA>
#> 45                                 Escherichia coli enteritis NOS
#> 46                                                           <NA>
#> 47                                                           <NA>
#> 48                                      Pseudomembraneous colitis
#> 49                                                           <NA>
#> 50                                                           <NA>
#> 51                                                           <NA>
#> 52                                        Bacterial enteritis NOS
#> 53                                                           <NA>
#> 54                                                           <NA>
#> 55  Classical foodborne intoxication due to Clostridium botulinum
#> 56                                                        Pig-bel
#> 57                                                           <NA>
#> 58                                                           <NA>
#> 59                                                           <NA>
#> 60                                                           <NA>
#> 61                                                           <NA>
#> 62                                                           <NA>
#> 63                                       Intestinal amebiasis NOS
#> 64                                                           <NA>
#> 65                                                           <NA>
#> 66                                                    Ameboma NOS
#> 67                                              Hepatic amebiasis
#> 68                             Amebic abscess of lung (and liver)
#> 69                 Amebic abscess of brain (and liver) (and lung)
#> 70                                                           <NA>
#> 71                                                           <NA>
#> 72                                                           <NA>
#> 73                                          Amebic vulvovaginitis
#> 74                                         Amebic splenic abscess
#> 75                                                           <NA>
#> 76                                                           <NA>
#> 77                                          Balantidial dysentery
#> 78                                                           <NA>
#> 79                                                           <NA>
#> 80                                                    Isosporosis
#> 81                                                           <NA>
#> 82                                               Sarcosporidiosis
#> 83                                            Protozoal dysentery
#> 84                                                           <NA>
#> 85                                                           <NA>
#> 86                                                           <NA>
#> 87              Acute gastroenteropathy due to Norwalk-like agent
#> 88     Acute gastroenteropathy due to small round virus [SRV] NOS
#> 89                                                           <NA>
#> 90                                                           <NA>
#> 91                                                           <NA>
#> 92                                                           <NA>
#> 93                                            Torovirus enteritis
#> 94                                    Viral gastroenteropathy NOS
#> 95                                                           <NA>
#> 96                                 Infectious gastroenteritis NOS
#> 97                                                           <NA>
#> 98                                                           <NA>
#> 99                                       Tuberculous pneumothorax
#> 100                  Tuberculosis of tracheobronchial lymph nodes
#>                                                                                                                                                notes
#> 1   These categories are provided for use as supplementary or additional codes to identify the infectious agent(s) in diseases classified elsewhere.
#> 2                                                                                                                                               <NA>
#> 3                                                                                                                                               <NA>
#> 4                                                                                                                                               <NA>
#> 5                                                                                                                                               <NA>
#> 6                                                                                                                                               <NA>
#> 7                                                                                                                                               <NA>
#> 8                                                                                                                                               <NA>
#> 9                                                                                                                                               <NA>
#> 10                                                                                                                                              <NA>
#> 11                                                                                                                                              <NA>
#> 12                                                                                                                                              <NA>
#> 13                                                                                                                                              <NA>
#> 14                                                                                                                                              <NA>
#> 15                                                                                                                                              <NA>
#> 16                                                                                                                                              <NA>
#> 17                                                                                                                                              <NA>
#> 18                                                                                                                                              <NA>
#> 19                                                                                                                                              <NA>
#> 20                                                                                                                                              <NA>
#> 21                                                                                                                                              <NA>
#> 22                                                                                                                                              <NA>
#> 23                                                                                                                                              <NA>
#> 24                                                                                                                                              <NA>
#> 25                                                                                                                                              <NA>
#> 26                                                                                                                                              <NA>
#> 27                                                                                                                                              <NA>
#> 28                                                                                                                                              <NA>
#> 29                                                                                                                                              <NA>
#> 30                                                                                                                                              <NA>
#> 31                                                                                                                                              <NA>
#> 32                                                                                                                                              <NA>
#> 33                                                                                                                                              <NA>
#> 34                                                                                                                                              <NA>
#> 35                                                                                                                                              <NA>
#> 36                                                                                                                                              <NA>
#> 37                                                                                                                                              <NA>
#> 38                                                                                                                                              <NA>
#> 39                                                                                                                                              <NA>
#> 40                                                                                                                                              <NA>
#> 41                                                                                                                                              <NA>
#> 42                                                                                                                                              <NA>
#> 43                                                                                                                                              <NA>
#> 44                                                                                                                                              <NA>
#> 45                                                                                                                                              <NA>
#> 46                                                                                                                                              <NA>
#> 47                                                                                                                                              <NA>
#> 48                                                                                                                                              <NA>
#> 49                                                                                                                                              <NA>
#> 50                                                                                                                                              <NA>
#> 51                                                                                                                                              <NA>
#> 52                                                                                                                                              <NA>
#> 53                                                                                                                                              <NA>
#> 54                                                                                                                                              <NA>
#> 55                                                                                                                                              <NA>
#> 56                                                                                                                                              <NA>
#> 57                                                                                                                                              <NA>
#> 58                                                                                                                                              <NA>
#> 59                                                                                                                                              <NA>
#> 60                                                                                                                                              <NA>
#> 61                                                                                                                                              <NA>
#> 62                                                                                                                                              <NA>
#> 63                                                                                                                                              <NA>
#> 64                                                                                                                                              <NA>
#> 65                                                                                                                                              <NA>
#> 66                                                                                                                                              <NA>
#> 67                                                                                                                                              <NA>
#> 68                                                                                                                                              <NA>
#> 69                                                                                                                                              <NA>
#> 70                                                                                                                                              <NA>
#> 71                                                                                                                                              <NA>
#> 72                                                                                                                                              <NA>
#> 73                                                                                                                                              <NA>
#> 74                                                                                                                                              <NA>
#> 75                                                                                                                                              <NA>
#> 76                                                                                                                                              <NA>
#> 77                                                                                                                                              <NA>
#> 78                                                                                                                                              <NA>
#> 79                                                                                                                                              <NA>
#> 80                                                                                                                                              <NA>
#> 81                                                                                                                                              <NA>
#> 82                                                                                                                                              <NA>
#> 83                                                                                                                                              <NA>
#> 84                                                                                                                                              <NA>
#> 85                                                                                                                                              <NA>
#> 86                                                                                                                                              <NA>
#> 87                                                                                                                                              <NA>
#> 88                                                                                                                                              <NA>
#> 89                                                                                                                                              <NA>
#> 90                                                                                                                                              <NA>
#> 91                                                                                                                                              <NA>
#> 92                                                                                                                                              <NA>
#> 93                                                                                                                                              <NA>
#> 94                                                                                                                                              <NA>
#> 95                                                                                                                                              <NA>
#> 96                                                                                                                                              <NA>
#> 97                                                                                                                                              <NA>
#> 98                                                                                                                                              <NA>
#> 99                                                                                                                                              <NA>
#> 100                                                                                                                                             <NA>
#>                                                                                                   includes
#> 1                                     infections due to Mycobacterium tuberculosis and Mycobacterium bovis
#> 2                                                                                                     <NA>
#> 3                                                                                                     <NA>
#> 4                                                                                                     <NA>
#> 5                                                                                                     <NA>
#> 6                                                                                                     <NA>
#> 7                                                                                                     <NA>
#> 8                                                                                                     <NA>
#> 9                                                                                                     <NA>
#> 10                                                                                                    <NA>
#> 11                                                                                                    <NA>
#> 12                                                                                                    <NA>
#> 13                                                                                                    <NA>
#> 14                                                                                                    <NA>
#> 15                                                                                                    <NA>
#> 16                                                                                                    <NA>
#> 17                                                                                                    <NA>
#> 18                                                                                                    <NA>
#> 19                                                                                                    <NA>
#> 20  infection or foodborne intoxication due to any Salmonella species other than S. typhi and S. paratyphi
#> 21                                                                                                    <NA>
#> 22                                                                                                    <NA>
#> 23                                                                                                    <NA>
#> 24                                                                                                    <NA>
#> 25                                                                                                    <NA>
#> 26                                                                                                    <NA>
#> 27                                                                                                    <NA>
#> 28                                                                                                    <NA>
#> 29                                                                                                    <NA>
#> 30                                                                                                    <NA>
#> 31                                                                                                    <NA>
#> 32                                                                                                    <NA>
#> 33                                                                                                    <NA>
#> 34                                                                                                    <NA>
#> 35                                                                                                    <NA>
#> 36                                                                                                    <NA>
#> 37                                                                                                    <NA>
#> 38                                                                                                    <NA>
#> 39                                                                                                    <NA>
#> 40                                                                                                    <NA>
#> 41                                                                                                    <NA>
#> 42                                                                                                    <NA>
#> 43                                                                                                    <NA>
#> 44                                                                                                    <NA>
#> 45                                                                                                    <NA>
#> 46                                                                                                    <NA>
#> 47                                                                                                    <NA>
#> 48                                                                                                    <NA>
#> 49                                                                                                    <NA>
#> 50                                                                                                    <NA>
#> 51                                                                                                    <NA>
#> 52                                                                                                    <NA>
#> 53                                                                                                    <NA>
#> 54                                                                                                    <NA>
#> 55                                                                                                    <NA>
#> 56                                                                                                    <NA>
#> 57                                                                                                    <NA>
#> 58                                                                                                    <NA>
#> 59                                                                                                    <NA>
#> 60                                                                                                    <NA>
#> 61                                                                                                    <NA>
#> 62                                                                  infection due to Entamoeba histolytica
#> 63                                                                                                    <NA>
#> 64                                                                                                    <NA>
#> 65                                                                                                    <NA>
#> 66                                                                                                    <NA>
#> 67                                                                                                    <NA>
#> 68                                                                                                    <NA>
#> 69                                                                                                    <NA>
#> 70                                                                                                    <NA>
#> 71                                                                                                    <NA>
#> 72                                                                                                    <NA>
#> 73                                                                                                    <NA>
#> 74                                                                                                    <NA>
#> 75                                                                                                    <NA>
#> 76                                                                                                    <NA>
#> 77                                                                                                    <NA>
#> 78                                                                                                    <NA>
#> 79                                                                                                    <NA>
#> 80                                                                                                    <NA>
#> 81                                                                                                    <NA>
#> 82                                                                                                    <NA>
#> 83                                                                                                    <NA>
#> 84                                                                                                    <NA>
#> 85                                                                                                    <NA>
#> 86                                                                                                    <NA>
#> 87                                                                                                    <NA>
#> 88                                                                                                    <NA>
#> 89                                                                                                    <NA>
#> 90                                                                                                    <NA>
#> 91                                                                                                    <NA>
#> 92                                                                                                    <NA>
#> 93                                                                                                    <NA>
#> 94                                                                                                    <NA>
#> 95                                                                                                    <NA>
#> 96                                                                                                    <NA>
#> 97                                    infections due to Mycobacterium tuberculosis and Mycobacterium bovis
#> 98                                                                                                    <NA>
#> 99                                                                                                    <NA>
#> 100                                                                                                   <NA>
#>                                                                       excludes1
#> 1                                   other protozoal intestinal diseases (A07.-)
#> 2                                                                          <NA>
#> 3                                                                          <NA>
#> 4                                                                          <NA>
#> 5                                                                          <NA>
#> 6                                                                          <NA>
#> 7                                                                          <NA>
#> 8                                                                          <NA>
#> 9                                                                          <NA>
#> 10                                                                         <NA>
#> 11                                                                         <NA>
#> 12                                                                         <NA>
#> 13                                                                         <NA>
#> 14                                                                         <NA>
#> 15                                                                         <NA>
#> 16                                                                         <NA>
#> 17                                                                         <NA>
#> 18                                                                         <NA>
#> 19                                                                         <NA>
#> 20                                                                         <NA>
#> 21                                                                         <NA>
#> 22                                                                         <NA>
#> 23                                                                         <NA>
#> 24                                                                         <NA>
#> 25                                                                         <NA>
#> 26                                                                         <NA>
#> 27                                                                         <NA>
#> 28                                                                         <NA>
#> 29                                                                         <NA>
#> 30                                                                         <NA>
#> 31                                                                         <NA>
#> 32                                                                         <NA>
#> 33                                                                         <NA>
#> 34                                                                         <NA>
#> 35                                                                         <NA>
#> 36                                                                         <NA>
#> 37                                                                         <NA>
#> 38                                                                         <NA>
#> 39                                                                         <NA>
#> 40                                               tuberculous enteritis (A18.32)
#> 41                                                                         <NA>
#> 42                                                                         <NA>
#> 43                                                                         <NA>
#> 44                                                                         <NA>
#> 45                                                                         <NA>
#> 46                                                                         <NA>
#> 47                                          extraintestinal yersiniosis (A28.2)
#> 48                                                                         <NA>
#> 49                                                                         <NA>
#> 50                                                                         <NA>
#> 51                                                                         <NA>
#> 52                                                                         <NA>
#> 53                                 toxic effect of noxious foodstuffs (T61-T62)
#> 54                                                                         <NA>
#> 55                                                      wound botulism (A48.52)
#> 56                                                                         <NA>
#> 57                                                                         <NA>
#> 58                                                                         <NA>
#> 59                                                                         <NA>
#> 60                                                                         <NA>
#> 61                                                                         <NA>
#> 62                                  other protozoal intestinal diseases (A07.-)
#> 63                                                                         <NA>
#> 64                                                                         <NA>
#> 65                                                                         <NA>
#> 66                                                                         <NA>
#> 67                                                                         <NA>
#> 68                                                                         <NA>
#> 69                                                                         <NA>
#> 70                                                                         <NA>
#> 71                                                                         <NA>
#> 72                                                                         <NA>
#> 73                                                                         <NA>
#> 74                                                                         <NA>
#> 75                                                                         <NA>
#> 76                                                                         <NA>
#> 77                                                                         <NA>
#> 78                                                                         <NA>
#> 79                                                                         <NA>
#> 80                                                                         <NA>
#> 81                                                                         <NA>
#> 82                                                                         <NA>
#> 83                                                                         <NA>
#> 84  influenza with involvement of gastrointestinal tract (J09.X3, J10.2, J11.2)
#> 85                                                                         <NA>
#> 86                                                                         <NA>
#> 87                                                                         <NA>
#> 88                                                                         <NA>
#> 89                                                                         <NA>
#> 90                                                                         <NA>
#> 91                                                                         <NA>
#> 92                                                                         <NA>
#> 93                                                                         <NA>
#> 94                                                                         <NA>
#> 95                                                                         <NA>
#> 96                noninfective gastroenteritis and colitis, unspecified (K52.9)
#> 97                                                     silicotuberculosis (J65)
#> 98                                                                         <NA>
#> 99                                                                         <NA>
#> 100                                   tuberculosis specified as primary (A15.7)
#>                      excludes2
#> 1   mycosis fungoides (C84.0-)
#> 2                         <NA>
#> 3                         <NA>
#> 4                         <NA>
#> 5                         <NA>
#> 6                         <NA>
#> 7                         <NA>
#> 8                         <NA>
#> 9                         <NA>
#> 10                        <NA>
#> 11                        <NA>
#> 12                        <NA>
#> 13                        <NA>
#> 14                        <NA>
#> 15                        <NA>
#> 16                        <NA>
#> 17                        <NA>
#> 18                        <NA>
#> 19                        <NA>
#> 20                        <NA>
#> 21                        <NA>
#> 22                        <NA>
#> 23                        <NA>
#> 24                        <NA>
#> 25                        <NA>
#> 26                        <NA>
#> 27                        <NA>
#> 28                        <NA>
#> 29                        <NA>
#> 30                        <NA>
#> 31                        <NA>
#> 32                        <NA>
#> 33                        <NA>
#> 34                        <NA>
#> 35                        <NA>
#> 36                        <NA>
#> 37                        <NA>
#> 38                        <NA>
#> 39                        <NA>
#> 40                        <NA>
#> 41                        <NA>
#> 42                        <NA>
#> 43                        <NA>
#> 44                        <NA>
#> 45                        <NA>
#> 46                        <NA>
#> 47                        <NA>
#> 48                        <NA>
#> 49                        <NA>
#> 50                        <NA>
#> 51                        <NA>
#> 52                        <NA>
#> 53                        <NA>
#> 54                        <NA>
#> 55                        <NA>
#> 56                        <NA>
#> 57                        <NA>
#> 58                        <NA>
#> 59                        <NA>
#> 60                        <NA>
#> 61                        <NA>
#> 62        Naegleriasis (B60.2)
#> 63                        <NA>
#> 64                        <NA>
#> 65                        <NA>
#> 66                        <NA>
#> 67                        <NA>
#> 68                        <NA>
#> 69                        <NA>
#> 70                        <NA>
#> 71                        <NA>
#> 72                        <NA>
#> 73                        <NA>
#> 74                        <NA>
#> 75                        <NA>
#> 76                        <NA>
#> 77                        <NA>
#> 78                        <NA>
#> 79                        <NA>
#> 80                        <NA>
#> 81                        <NA>
#> 82                        <NA>
#> 83                        <NA>
#> 84                        <NA>
#> 85                        <NA>
#> 86                        <NA>
#> 87                        <NA>
#> 88                        <NA>
#> 89                        <NA>
#> 90                        <NA>
#> 91                        <NA>
#> 92                        <NA>
#> 93                        <NA>
#> 94                        <NA>
#> 95                        <NA>
#> 96                        <NA>
#> 97                        <NA>
#> 98                        <NA>
#> 99                        <NA>
#> 100                       <NA>
#>                                                                  codeFirst
#> 1   condition resulting from (sequela) the infectious or parasitic disease
#> 2                                                                     <NA>
#> 3                                                                     <NA>
#> 4                                                                     <NA>
#> 5                                                                     <NA>
#> 6                                                                     <NA>
#> 7                                                                     <NA>
#> 8                                                                     <NA>
#> 9                                                                     <NA>
#> 10                                                                    <NA>
#> 11                                                                    <NA>
#> 12                                                                    <NA>
#> 13                                                                    <NA>
#> 14                                                                    <NA>
#> 15                                                                    <NA>
#> 16                                                                    <NA>
#> 17                                                                    <NA>
#> 18                                                                    <NA>
#> 19                                                                    <NA>
#> 20                                                                    <NA>
#> 21                                                                    <NA>
#> 22                                                                    <NA>
#> 23                                                                    <NA>
#> 24                                                                    <NA>
#> 25                                                                    <NA>
#> 26                                                                    <NA>
#> 27                                                                    <NA>
#> 28                                                                    <NA>
#> 29                                                                    <NA>
#> 30                                                                    <NA>
#> 31                                                                    <NA>
#> 32                                                                    <NA>
#> 33                                                                    <NA>
#> 34                                                                    <NA>
#> 35                                                                    <NA>
#> 36                                                                    <NA>
#> 37                                                                    <NA>
#> 38                                                                    <NA>
#> 39                                                                    <NA>
#> 40                                                                    <NA>
#> 41                                                                    <NA>
#> 42                                                                    <NA>
#> 43                                                                    <NA>
#> 44                                                                    <NA>
#> 45                                                                    <NA>
#> 46                                                                    <NA>
#> 47                                                                    <NA>
#> 48                                                                    <NA>
#> 49                                                                    <NA>
#> 50                                                                    <NA>
#> 51                                                                    <NA>
#> 52                                                                    <NA>
#> 53                                                                    <NA>
#> 54                                                                    <NA>
#> 55                                                                    <NA>
#> 56                                                                    <NA>
#> 57                                                                    <NA>
#> 58                                                                    <NA>
#> 59                                                                    <NA>
#> 60                                                                    <NA>
#> 61                                                                    <NA>
#> 62                                                                    <NA>
#> 63                                                                    <NA>
#> 64                                                                    <NA>
#> 65                                                                    <NA>
#> 66                                                                    <NA>
#> 67                                                                    <NA>
#> 68                                                                    <NA>
#> 69                                                                    <NA>
#> 70                                                                    <NA>
#> 71                                                                    <NA>
#> 72                                                                    <NA>
#> 73                                                                    <NA>
#> 74                                                                    <NA>
#> 75                                                                    <NA>
#> 76                                                                    <NA>
#> 77                                                                    <NA>
#> 78                                                                    <NA>
#> 79                                                                    <NA>
#> 80                                                                    <NA>
#> 81                                                                    <NA>
#> 82                                                                    <NA>
#> 83                                                                    <NA>
#> 84                                                                    <NA>
#> 85                                                                    <NA>
#> 86                                                                    <NA>
#> 87                                                                    <NA>
#> 88                                                                    <NA>
#> 89                                                                    <NA>
#> 90                                                                    <NA>
#> 91                                                                    <NA>
#> 92                                                                    <NA>
#> 93                                                                    <NA>
#> 94                                                                    <NA>
#> 95                                                                    <NA>
#> 96                                                                    <NA>
#> 97                                                                    <NA>
#> 98                                                                    <NA>
#> 99                                                                    <NA>
#> 100                                                                   <NA>
#>     useAdditionalCode codeAlso sevenChr   level
#> 1                <NA>     <NA>     <NA> chapter
#> 2                <NA>     <NA>     <NA> section
#> 3                <NA>     <NA>     <NA>   diag1
#> 4                <NA>     <NA>     <NA>   diag2
#> 5                <NA>     <NA>     <NA>   diag2
#> 6                <NA>     <NA>     <NA>   diag2
#> 7                <NA>     <NA>     <NA>   diag1
#> 8                <NA>     <NA>     <NA>   diag2
#> 9                <NA>     <NA>     <NA>   diag3
#> 10               <NA>     <NA>     <NA>   diag3
#> 11               <NA>     <NA>     <NA>   diag3
#> 12               <NA>     <NA>     <NA>   diag3
#> 13               <NA>     <NA>     <NA>   diag3
#> 14               <NA>     <NA>     <NA>   diag3
#> 15               <NA>     <NA>     <NA>   diag3
#> 16               <NA>     <NA>     <NA>   diag2
#> 17               <NA>     <NA>     <NA>   diag2
#> 18               <NA>     <NA>     <NA>   diag2
#> 19               <NA>     <NA>     <NA>   diag2
#> 20               <NA>     <NA>     <NA>   diag1
#> 21               <NA>     <NA>     <NA>   diag2
#> 22               <NA>     <NA>     <NA>   diag2
#> 23               <NA>     <NA>     <NA>   diag2
#> 24               <NA>     <NA>     <NA>   diag3
#> 25               <NA>     <NA>     <NA>   diag3
#> 26               <NA>     <NA>     <NA>   diag3
#> 27               <NA>     <NA>     <NA>   diag3
#> 28               <NA>     <NA>     <NA>   diag3
#> 29               <NA>     <NA>     <NA>   diag3
#> 30               <NA>     <NA>     <NA>   diag3
#> 31               <NA>     <NA>     <NA>   diag2
#> 32               <NA>     <NA>     <NA>   diag2
#> 33               <NA>     <NA>     <NA>   diag1
#> 34               <NA>     <NA>     <NA>   diag2
#> 35               <NA>     <NA>     <NA>   diag2
#> 36               <NA>     <NA>     <NA>   diag2
#> 37               <NA>     <NA>     <NA>   diag2
#> 38               <NA>     <NA>     <NA>   diag2
#> 39               <NA>     <NA>     <NA>   diag2
#> 40               <NA>     <NA>     <NA>   diag1
#> 41               <NA>     <NA>     <NA>   diag2
#> 42               <NA>     <NA>     <NA>   diag2
#> 43               <NA>     <NA>     <NA>   diag2
#> 44               <NA>     <NA>     <NA>   diag2
#> 45               <NA>     <NA>     <NA>   diag2
#> 46               <NA>     <NA>     <NA>   diag2
#> 47               <NA>     <NA>     <NA>   diag2
#> 48               <NA>     <NA>     <NA>   diag2
#> 49               <NA>     <NA>     <NA>   diag3
#> 50               <NA>     <NA>     <NA>   diag3
#> 51               <NA>     <NA>     <NA>   diag2
#> 52               <NA>     <NA>     <NA>   diag2
#> 53               <NA>     <NA>     <NA>   diag1
#> 54               <NA>     <NA>     <NA>   diag2
#> 55               <NA>     <NA>     <NA>   diag2
#> 56               <NA>     <NA>     <NA>   diag2
#> 57               <NA>     <NA>     <NA>   diag2
#> 58               <NA>     <NA>     <NA>   diag2
#> 59               <NA>     <NA>     <NA>   diag2
#> 60               <NA>     <NA>     <NA>   diag2
#> 61               <NA>     <NA>     <NA>   diag2
#> 62               <NA>     <NA>     <NA>   diag1
#> 63               <NA>     <NA>     <NA>   diag2
#> 64               <NA>     <NA>     <NA>   diag2
#> 65               <NA>     <NA>     <NA>   diag2
#> 66               <NA>     <NA>     <NA>   diag2
#> 67               <NA>     <NA>     <NA>   diag2
#> 68               <NA>     <NA>     <NA>   diag2
#> 69               <NA>     <NA>     <NA>   diag2
#> 70               <NA>     <NA>     <NA>   diag2
#> 71               <NA>     <NA>     <NA>   diag2
#> 72               <NA>     <NA>     <NA>   diag3
#> 73               <NA>     <NA>     <NA>   diag3
#> 74               <NA>     <NA>     <NA>   diag3
#> 75               <NA>     <NA>     <NA>   diag2
#> 76               <NA>     <NA>     <NA>   diag1
#> 77               <NA>     <NA>     <NA>   diag2
#> 78               <NA>     <NA>     <NA>   diag2
#> 79               <NA>     <NA>     <NA>   diag2
#> 80               <NA>     <NA>     <NA>   diag2
#> 81               <NA>     <NA>     <NA>   diag2
#> 82               <NA>     <NA>     <NA>   diag2
#> 83               <NA>     <NA>     <NA>   diag2
#> 84               <NA>     <NA>     <NA>   diag1
#> 85               <NA>     <NA>     <NA>   diag2
#> 86               <NA>     <NA>     <NA>   diag2
#> 87               <NA>     <NA>     <NA>   diag3
#> 88               <NA>     <NA>     <NA>   diag3
#> 89               <NA>     <NA>     <NA>   diag2
#> 90               <NA>     <NA>     <NA>   diag2
#> 91               <NA>     <NA>     <NA>   diag3
#> 92               <NA>     <NA>     <NA>   diag3
#> 93               <NA>     <NA>     <NA>   diag3
#> 94               <NA>     <NA>     <NA>   diag2
#> 95               <NA>     <NA>     <NA>   diag2
#> 96               <NA>     <NA>     <NA>   diag1
#> 97               <NA>     <NA>     <NA> section
#> 98               <NA>     <NA>     <NA>   diag1
#> 99               <NA>     <NA>     <NA>   diag2
#> 100              <NA>     <NA>     <NA>   diag2
```
