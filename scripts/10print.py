# https://www.makeartwithpython.com/blog/10-print-in-python/

from random import choice
print(''.join(choice(('\\', '/')) for i in range( 10000)))
