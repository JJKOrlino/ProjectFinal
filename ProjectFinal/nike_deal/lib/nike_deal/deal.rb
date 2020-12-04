class NikeDeal::Deal
    attr_accessor :name, :price, :availability, :url,

    def self.today
        #Scrape data
        self.scrape_deals
    end

    def self.scrape_deals
        deals = []

        deals << self.scrape_nike
        deals << self.scrape_nike2
        deals << self.scrape_nike3

        deals
    end

    def self.scrape_nike
        doc = Nokogiri::HTML(open("https://electronics.woot.com/offers/kodak-luma-350-portable-smart-projector?ref=w_gw_dd_2"))
        
        deal = self.new
        deal.name = doc.search("#product-info h1").text
        deal.price = doc.search("#product-info span.price").text
        deal.url = "https://meh.com"
        deal.availability = true

        deal
    end

    def self.scrape_nike2
        doc = Nokogiri::HTML(open("https://tools.woot.com/offers/masterplug-3-extension-cord-reel-lead-only-4?ref=w_cnt_wp_0_1"))
        
        deal = self.new
        deal.name = doc.search("#product-info h1").text
        deal.price = doc.search("#product-info span.price").text
        deal.url = "https://meh.com"
        deal.availability = true

        deal
    end

    def self.scrape_nike3
        doc = Nokogiri::HTML(open("https://sport.woot.com/offers/mens-gildan-sweatpants-4-pack-1?ref=w_gw_dd_5"))
        
        deal = self.new
        deal.name = doc.search("#product-info h1").text
        deal.price = doc.search("#product-info span.price").text
        deal.url = "https://meh.com"
        deal.availability = true

        deal
    end
end
