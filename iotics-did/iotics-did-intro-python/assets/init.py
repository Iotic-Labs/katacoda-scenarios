import os
import pprint

os.environ["RESOLVER"] = "https://did-kata.dev.iotics.com"

os.system("pip install -f /tmp iotic.lib.identity")

from iotic.lib.identity import *
from pprint import pprint
