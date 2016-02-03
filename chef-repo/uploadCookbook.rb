system('knife cookbook upload apc2 --cookbook-path cookbooks')
system('knife node run_list add buildnode1 recipe[apc2]')
