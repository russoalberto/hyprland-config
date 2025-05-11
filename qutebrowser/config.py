config.load_autoconfig()

config.bind('<Alt-Shift-u>', 'spawn --userscript qute-keepassxc --key 3B631D6B36B3D8BF13A811D6F03FB0645B83A5A3', mode='insert')
config.bind('pw', 'spawn --userscript qute-keepassxc --key 3B631D6B36B3D8BF13A811D6F03FB0645B83A5A3', mode='normal')
config.bind('eu', 'edit-url', mode='normal')

c.colors.webpage.darkmode.enabled = True
c.content.blocking.method = 'both'
c.completion.height = '30%'
c.completion.scrollbar.width = 2
c.completion.shrink = True

config.source('gruvbox.py')
