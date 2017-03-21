9.1 How the web works

Release 0: View HTTP Requests

1. Common HTTP status codes - part of of the HTTP/1.1 standard

The first digit of the status code specifies one of five standard classes of responses.

1 1xx Informational responses.   Request was received and understood.
                                  ex 100 - continue, 102 - processing
2 2xx Success.                    ex 200 - ok, 201 - created, 202 - accepted
3 3xx Redirection.      Client must take additional action to complete request
                                  ex 302 - found temp redirect
4 4xx Client errors.   Advises explanation and if it is perm or temp.
                                  ex 400- bad request, 403 forbidden, 404 not found
5 5xx Server error.               ex 500- internal server error, 502 - bad gateway
6 Unofficial codes. 6.1 Internet Information Services. 6.2 nginx. 6.3 Cloudflare.
7 See also.
8 Notes.
9 References
10 External links


Most common is 200 - reps a successful response.
403, 404, 500, 503, 504 common error codes
404- not found.
403- forbidden.


2. Diff between a GET request and a POST request / when is each used:

GET- the server wants to retrieve something, an image, a file etc. Requests data from a specified resource. BUT you are limited to text that can fit into a URL.
        Additional factors:
        - can have length restrictions
        - can be bookmarked
        - can be in user's browser history
        - should never be used with sensitive data


POST - query string (name/value pairs) sent in the HTTP message body of a POST request. You can send much more data than a GET (ex. a video)
        Additional factors:
        - never in browser history
        - no length restrictions
        - cannot be bookmarked

3. What is a COOKIE ?
Cookies are small files which are stored on a user's computer designed to hold a modest amount of data specific to the particular client or website, and can be accessed by either web server or client computer. Basically how websites can track what you are looking at or customer purchasing behavior. When ads seems to be "chasing" you.


Release 1: Research Web Servers

**Background**
A server is a connection point for several clients, that will handle their requests.
A client is a software that connect to the server to perfrom actions. The client provides a user interface that allows users to carry out actions.


