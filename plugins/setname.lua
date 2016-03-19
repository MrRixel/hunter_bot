local function run(msg, matches)
 if not is_momod(msg) then
    return nil
  end
 
 local text = matches[1]
 local chat = 'channel#id'..msg.to.id
   
   if msg.to.type == 'channel' then
     rename_channel(chat, text, ok_cb, false)
   return "Group Name Has Been Changed to "matches [1]""
   end
end
 
 return {
   patterns = {
     "^[/!]setname +(.+)$"
  }, 
   run = run 
 }
