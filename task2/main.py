import os
import time
import requests

number = os.getenv("CHECK_STR", 1)
print(f"{number=}")
time.sleep(5)
res = float(requests.get(f"http://course_api:5000/course/{number}").text)
result = f"{number} это {'число' if res else 'не число!'}"
print(result)

with open('result/result.txt', 'w+') as f:
    f.write(str(result))
