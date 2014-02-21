

one_focus = Post.create(title: "One Focus", content: "Don't ask me to focus on more than one thing. ")
two_focus = Post.create(title: "Two Focus", content: "Focusing on two things drives me totally nuts.")

add   = Tag.create(text: "ADD"   )
anger = Tag.create(text: "anger" )

one_focus_add   = PostTag.create(post_id: one_focus.id, tag_id:   add.id)
one_focus_anger = PostTag.create(post_id: one_focus.id, tag_id: anger.id)

two_focus_add   = PostTag.create(post_id: two_focus.id, tag_id:   add.id)
two_focus_anger = PostTag.create(post_id: two_focus.id, tag_id: anger.id)

#---------------------#

simon = User.create(email: "simon@serenity.gtx",  password_hash: User.hashPassword("password"))
book  = User.create(email: "book@serenity.gtx" ,  password_hash: User.hashPassword("password"))