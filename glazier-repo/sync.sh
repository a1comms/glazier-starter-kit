#!/bin/bash

gsutil -m -h "Cache-Control:private, max-age=0, no-transform" rsync -r ./ gs://a1comms-glazier-config/
