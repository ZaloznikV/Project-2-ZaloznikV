# Project 2: Initial exploration and data visualization

Databox company provided an anonymized and sampled dataset on their platform usage data. Our task was to get brief owerview of the data, explore it andvisualize some interesting things. 



## Instructions


I used both Python and R for work. At first I wanted to do data reprocessing in Python and then continue in R. Due to lack of tehnical ability in R, I went back to python in the meantime to preprocess and to R for visualizations. All aditional instructions are in notebooks. 

- First preproccesing (adding headers to some .csv files) was done in the first part of jupyter notebook. 
- After that, it's time to run seperate R script "plot1.R", to create the first visualization "events_over_time.png". 
- Afterwards it's time to run "project-2.rmd" R markdown. Twice in between you must go back to jupyter notebook to run some additional preprocessing. This is in line 225 and 285 of R markdown file.

Visualizations that were not used in report were deleted or commented.

Used data is available here: https://drive.google.com/file/d/1xlBq18Ljh9fZ_o_KXaFuMe4fId9waS3G/view and must be extracted into folder. 

Edited data (added headers,...) is in events_signups.rar

## Environment setup

- conda create --name project_2
- conda activate project_2
- conda install python=3.7
- conda install jupyter notebook
- ipython kernel install --name project_2 --user
- conda install pandas
- conda install numpy
- conda install matplotlib
- conda install scipy
- conda install seaborn


- basic R, version 4.1.2.


