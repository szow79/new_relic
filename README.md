# README

This is the readme file for Si Cheng's New Relic code challenge submission.

## Setup

Please follow below steps to setup the project :)

**step 1 - there are two ways to download (skip to step 2 if you have already downloaded the files):**


* github
  * please slack or email me at szow79@gmail.com to add you as a project collaborator
  * open terminal and navigate to a directory (e.g. desktop/)
  * run `git clone https://github.com/szow79/new_relic.git` to download project to local
* google drive
  * download and unzip: https://drive.google.com/drive/folders/1_sTbpnelObh96Hn0U9kJT0Gzlnh_DqGE?usp=sharing

**step 2 - install (skip to step 3 if you have installed the project before)**
* navigate to project directory and run `bundle install` to install all the required gems to run the project
    * if bundler is not installed on your machine, run `gem install bundler` and then retry `bundle install`
* run `rake db:migrate` to run migrations on local database
* run `rake db:seed` to generate random records to local database

**step 3 - run server on localhost:**
* run `rails s` in terminal at project root
* open your browser and navigate to localhost:3000/customers

## Testing

For this project we use RSpec. Please make sure all the test cases are passed before pushing to master

**how to run test cases**

* navigate to project root and run `rspec spec/`

## Illustration / Diagram

![screen shot 2018-02-20 at 10 30 52 pm](https://user-images.githubusercontent.com/8421088/36466310-52a7f7f2-168e-11e8-968a-b7ee36732f88.png)
