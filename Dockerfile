# pyhton ver 3.7
FROM python:3.7
# 環境変数を設定
ENV PYTHONUNBUFFERED 1
# mkdir
RUN mkdir /code
# 作業ディレクトリ設定
WORKDIR /code
# requirements.txt /codeに入れる
ADD requirements.txt /code/
# pipのupgrade
RUN pip install --upgrade pip
# pipでrequirements.txtに指定されているパッケージを追加
RUN pip install -r requirements.txt
# ローカルディレクトリを/codeに追加
ADD . /code
