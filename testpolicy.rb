default_source :chef_repo, "/Users/kdantuluri/masterclone"
default_source :supermarket

#default_source :supermarket, "https://cookbooks.src.ent.ea.com/minimart"

name 'testpolicy'

run_list ['syseng_base']

override['server']['type'] = "cloud"

########## ent cookbook ###########################
override['ent']['orwell']['consul'] = false
override['ent']['orwell']['no-uxdepot'] = true
override['ent']['orwell']['custom-output-json'] = true

override['ent']['orwell']['rmq']['host'] = 'rmqapi'

###################################################

#azure
override['ent']['orwell']['rmq']['domain'] = 'ec2.internal$'
