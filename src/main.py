import json
import sys

try:
    with open(sys.argv[1]) as music_logs:
         for line in music_logs:
            print(json.loads(line))
            break
except FileNotFoundError:
    print("Please download the dataset using 'make fetch_data'")
