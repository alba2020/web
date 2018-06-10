#!/bin/bash
gunicorn -c /etc/gunicorn.d/test hello:app
