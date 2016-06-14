--[[
    AnimatedSprite.lua - 2014
    
    Copyright Dejaime Antônio de Oliveira Neto, 2014
    
    Released under the MIT license.
    Visit for more information:
    http://opensource.org/licenses/MIT
]]
print("AnimatedSprite.lua loaded")

require "love.graphics"

local _newImage = love.graphics.newImage -- the old function
function love.graphics.newImage(...) -- new function. The ... is to forward any parameters to the old function
	local img = _newImage(...)
	img:setFilter('nearest', 'nearest')
	return img
end

local ManagerVersion = 1.0

sprite_bank = {} --Map with all the sprite definitions
image_bank = {} --Contains all images that were already loaded

function LoadSprite (sprite_def)

    if sprite_def == nil then return nil end
    
	local old_sprite = sprite_bank [sprite_def]
    --Load the sprite definition file to ensure it exists

    sprite_bank [sprite_def] = require(sprite_def)
    
    --Check the version to verify if it is compatible with this one.
    if sprite_bank[sprite_def].serialization_version ~= ManagerVersion then
        print("Attempt to load file with incompatible versions: "..sprite_def)
        print("Expected version "..ManagerVersion..", got version "
                ..sprite_bank[sprite_def].serialization_version.." .")
        sprite_bank[sprite_def] = old_sprite -- Undo the changes due to error
        -- Return old value (nil if not previously loaded)
        return sprite_bank[sprite_def]
    end
    
    
    --All we need to do now is check if the image exist
    --  and load it.
    
    --Storing the path to the image in a variable (to add readability)
    local sprite_sheet = sprite_bank[sprite_def].sprite_sheet

    --Load the image.
    local old_image = image_bank [sprite_sheet]
    image_bank [sprite_sheet] = love.graphics.newImage(sprite_sheet)
	
        
    --Check if the loaded image is valid.
    if image_bank[sprite_sheet] == nil then
        -- Invalid image, reverting all changes
        image_bank [sprite_sheet] = old_image   -- Revert image
        sprite_bank[sprite_def] = old_sprite    -- Revert sprite
        
        print("Failed loading sprite "..sprite_def..", invalid image path ( "
                ..sprite_sheet.." ).")
    end
    
    return sprite_bank [sprite_def]
end

function GetInstance (sprite_def)

    if sprite_def == nil then return nil end -- invalid use
    
    if sprite_bank[sprite_def] == nil then
        --Sprite not loaded attempting to load; abort on failure.
        if LoadSprite (sprite_def) == nil then return nil end
    end
    
    --All set, return the default table.
    return {
        sprite = sprite_bank[sprite_def], --Sprite reference
        --Sets the animation as the first one in the list.
        curr_anim = sprite_bank[sprite_def].animations_names[1],
        curr_frame = 1,
        elapsed_time = 0,
        size_scale = 2,
        time_scale = 1,
        rotation = 0,
        flip_h = 1,
        flip_v = 1
    }
end

function UpdateInstance(spr, dt)
    --Increment the internal counter.
    spr.elapsed_time = spr.elapsed_time + dt

    --We check we need to change the current frame.
    if spr.elapsed_time > spr.sprite.frame_duration * spr.time_scale then
        --Check if we are at the last frame.
        --  # returns the total entries of an array.
        if spr.curr_frame < #spr.sprite.animations[spr.curr_anim] then
            -- Not on last frame, increment.
            spr.curr_frame = spr.curr_frame + 1
        else
            -- Last frame, loop back to 1.
            spr.curr_frame = 1
        end
        -- Reset internal counter on frame change.
        spr.elapsed_time = 0
    end
end

function DrawInstance (spr, x, y)

    love.graphics.draw (
        image_bank[spr.sprite.sprite_sheet], --The image
        --Current frame of the current animation
        spr.sprite.animations[spr.curr_anim][spr.curr_frame],
        x,
        y,
        spr.rotation,
        spr.size_scale,
        spr.size_scale,
        flip_h,
        flip_v
    )

end