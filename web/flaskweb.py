# -*- coding: utf-8 -*-
# manman.py 一个简单的小程序
from flask import Flask
app = Flask(__name__)

@app.route('/')
def index():
    return '<h1>曼曼，二二无人无人v早上好，中午好，晚上好！<h1>'

if __name__ == '__main__':
    app.run(debug=True,port=8888)
