from flask import Flask, request
app = Flask(__name__)

@app.route('/chat', methods=['POST'])
def chat():
    user_message = request.json['message']
    # AI prediction
    return {"response": "Predicted response"}

if __name__ == '__main__':
    app.run(host='127.0.0.1', port=5000)