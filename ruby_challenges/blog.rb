class Blog
  @@blog_count = 0
  @@all_posts  = []

  def store_blawg
    post = {
        title:   @title,
        date:    @date,
        content: @content,
        author:  @author
    }
    @@all_posts << post
    @@blog_count += 1
  end

  def show_me_the_money?
    puts "Would you like to see your amazing blog posts?(Y or N)"
    answer = gets.chomp.downcase
    if answer == 'y'
      release_the_blawg
    else
      puts 'Thanks for using Moar Blawgs™ by Eben. Please blog responsibly!'
    end

  end

  def release_the_blawg
    fancy = '***********'
    @@all_posts.each do |blog_post|
      puts "#{fancy}Title: #{blog_post[:title]}#{fancy}"
      puts "#{fancy}Author: #{blog_post[:author]}#{fancy}"
      puts "#{fancy}Date: #{blog_post[:date]}#{fancy}"
      puts blog_post[:content]
    end
  end

end


class BlogBlueprint < Blog
  def initialize
    @@blog_count += 1
  end

  def blog_start
    puts
  end

  def set_title
    @title = puts 'What is the title of the post?'
    @title = gets.chomp
  end

  def get_title
    @title
  end

  def set_creation_date
    @date = Time.now.strftime('Published on %B %e, %Y at %I:%M %p')
  end

  def get_create_date
    @date
  end

  def set_author
    puts 'Who is writing this post?'
    @author = gets.chomp
  end

  def get_author
    @author
  end

  def set_content
    puts 'Please give me some content!'
    @content = gets.chomp
  end

  def get_content
    @content
  end

  def greeting
    if @@blog_count == 0
      puts "It looks like you are ready to write some posts! Let's get started!"
    else
      puts 'Blog'
    end
  end

  def moar_blogs
    puts 'Would you like to add another blog post?[Y/N]'
    moar_blawgs = gets.chomp.downcase
    if moar_blawgs == 'y'
      nu_blawg
    else
      show_me_the_money?
    end
  end

  def nu_blawg
    greeting
    blawg = BlogBlueprint.new
    blawg.set_author
    blawg.set_title
    blawg.set_content
    blawg.set_creation_date
    blawg.store_blawg
    moar_blogs
  end
end

blog = BlogBlueprint.new
blog.nu_blawg