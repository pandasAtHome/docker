from flask import Flask, jsonify, request

app = Flask(__name__)

@app.route('/', methods = ['GET', 'POST'])
def run():
    param = dict()
    if request.args:
        param.update(request.args)
    if request.form:
        param.update(request.form)
    return jsonify(param)
#     return 'success'


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
