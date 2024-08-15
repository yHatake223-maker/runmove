# ベースとなるPythonイメージを指定
FROM python:3.9-slim

# 作業ディレクトリを設定
WORKDIR /app

# ローカルのファイルをコンテナの作業ディレクトリにコピー
COPY . /app

# 必要なパッケージをインストール
RUN pip install --no-cache-dir -r requirements.txt

# アプリケーションを実行
CMD ["python", "app.py"]