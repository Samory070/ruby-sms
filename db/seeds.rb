titles = ["News","Sports", "Entertainment", "Tech", "Music", "Health", "Movies", "TV", "Fitness", "Food"]
messages = ["comment1", "comment2", "comment3", "comment4", "comment5", "comment6", "comment7", "comment8", "comment9", "comment10"]

10.times do |i|
  Post.create(
    title: titles.each {|title| print "title"},
    body: messages.each {|x| print "x"}
  )
end
