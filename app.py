from fastapi import FastAPI
import uvicorn
import numpy as np
from mlib.mlib import predict

app = FastAPI()


@app.get("/")
async def root():
    return {"message": "hello root route"}


@app.get("/add/{num1}/{num2}")
async def add(num1: int, num2: int):
    total = num1 + num2
    return {"result": total}


@app.get("/subtract/{num1}/{num2}")
async def subtract(num1: int, num2: int):
    total = num1 - num2
    return {"result": total}


@app.get("/multiply/{num1}/{num2}")
async def multiply(num1: int, num2: int):
    total = num1 * num2
    return {"result": total}


@app.get("/divide/{num1}/{num2}")
async def divide(num1: int, num2: int):
    total = num1 / num2
    return {"result": total}


# test as get method firstly
@app.get(
    "/predict_next_price/{price1}/{price2}/{price3}/{price4}/{price5}/{price6}/{price7}"
)
async def predict_next_price(
    price1: int,
    price2: int,
    price3: int,
    price4: int,
    price5: int,
    price6: int,
    price7: int,
):
    input_prices = np.array([[price1, price2, price3, price4, price5, price6, price7]])
    next_price_predicted = predict(input_prices)
    return {"result": next_price_predicted}


if __name__ == "__main__":
    uvicorn.run(app, port=8080)
