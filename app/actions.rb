def humanized_time_ago(time_ago_in_minutes)
  if time_ago_in_minutes >= 60
    "#{time_ago_in_minutes / 60} hours ago"
  else
    "#{time_ago_in_minutes} minutes ago"
  end
end

get '/' do


  finstagram_post_shark = {
    username: "sharky_j",
    avatar_url: "https://live.staticflickr.com/65535/52358606250_01c667c5da_w.jpg",
    photo_url: "https://live.staticflickr.com/65535/52358421508_786aa10e2c_c.jpg",
    humanized_time_ago: humanized_time_ago(15),
    like_count: 0,
    comment_count: 1,
    comments: [{
      username: "sharky_j",
      text: "Out for the long weekend... too embarrassed to show y'all the beach bod!"
    }]
  }

  [finstagram_post_shark].to_s

end