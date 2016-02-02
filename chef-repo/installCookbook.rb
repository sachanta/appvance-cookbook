command = 'knife cookbook site download ' + ARGV[0] + ' ' + ARGV[1]
system(command)

command1 = 'tar xvf ' + ARGV[0] + '-' + ARGV[1] + '.tar.gz -C cookbooks'
system(command1)

command2 = 'knife cookbook upload ' + ARGV[0] + ' --cookbook-path cookbooks'
system(command2)
