# Zumi — minimal deployment scaffold

此仓库原本没有应用代码；我已添加一个最小的 FastAPI 示例应用以及 Dockerfile，便于在本机或容器中运行进行测试。

包含文件：
- app/main.py — 最小 FastAPI 应用，根路径返回简单 JSON。
- requirements.txt — Python 依赖清单（fastapi, uvicorn）。
- Dockerfile — 构建容器镜像的说明。
- .dockerignore — Docker 构建忽略规则。

本地运行（需要 Python 3.11+）：
1. 安装依赖：
   python -m venv .venv
   source .venv/bin/activate   # Windows: .venv\Scripts\activate
   pip install -r requirements.txt
2. 运行：
   uvicorn app.main:app --reload --host 0.0.0.0 --port 8000
3. 打开浏览器访问 http://localhost:8000

使用 Docker：
1. 构建镜像：
   docker build -t zumi-sample .
2. 运行容器：
   docker run -p 8000:8000 zumi-sample
3. 打开浏览器访问 http://localhost:8000

如果你希望使用 Node.js、Go、或把示例改成更贴近原项目的实现，请回复我你的偏好，我可以替换或创建 PR。
