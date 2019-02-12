class Application

  @@items = ["Apples","Carrots","Pears"]
  @@cart = []
  
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path.match(/items/)
      @@items.each do |item|
        resp.write "#{item}\n"
      end
    elsif req.path.match(/search/)
      search_term = req.params["q"]
      resp.write handle_search(search_term)
    else
      resp.write "Path Not Found"
    end

    resp.finish
  end

  def handle_search(search_term)
    if @@items.include?(search_term)
      return "#{search_term} is one of our items"
    else
      return "Couldn't find #{search_term}"
    end
  end

  def create_cart(env)
    if req.path.match(/cart/)
      @@cart.each do |cart|
        resp.write "#{cart}\n"
    if @@cart == 0 
      resp.write "Your cart is empty"
    end
    end
    end
  end

  def add_cart(env)
    req.path.match(/add/)
    @@items.each do |item|
      @@cart << @@item
      return "You have #{@@item} in your cart"
    end
  end

end
