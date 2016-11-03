# Learn to code

This is an interactive tutorial to get started learning coding. While you will go through the tutorial you will discover different technologies and solve nice tasks.

As an result you will have a cute app that generates your unicorn name.

What you will get to know:
  - HTML and CSS
  - Ruby and Sinatra Framework
  - How the internet works
  - How to research technical questions

Requirements:
  - Ruby is installed
  - Windows: Rails Console is installed

Tools:
  - **Editor** of choice (Sublime, Atom, TextEdit etc.)
  - **Console**: Terminal or Rails Command Line (Windows)
  - **Browser** of choice: Firefox, Chrome, Edge, Safari etc.

How you will go through this tutorial:
  - Ask questions anytime.
  - Support your partners in the group.
  - Try to research in the web.
  - Read carefully before you copy and paste :)

## Step 1: Set up your project

We are going to create 3 files:
  - Gemfile
  - index.html
  - name_generator.rb

We will set these files up and input a few lines. We check with every file if it works. Once we are done we will continue coding.

### The Gemfile
Create a new folder in the Console: `mkdir name-generator`
After that create a Gemfile: `touch Gemfile` after that open the Gemfile in your editor and input the following lines:
```
# Gemfile
source "https://rubygems.org"

gem 'sinatra'
```
Now head back to your console and run `bundle` in your folder. It will show you a few lines including `Bundle complete!`. If you see that: Perfect, you're done!
Coach: Explain in 2 sentences how the Gemfile is helpful.

### The index.html file
Now in the console create a new folder: `mkdir views`
Go to the folder: `cd views`
Create a new file called index.erb: `touch index.erb`

`Hint: ERB stands for embedded Ruby, this means that we can write HTML that also has ruby code in it. If you want to create a normal website without Ruby then you would use the ending .html like so: index.html`

Have a look at the following lines:
``` html
<!DOCTYPE HTML>
<html>
  <head>
    <title>The Best Name Generator</title>
  </head>
  <body>
    <h1>Unicorn Name Generator</h1>
    <p><%= name %><p>
  </body>
</html>
```
**Special task:** Talk about what you think these lines will do.
Open the file in your editor. Input these lines. Open the file in the browser. Check if your assumptions were right. We will talk more about this in Step 2.

### The name_generator.rb file

Create a name_generator.rb file in the console with `touch name_generator.rb` and open it in your editor.
Input the following lines of code:
``` ruby
require 'sinatra'

get '/' do
  erb :index, :locals => { :name => "Fluffy Giggle" }
end

```

In the console type `ruby name_generator.rb`. With this command we are starting our app on our computer. To see the app running we go to our browser and type as url: `localhost:4567`  
**Special task:** What has changed?
