--shared by @blackhatchannel
if msg.action and msg.action.type then

Â Â Â Â local action = msg.action.type

Â Â Â Â if action == 'chat_add_user_link' then

Â Â Â Â Â Â local user_id = msg.from.id

Â Â Â Â if data[tostring(msg.to.id)]['settings']['lock_join'] == 'yes' then

Â Â if not is_momod(msg) then

Â Â chat_add_user_link('chat#id'..msg.to.id, 'user#id'..msg.from.id, ok_cb, true)

Â Â Â Â local msg = 'Join link is Locked !'

Â Â Â local receiver = msg.to.id

Â Â Â Â send_large_msg('chat#id'..receiver, msg.."\n", ok_cb, false)

Â Â 

Â Â Â Â Â Â end

Â Â Â end

end

return {

Â Â Â description = "to lock joining by link",

Â Â Â usage = "!lock join : no one can come to group by link",

Â Â Â patterns = {

Â Â Â Â Â Â "^!!tgservice (chat_add_user_link)$",

},

Â Â Â run = run

}
--shared by @blackhatchannel
