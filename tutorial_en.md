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
At the moment our app is still static. This means that our name generator doesn't generate a name. Everytime we reload we get the name "Fluffy Giggle". But we want it to be a random name. What can we do?

You might have seen that in the backend file the name "Awesome Orange" is specified. Let's start by handing this name over to the front end.

Go to the frontend file and instead of `<strong>Fluffy Giggle</strong>` input the following line:  
`<strong><%= name %></strong>`

Reload the app in the browser. What changes do you see?

"Ok, but that is not random!" you might say now...
Well, let's make a first little randomizer. Read the following lines of code. What are your ideas what they do?

``` ruby
def choose_random_name
  ["Exciting Eraser", "Sunny Beans", "Rainbow Trumpet"].sample
end

get '/' do
  erb :index, :locals => { :name => choose_random_name }
end
```
Once you discussed the code head over to the backend file in your editor.
Add the code above. The code you see in the first 3 lines is called "method".

The code below starting with `get '/' do` is always executed when we reload our app in the browser.
Instead of "Awesome Orange" we want to "call" our method `choose_random_name` and it will give us a random name every time we reload the browser.

Great! We get a random name on reload! PARTY! :tada:

## Step 3: How the internet works

The Internet is a big network including many routers and computers, either clients or servers.
Client computers are mostly our personal computers or work computers. Servers are also normal computers but they are available 24 hours and most of them are accessible to many people.
![Clients and Servers make the internet](/pictures/internet.png)

When we want to see a website, e.g. `http://railsgirlsberlin.de/` then we do a GET **request** to the server that stores the files for the website. The server responds with the content and sends it back to us. This is called a **response**. Then our browser interprets the files and renders the website.
![request](/pictures/request.png)
![request](/pictures/response.png)

There are different types of requests. Today we will also learn about the POST request. The POST request enables us to send some data to the server, e.g. our name from an input field or our favorite color selected from a dropdown.

**GET Request**

In Sinatra, the web app framework we use, you defined what happened on a GET request by these lines:
``` ruby
get '/' do
  erb :index, :locals => { :name => choose_random_name }
end
```
Do you see the word "get" that starts the code block? Once our app receives a GET request all the code between `do` and `end` is executed. The index.erb file is send back and also a randomly chosen name.

**POST Request**

Now we would also like to send some data to our app. So we also need to implement a POST request code block.
Discuss the following code block:
``` ruby
post '/' do
  name = params[:first_name_input]

  erb :index, :locals => { :first_name_input => params[:first_name_input],
                           :name => name}
end

```

## Step 4: Adding more logic to the backend

  - Receive the first name from input field
  - get first letter of input
  - get first name from map
  - create name mixed from input and random last/name

## Step 5: Making our app look cool

  - include a css file
  - change background color
  - center content
  - use fancy font

## Step 5: Follow ups
  - [Get your stuff online](https://speakerdeck.com/malwine/how-do-i-get-my-stuff-on-the-internet)
