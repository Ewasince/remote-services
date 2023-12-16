import logging
import os

logging.basicConfig(
    filename='logs.txt',
    format='%(levelname)s:\t%(message)s',
    level=logging.INFO
)

def factorial(n: int):
    return n if n == 1 else n * factorial(n - 1)


number = int(os.getenv("FACTORIAL_NUMBER", 1))
result = factorial(number)
logging.info(f"{result=}")
