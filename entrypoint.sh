#!/bin/sh
set -e  # Exit immediately if a command exits with a non-zero status.
gunicorn app:app --bind 0.0.0.0:${PORT:-8080}
