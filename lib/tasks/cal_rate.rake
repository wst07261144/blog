require 'csv'
namespace :cal_rate do
  task :migrate => :environment do
    csv_text = File.read("#{Rails.root}/lib/a.csv")
    csv = CSV.parse(csv_text, :headers => true)
    all_rate = []
    all = []
    csv.each do |d|
      n = 0
      buy_price = d['buy_price'].to_f
      sell_price = d['sell_price'].to_f * 0.98
      if sell_price >= 99
        n = (sell_price - buy_price - 15)/(1.4 * sell_price)
      else
        m = (99/sell_price).ceil
        n1 = (m * (sell_price - buy_price) -15)/(1.4 * sell_price)
        n2 = (sell_price - buy_price - 3)/(1.4 * sell_price)
        n = n1 < n2 ? n1 : n2
      end
      n = n.round(2) * 100
      all_rate << [d['sell_price'].to_f, d['buy_price'].to_f, n]
      all << n
    end
    binding.pry
  end
end
