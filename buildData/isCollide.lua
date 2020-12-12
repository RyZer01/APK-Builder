DB = Object:extend()

function DB:apply(x1, y1, x2, y2)
    self.y1 = y1
    self.y2 = y2
    self.x1 = x1
    self.x2 = x2
    return math.sqrt( (self.y2 - self.y1)^2 + (self.x2 - self.x1)^2 )
end