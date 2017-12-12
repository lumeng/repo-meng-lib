#!/usr/local/bin/python3

__author__ = 'meng'


# Install
#     $ brew install python
#     $ pip install pandas
#
# from nltk.corpus import gutenberg
#
# Packages useful data analysis:
#
# Pandas, scikit-learn, nltk, MRJob, matplotlib
#

import pandas as pd

car_eval = pd.read_csv('./car_data.txt')

car_eval.head()
