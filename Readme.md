```
 ____  _  _  ____
(_  _)/ )( \(  __)
  )(  ) __ ( ) _)
 (__) \_)(_/(____)
 ____   __   __  __    _  _
(    \ / _\ (  )(  )  ( \/ )
 ) D (/    \ )( / (_/\ )  /
(____/\_/\_/(__)\____/(__/
  __  __ _  ____  ____  ____  ____   __    ___   __  ____  __  __   __ _
 (  )(  ( \(_  _)(  __)(  _ \(  _ \ /  \  / __) / _\(_  _)(  )/  \ (  ( \
  )( /    /  )(   ) _)  )   / )   /(  O )( (_ \/    \ )(   )((  O )/    /
 (__)\_)__) (__) (____)(__\_)(__\_) \__/  \___/\_/\_/(__) (__)\__/ \_)__)
```

It's not as bad as it sounds.

### Challenge
It takes more than 1 minute to write a blog post (not to mention that introverts need to prepare their brain to spaz out with the extros running around everywhere).

### Solution
You receive a phone call. A friendly robot asks you an open ended question:

* What's been on your mind today?
* What did you dream about?
* Describe the mood in your city lately.
* etc

Your 1 minute answer is transcribed and published to your blog.

### Application structure
Actors:

- The interstitial app hosted on heroku (app)
- Jekyll blog hosted on github pages (blog)
- Twilio (twilio)

Under the hood:

- The app wakes up and tells twilio to call you with a question.
- Twilio records the answer and hits the callback endpoint on the app
- The app grabs the recording and transcript of the call from twilio
- The app creates a jekyll-formatted post and commits it to the blog repo
- The app deploys the blog changes to github pages and "hello world"

Please feel free to run with [the project](https://github.com/eeeschwartz/interrogatorrr) on github. Contributions welcome.

### To be done
- Integrate with github api to automatically publish posts to Jekyll
- Integrate with [Mechanical Turk](https://www.mturk.com/mturk/) to get better transcriptions.
