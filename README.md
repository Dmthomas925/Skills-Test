# AnalyticCodebase

ReportingSystem

## Installation

``` r
Sys.setenv(GITHUB_PAT = "TODO_ADD_YOUR_GITHUB_PAT");
devtools::install_github("metrc/AnalyticCodebase", upgrade="never", dependencies="Depends");
```

## Type

Package

## Title

METRC Redcap Analytic Codebase

## Version

0.3.1

## Author

Elias Weston-Farber

## Maintainer

Elias Weston-Farber [eweston4\@jhu.edu](mailto:eweston4@jhu.edu){.email}

## Description

### Data Analysis Skill Test

In this task, your goal is to create a function that adds a column named complications_number to the analytic dataset.

1.  Clone this repository and set your working directory to the repository root.

2.  Run the script weight_bearing_analytic_env.R. This will install the necessary packages and set up the Weight Bearing project.

3.  Copy the 'weight_bearing_data.feather' file into the 'skills_test/weight bearing-cached_data' folder. Do NOT commit this file to the repository. Then run the weight bearing_analytic_env.R file with the added PAT from the email.

4.  Create an R function pasteur_complications_number() that calculates the number of complications for each study_id. This function should be written from scratch and integrated at the suitable spot within a .R file in the R folder.

5.  Save your visualization code in the 'skills test' directory. Generate one static and one interactive visualization using any subset of data you prefer.

6.  Once your function is complete, ensure it runs smoothly when the 'weight_bearing_analytic_env.R' file is sourced.

7.  Update this README with a description of your process and decisions made.

8.  Draft an email to a hypothetical boss, summarizing your accomplishments and put that at the bottom of the README.

While you work on this task, make sure to refer to the documentation for the AnalyticCodebase package and the Analytic System. It's good practice to seek advice or clarifications when the documentation does not cover your questions. Remember, the purpose of this test is not just to assess your coding skills, but also your problem-solving ability and how you leverage available resources.



## Depends:

AnalyticSystem, tidyverse, httr, feather, googlesheets4, igraph, writexl

## Encoding

UTF-8

## LazyData

true

## RoxygenNote

7.1.1


Process and decisions made:

Initially I spent a lot of time reviewing all of the documents and datasets available to me, trying to get as full of an understanding of the data and codebase as I could. By looking at the codebook and code for the complication_data function, I knew I needed data from the cfu_comp_prompt field to determine how many complications each study_id had. The code used to create the complications_check_boxes_and_other_cols dataframe showed one pathway to identifying and adding up complications for each study_id, but I chose to calculate the sums in a different way to avoid any appearances of copying and demonstrate my ability to create functions from scratch. As an alternative, I calculated the number of complications per row, grouped the data by study_id, and then added up how many complications each study_id had. 


Hypothetical email:

Hello ____,

Attached to this email will be the final products of my work pertaining to the Weight Bearing project's analytic dataset. 

I was able to create a function, pasteur_complications_number, which will calculate the total number of complications per study_id. This function creates a column ready to be added to the analytic dataset that displays the number for each study_id. You can find description and underlying code for this function at the bottom of the pasteur_code.R file. 

Furthermore, I have created two graphics which help visualize some of the complication data. The first graphic is a stacked histogram, which divides the data into three bars corresponding to the three levels of severity present in the complication data. The histogram also shows the makeup of each severity group by the six levels of relatedness. The second graphic is simply a pie chart visualizing what proportion of the complications each diagnosis type makes up.

Please reach out if you have any questions, or if there are any issues with the work I have done.

Best,
-David
