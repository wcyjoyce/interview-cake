# TODO:
# Write a method that reduces the amount of space of the "visitor" helper method.

def visited(url)
  visited = []
  if url =~ /\.^*(...)*\./
    p true
  else
    p false
  end
  # get the middle section of the url (so that it strips things like "www." and ".com ")
  visited << url unless visited.include?(url)
  # p url
end

uk = "http://www.google.co.uk"
global = "http://www.google.com"
hk = "http://www.google.com.hk"

visited(uk)
visited(global)
visited(hk)
visited("www.google")

# ANSWER:

class Trie
  def initialize
    @root_node = {}
  end

  def add_word(word)
    current_node = @root_node
    is_new_word = false

    word.each_char do |char|
      if !current_node.key? char
        is_new_word = true
        current_node[char] = {}
      end
      current_node = current_node[char]
    end

    if !current_node.key? "end of word"
      is_new_word = true
      current_node["end of word"] = {}
    end

    return is_new_word
  end
end
