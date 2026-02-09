from fasthtml.common import *

app, rt = fast_app(live=True)

@rt("/")
def get():
    return Titled("Olá mundo, FastHTML!", P("Esta é a minha primeira página com FastHTML!"), P("Estou adorando aprender FastHTML."))

if __name__ == "__main__":
    serve(host="0.0.0.0", port=5001)