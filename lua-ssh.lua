--- lua-ssh
-- wait in seconds if needed
function wait(seconds)
    local start = os.time()
    repeat until os.time() > start + seconds
end
-- run expect from shell to access router
local t = os.execute("/root/expect/shell_ssh.sh 192.168.1.13 admin plunder")
ip.popen(t,  'r')
--print(t)
