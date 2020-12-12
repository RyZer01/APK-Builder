Enemy = Object:extend()

function Enemy:new(x, y, width, height)
    self.x = x
    self.y = y
    self.width = width
    self.height = height
    self.Spd = 500
end

function Enemy:update(dt)
    self.x = self.x + self.Spd *dt
    
    if self.x < 0 then
        self.Spd = -self.Spd
    
    elseif self.x > lg.getWidth() - self.width then
        self.Spd = -self.Spd
    end
end

function Enemy:draw()
    lg.rectangle("fill", self.x, self.y, self.width, self.height)
end
