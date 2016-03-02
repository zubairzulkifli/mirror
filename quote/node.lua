WIDTH=1080
HEIGHT=400
FONT_SIZE=60

gl.setup(WIDTH, HEIGHT)

local font = resource.load_font("HelveticaNeueLTStd-LtEx.otf")

util.file_watch("quote.txt", function(content)
    FONT_SIZE = 60
    quote = content
end)

function node.render()
    quote_width= font:width(quote, FONT_SIZE)
    while quote_width > WIDTH do
        FONT_SIZE = FONT_SIZE - 3
        quote_width= font:width(quote, FONT_SIZE)
    end
    start_y = (WIDTH - quote_width)/2
    font:write(start_y, (HEIGHT/2)-(FONT_SIZE/2), quote, FONT_SIZE, 1,1,1,1)
end
