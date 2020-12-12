Player = Object:extend()

function Player:new(x, y, width, height)
    self.x = x
    self.y = y
    self.width = width
    self.height = height
    self.Spd = 500
end

function Player:update(dt)
    if MovRight then
        self.x = self.x + self.Spd *dt
    elseif MovLeft then
        self.x = self.x - self.Spd * dt
    end
       if self.x < 0 then
        self.x = 0
    elseif self.x > lg.getWidth() - self.width then
        self.x = lg.getWidth() - self.width
    end
    
end

function Player:draw()
    lg.rectangle("fill", self.x, self.y, self.width, self.height)
end

function Player:onTouch(id, x,y)
    if x < 150 then
        MovLeft = true
    elseif x > 150 and x < 300 then
        MovRight = true
    end
    ---------
    if x > 600 then
        table.insert(Bullets, Bullet(self.x + self.width/2, self.y))
    end
end

function Player:onRelease(id, x, y)
    if x < 400 then
        MovRight = false
        MovLeft = false
    end
end