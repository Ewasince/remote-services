import logging
import os
import string
import random

chars = string.printable[:-6]

logging.basicConfig(
    filename='logs.txt',
    format='%(levelname)s:\t%(message)s',
    level=logging.INFO
)

def password(len_):
    return ''.join(random.choices(chars, k=len_))


length = int(os.getenv("PASS_LEN", 5))
result = password(length)
logging.info(f"{result=}")
