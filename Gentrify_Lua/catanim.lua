--[[
    LavamanSprite.lua - 2014
    
    Copyright Dejaime Antônio de Oliveira Neto, 2014
    
    Released under the MIT license.
    Visit for more information:
    http://opensource.org/licenses/MIT
]]

print("catanim.lua loaded")

require "love.graphics"


local image_w = 192 --This info can be accessed with a Löve2D call
local image_h = 96 --      after the image has been loaded. I'm creating these for readability.


return {
    serialization_version = 1.0, -- The version of this serialization process

    sprite_sheet = "resources/images/cat_anim.png", -- The path to the spritesheet
    sprite_name = "cat1", -- The name of the sprite

    frame_duration = 0.10,
    
    
    --This will work as an array.
    --So, these names can be accessed with numeric indexes starting at 1.
    --If you use < #sprite.animations_names > it will return the total number
    --      of animations in in here.
    animations_names = {
        "sit",
        "head_turn",
        "turn_right",
        "walk",
        "yawn",
        "lick_paw"
    },

    --The list with all the frames mapped to their respective animations
    --  each one can be accessed like this:
    --  mySprite.animations["idle"][1], or even
    animations = {
        sit = {
        --  love.graphics.newQuad( X, Y, Width, Height, Image_W, Image_H)
            love.graphics.newQuad( 0, 0, 16, 16, image_w, image_h ),
            love.graphics.newQuad( 16, 0, 16, 16, image_w, image_h ),
            love.graphics.newQuad( 32, 0, 16, 16, image_w, image_h ),
            love.graphics.newQuad( 48, 0, 16, 16, image_w, image_h ),
            love.graphics.newQuad( 64, 1, 16, 16, image_w, image_h ),
            love.graphics.newQuad( 80, 1, 16, 16, image_w, image_h )
        },
        
        head_turn = {
            love.graphics.newQuad( 0, 16, 16, 16, image_w, image_h ),
            love.graphics.newQuad( 16, 16, 16, 16, image_w, image_h ),
            love.graphics.newQuad( 32, 16, 16, 16, image_w, image_h ),
            love.graphics.newQuad( 48, 16, 16, 16, image_w, image_h ),
            love.graphics.newQuad( 64, 16, 16, 16, image_w, image_h ),
            love.graphics.newQuad( 80, 16, 16, 16, image_w, image_h ),
            love.graphics.newQuad( 96, 16, 16, 16, image_w, image_h ),
            love.graphics.newQuad( 112, 16, 16, 16, image_w, image_h )
        },
        
        turn_right = {
            love.graphics.newQuad( 0, 32, 16, 16, image_w, image_h ),
            love.graphics.newQuad( 16, 32, 16, 16, image_w, image_h ),
            love.graphics.newQuad( 32, 32, 16, 16, image_w, image_h ),
            love.graphics.newQuad( 48, 32, 16, 16, image_w, image_h ),
            love.graphics.newQuad( 64, 32, 16, 16, image_w, image_h ),
            love.graphics.newQuad( 80, 32, 16, 16, image_w, image_h )
        },
        
        walk = {
            love.graphics.newQuad( 0, 48, 16, 16, image_w, image_h ),
            love.graphics.newQuad( 16, 48, 16, 16, image_w, image_h ),
            love.graphics.newQuad( 32, 48, 16, 16, image_w, image_h ),
            love.graphics.newQuad( 48, 48, 16, 16, image_w, image_h ),
            love.graphics.newQuad( 64, 48, 16, 16, image_w, image_h ),
            love.graphics.newQuad( 80, 48, 16, 16, image_w, image_h )
        },
        
        yawn = {
            love.graphics.newQuad( 0, 64, 16, 16, image_w, image_h ),
            love.graphics.newQuad( 16, 64, 16, 16, image_w, image_h ),
            love.graphics.newQuad( 32, 64, 16, 16, image_w, image_h ),
            love.graphics.newQuad( 48, 64, 16, 16, image_w, image_h ),
            love.graphics.newQuad( 64, 64, 16, 16, image_w, image_h ),
            love.graphics.newQuad( 80, 64, 16, 16, image_w, image_h ),
            love.graphics.newQuad( 96, 64, 16, 16, image_w, image_h ),
            love.graphics.newQuad( 112, 64, 16, 16, image_w, image_h ),
            love.graphics.newQuad( 128, 64, 16, 16, image_w, image_h ),
            love.graphics.newQuad( 144, 64, 16, 16, image_w, image_h ),
			love.graphics.newQuad( 160, 64, 16, 16, image_w, image_h ),
			love.graphics.newQuad( 176, 64, 16, 16, image_w, image_h )
        },
        
        lick_paw = {
            love.graphics.newQuad( 0, 80, 16, 16, image_w, image_h ),
            love.graphics.newQuad( 16, 80, 16, 16, image_w, image_h ),
            love.graphics.newQuad( 32, 80, 16, 16, image_w, image_h ),
            love.graphics.newQuad( 48, 80, 16, 16, image_w, image_h ),
            love.graphics.newQuad( 64, 80, 16, 16, image_w, image_h ),
            love.graphics.newQuad( 80, 80, 16, 16, image_w, image_h ),
            love.graphics.newQuad( 96, 80, 16, 16, image_w, image_h ),
            love.graphics.newQuad( 112, 80, 16, 16, image_w, image_h ),
            love.graphics.newQuad( 128, 80, 16, 16, image_w, image_h ),
            love.graphics.newQuad( 144, 80, 16, 16, image_w, image_h ),
			love.graphics.newQuad( 160, 80, 16, 16, image_w, image_h ),
			love.graphics.newQuad( 176, 80, 16, 16, image_w, image_h )
        }
        
    } --animations

} --return (end of file)