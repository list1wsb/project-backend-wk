from flask import Flask, request, render_template

app = Flask(__name__)

@app.route('/')
def hello_world():
    return 'Hello World!'

@app.route('/hello', methods=['GET', 'POST'])
def hello():
    if request. method == 'POST':
        name = request.form['name']
        return "Hello " + name
    return  render_template('hello.html')

if __name__ == '__main__':
    app.run()
