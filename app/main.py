from flask import Flask, request, render_template
from werkzeug.middleware.shared_data import SharedDataMiddleware

app = Flask(__name__)
app.add_url_rule('/static/<filename>', 'static', build_only=True)
app.wsgi_app = SharedDataMiddleware(app.wsgi_app, {'/static':  'static'})

@app.route('/')
def hello_world():
    return render_template('index.html')


@app.route('/hello', methods=['GET', 'POST'])
def hello():
    if request. method == 'POST':
        name = request.form['name']
        return "Hello " + name
    return  render_template('hello.html')

if __name__ == '__main__':
    app.run()
