local Timer = require "lib.timer"

local pre_state = {
  load = function(self)
    self.font = love.graphics.newFont("assets/1980_font.ttf", 40)
    love.graphics.setFont(self.font)

    self.logo = love.graphics.newImage("assets/erik.png")

    self.text = "YOU FOUND AN \"ERIK\" !"
    self.text_2 = "IT'S BAD. THIS DOESN'T LOOK LIKE A CHOCOLATE..."
    self.text_3 = "MAYBE YOU SHOULD CHECK THE OTHER MAZE ?"

    Timer.after(3.8, function()
      sm:setState("game_state")
    end)
  end,

  update = function(self, dt)
  end,

  draw = function(self, dt, alpha)
    love.graphics.clear(43 / 255, 40 / 255, 33 / 255, 1)

    love.graphics.setColor(121 / 255, 121 / 255, 121 / 255, alpha)
    love.graphics.print(self.text, (680 - self.font:getWidth(self.text)) / 2, 410)
    love.graphics.print(self.text_2, (680 - self.font:getWidth(self.text_2)) / 2, 440)
    love.graphics.print(self.text_3, (680 - self.font:getWidth(self.text_3)) / 2, 470)

    love.graphics.setColor(255, 255, 255, alpha)
    love.graphics.draw(self.logo, (680 - self.logo:getWidth()) / 2, (680 - self.logo:getHeight()) / 2 - 30)
  end,

  keypressed = function(self, key)
  end
}

return pre_state