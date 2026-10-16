from fastapi import FastAPI

app = FastAPI()

@app.get("/")
async def root():
    return {"message": "Zumi 占位应用：仓库中没有实际代码，这里添加一个最小的 FastAPI 示例，方便本地或容器化运行。"}
