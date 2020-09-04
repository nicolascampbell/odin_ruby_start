def stock_picker(stocks)
    ordered_stocks=stocks.sort;
    index_buy=0;
    index_sell=0;
    max_gain=0;
    for i in 0...stocks.length
        
