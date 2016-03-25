--shared by @blackhatchannel
do

local function run(msg, matches)

local bot_id = 164918427[id bot]

local fbotmain = 82970682[id admin]


Â Â Â Â if matches[1] == 'bye' and is_admin(msg) or msg.action.type == "chat_add_user" and msg.action.user.id == tonumber(bot_id) and not is_sudo(msg) then

--shared by @blackhatchannel
Â Â Â Â Â 
Â Â chat_del_user("chat#id"..msg.to.id, 'user#id'..bot_id, ok_cb, false)

Â Â Â Â elseif msg.action.type == "chat_del_user" and msg.action.user.id == tonumber(fbotmain) then

Â Â Â Â Â Â Â chat_add_user("chat#id"..msg.to.id, 'user#id'..fbotmain, ok_cb, false)

Â Â Â Â end

end

Â 

return {

Â Â patterns = {

Â Â Â Â "^[!/](bye)$",

Â Â Â Â "^!!tgservice (.+)$",

Â Â },

Â Â run = run

}

end

--shared by @blackhatchannel
