# ベースとなるPythonイメージを指定
FROM python:3.10-slim

# 作業ディレクトリを設定
WORKDIR /app

# Pythonの仮想環境を作成
RUN python -m venv venv

# 仮想環境をアクティブ化し、必要なパッケージをインストール
COPY requirements.txt requirements.txt
RUN . venv/bin/activate && pip install --upgrade pip && pip install -r requirements.txt

# 仮想環境をアクティブ化してインタラクティブシェルを起動
CMD ["/bin/bash", "-c", ". venv/bin/activate && exec /bin/bash"]

