# README

# Title - Podsta
Instagram for podcasts

## Git Link
https://github.com/freddiebutcher/project_1

## Description
Problem - there is a lack of endorsement for individual podcast episodes. Instead, shows are generally recommended as a whole. There is also nowhere to currently find and receive individual recommendations for podcasts from people you follow, respect and are influenced by.

The app allows users to upload posts of their favourite podcast episodes, or episodes they have recently enjoyed, to share with their followers.


## Features
- Image upload from local files
- Direct link to podcast episode on Spotify
- Personalised feed of posts, based on followers

## Code Tour
# Sore bits
- Cloudinary caused a few consistent headaches.
- DB:Seed caused some initial issues.

# Cool beans
- This advanced code to personalise feed:

```    # Post.where("user_id IN (?) OR user_id = ?", following_ids, id)
    following_ids = "SELECT followed_id FROM relationships
                 WHERE  follower_id = :user_id"
    Post.where("user_id IN (#{following_ids})
                 OR user_id = :user_id", user_id: id)
  end

```   

# Database Structure
- Users
- Posts
- Following

## Bugs
NONE

## ToDo List
- General UX improvement
- More emphasis on influencer profiles
- Followers / following list
- Icons

## Upcoming Features
- Likes
- Share ability to other users
- Podcast charts based on number of posts
- Hashtags
- Post locations
- Hashtags
- Comments
- Save podcasts to podcast player
- API with Unsplash or Spotify to input image
- Use Spotify to search for info / links

## Technologies
- Built with , CSS, Ruby, Ruby on Rails and jQuery
- Also uses Cloudinary (semi)integrates with Spotify
- Hosted using Heroku
- Login with B-Crypt, front-end framework: Bootstrap and Icons by Font Awesome.

## Thank You
- Thanks to Rashida and Joel for all their assistance.
- Also much reference was made to guides produced by Lucy Ogden-Doyle as well as the Ruby on Rails 5 Tutorial by Michael Hartl (https://www.railstutorial.org/book/).

NOTES
- Spent about two hours trying to debug seeds.db
- Building frame of db first - similar to artists/works
- Forgot to add user images into DB
- Annotate doesn't work
- Issue with b-crypt
- Installed Bootstrap and Font Awesome
- Build show_follow page 14.26
