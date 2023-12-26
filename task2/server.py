from fastapi import FastAPI
import re

pattern = re.compile("[+-]?(\d*[.])?\d+")


def is_digit(n: str):
    return bool(pattern.match(n))


app = FastAPI()


@app.get("/course/{var}")
async def get_course(var: str):
    return is_digit(var)
