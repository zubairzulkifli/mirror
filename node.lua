WIDTH=1080
HEIGHT=1920

gl.setup(WIDTH, HEIGHT)

    local font = resource.load_font("HelveticaNeueLTStd-LtEx.otf")
    local clockHeight = 100
    local clockWidth = font:width("55:55", clockHeight)
    
function node.render()
    local quotes = resource.render_child("quote")
    local weather = resource.render_child("weather")
    local clock = resource.render_child("clock")
    
    
    quotes:draw(0, 1520, 1080, 1920)        
    weather:draw(0,0, 400, 600)
    --clock:draw(780, 0, 1080, 200)
    clock:draw(WIDTH - clockWidth, 0, WIDTH, clockHeight)
end
