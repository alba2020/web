def app_example(environ, start_response):
    status = '200 OK'
    headers = [
        ('Content-Type', 'text/plain')
    ]
    body = b'Hello, world!'
    start_response(status, headers)
    return [body]

def app(environ, start_response):
    status = '200 OK'
    headers = [
        ('Content-Type', 'text/plain')
    ]

    q = environ['QUERY_STRING']
    start_response(status, headers)
    return [ chunk.encode() + b'\n' for chunk in q.split('&') ]
