Bullet = Object:extend()

function Bullet:new(x, y)
    self.x = x
    self.y = y
    self.width = 5
    self.height = 20
    self.Spd = 500
end

function Bullet:update(dt)
    self.y = self.y - self.Spd *dt
    
    if self.y < 0 then
        --Restart the game
        play = false
    end
end

function Bullet:draw()
    lg.rectangle("fill", self.x, self.y, self.width, self.height)
end

function Bullet:checkCollision(obj)
    local self_left = self.x
    local self_right = self.x + self.width
    local self_top = self.y
    local self_bottom = self.y + self.height

    local obj_left = obj.x
    local obj_right = obj.x + obj.width
    local obj_top = obj.y
    local obj_bottom = obj.y + obj.height

    if self_right > obj_left and
    self_left < obj_right and
    self_bottom > obj_top and
    self_top < obj_bottom then
        self.dead = true
        Scr = Scr + 1
        --Increase enemy speed
        obj.Spd = obj.Spd + 50
    end
end