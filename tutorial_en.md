# Learn to code tutorial in English

Contents:

- Step 1: Set up your project
- Step 2: Making our app dynamic
- Step 3: How the internet works
- Step 4: Adding more logic to the backend
- Step 5: Making our app look cool
- Step 6: Follow ups

---

## Step 1: Set up your project

At first create a new folder in the console: `mkdir name-generator`  
Then we navigate into this folder: `cd name-generator`

In this folder we will create 3 files for a start:
  - Gemfile
  - index.erb
  - name_generator.rb

We will set these files up and input a few lines in every file. We'll check with every file if it works. Once we are done we will continue coding and dive deeper.

### The Gemfile

The first file we create is the Gemfile. You can imagine it as a toolbox where we can specify which additional software we want to use. In our case we want to use the web application framework Sinatra.

Create a Gemfile: `touch Gemfile`  
After that open the Gemfile in your editor and input the following lines:
```
# Gemfile
source "https://rubygems.org"

gem 'sinatra'
```
Now head back to your console and run `bundle` in your folder. It will show you a few lines including `Bundle complete!`. If you see that: Perfect, you're done!

### The frontend file

The second file we create is our frontend file. Almost all the code we input in this file will be visible in the Browser.

Have a look at the following lines. Talk about what you think these lines will do.
``` html
<!DOCTYPE HTML>
<html>
  <head>
    <title>The Best Name Generator</title>
  </head>
  <body>
    <h1>Unicorn Name Generator</h1>
    <p>Your name is:<p>
    <strong>Fluffy Giggle</strong>
  </body>
</html>
```

Once you talked about it head over into the console and create a new folder: `mkdir views`  
Navigate to the folder: `cd views`  
Create a new file called index.erb: `touch index.erb`  

Open the file in your editor. Open the file in the browser. Check if your assumptions were right.

`Hint: the file ending .ERB stands for embedded Ruby, this means that we can write HTML code which includes ruby code in it. If you want to create a normal website without Ruby then you would use the ending .html like so: index.html We will learn more about how we can embed Ruby in Step 2.`

### The backend file

The backend file contains Ruby code which is our logic part of the app. It will make our app 'react' to our input.

Create the backend file in the console with `touch name_generator.rb` and open it in your editor.
Input the following lines of code:
``` ruby
require 'sinatra'

get '/' do
  erb :index, :locals => { :name => "Awesome Orange" }
end

```

In the console type `ruby name_generator.rb`. With this command we are starting our app on our computer. To see the app running we go to our browser and type in the url bar: `localhost:4567`  

## Step 2: Making our app dynamic

## Step 3: How the internet works

## Step 4: Adding more logic to the backend

## Step 5: Making our app look cool


## Step 5: Follow ups
