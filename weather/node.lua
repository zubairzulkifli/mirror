gl.setup(400, 600)

local font = resource.load_font("HelveticaNeueLTStd-LtEx.otf")
sunny = resource.load_image("sunny21.png")
cloudy = resource.load_image("cloudy19.png")
rainy = resource.load_image("rain3.png")

function node.render()
    
    font:write(0,0, "Samstag, 13 Februar 2016", 30, 1,1,1,1)
    sunny:draw(3,35, 38,70, 0.8)
    font:write(68,38, "so 8.1", 25, 1,1,1,0.8)
    
    cloudy:draw(3,75, 38,110, 0.8)
    font:write(68,78, "mo 6.2", 25, 1,1,1,0.8)
    
    rainy:draw(3,115, 38,150, 0.8)
    font:write(68,118, "di 11", 25, 1,1,1,0.8)

end
