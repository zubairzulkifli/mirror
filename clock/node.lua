local font = resource.load_font("HelveticaNeueLTStd-LtEx.otf")
fontHeight = 40
width = font:width("55:55", fontHeight)

gl.setup(width, fontHeight)

util.file_watch("time.txt", function(content)
    time = content
end)

function node.render()
    font:write(0, 0, time, 40, 1,1,1,1)
end
