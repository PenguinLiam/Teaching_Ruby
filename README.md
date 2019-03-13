# Teaching_Ruby
## How to clone the repository
Create a new project on codio using 'ruby + rails' and in the project open a terminal. Into the terminal, type/copy the following command:
```
git clone https://github.com/PenguinLiam/Teaching_Ruby.git
```
This will copy the git repository onto your codio project. Then type/copy the following command into the terminal:
```
cd Teaching_Ruby
```
This will change you into the directory to run the project

## Updating the project
When there is a new version of the project on git, go into the codio terminal go into the Teaching_Ruby repository using:
```
cd Teaching_Ruby
```
If you have made any changes to the project, there will be a conflict between the two versions. You can either do:
```
git reset --hard HEAD
```
This will unstage any changes you have made. If you want to keep the changes you have made type:
```
git checkout myWork
git add *
git commit -m "Added my own work the the repository"
git checkout master
git pull
```
This will add your changes to a different branch and not add it to the master branch and allow you to pull the new updated project from git.

## Running the basic ruby project
To run the project, enter the following command in the terminal:
```
ruby app.rb
```

## Good projects to start learning basic ruby with
- Coin Toss:
    - Uses random in ruby
    
- Rock, Paper, Scissors:
    - Uses random in ruby
    - Uses while loops
    - Uses if/else statements
    - Uses variables
    
- Number Guessing Game:
    - Uses random in ruby
    - Uses number comparison
    - Uses if/else statements
    - Uses while loops
    - Can use methods

## Using the basic sinatra example
Before you can run the sinatra application, you need to install some gems - mainly sinatra. I set up a gem file so you just need to enter into the terminal:
```
sudo gem install bundle
bundle install
```
This will install all the gems that are needed for the project. You then need to go to the URL for the page. When you load up the codio terminal, there will be something that looks like this:
```
 * Documentation:  https://help.ubuntu.com/
 *
 * Welcome to the Codio Terminal!
 *
 * README: https://codio.com/docs/ide/boxes/
 *
 * Your Codio Box domain is: extend-atomic.codio.io[:1024-9999]
 *
```
You want to take the bit after 'Your Codio Box domain is:' and enter it into the URL bar of a new tab with the suffix :4567. For this example we enter:
```
extend-atomic.codio.io:4567
```

This will show a 502 error because we havent started the server yet. To start the server, go back into the codio terminal and type:
```
ruby basicSinatra.rb
```
When you go back to the tab for the website and refresh it, the page will show.

## Using the sinatra streaming example

*TO BE ADDED*
