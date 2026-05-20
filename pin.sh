#!/bin/sh

# description
# copy pyke pyswip qutip skfuzzy

alias pip=pip3

echo_title(){
    echo "======== $1 ========"
}

pin(){
    pip install --user $@ --break-system-packages -i https://pypi.tuna.tsinghua.edu.cn/simple
    # http://mirrors.aliyun.com/pypi/simple
}

pi(){
    pip install --user $@ --break-system-packages
}

if [ -z $1 ]
then
    echo_title "numerical computing"
    pin numpy scipy sympy matplotlib dask numba seaborn arviz
    echo_title "data analysis/machine learning"
    pin pandas scikit-learn networkx statsmodels pymc3 efficient-apriori hmmlearn scikit-opt sktime tslearn sqlearn gplearn sklearn-genetic tpot
    pin tensorflow keras torch torchvision
    echo_title "optimization"
    pin pulp deap
    # echo_title "data base/store"
    # pin PyMongo dataset PyMySQL SQLAlchemy
    echo_title "text/nlp"
    pin gensim pyparsing jieba nltk regrex fuzzywuzzy sumy spacy pypinyin chardet
    echo_title "web"
    pin lxml bs4 requests fake-useragent selenium requestium helium wget envelopes imbox furl python-nmap scapy wikipedia newspaper3k arxiv PyGithub
    pin fastai starletten uvicorn
    echo_title "Markdown/HTML/Template"
    pin mistletoe html2text mistune jinja2 tem-py handout
    echo_title "Image/media"
    pin Pillow pytesseract opencv-python moviepy scikit-image imutils pyqrcode
    echo_title "knowledge"
    pin owlready2 kanren
    echo_title "file tools"
    pin pyyaml texsoup xlrd xlwt pylatex pybtex openpyxl pypdf pdfly pdfplumber pdfminer.six PyMuPDF python-docx
    echo_title "tools"
    pin jupyter jupyterlab
    pin pylint sphinx jedi pyflakes pyreverse
    pin sh fire apscheduler pendulum dateutils pytz emoji asciimatics treelib
    pin cytoolz Toolz cython pytest twine wheel pyinstaller pysnooper ipdb pycallgraph pdir2
    echo_title "llm"
    pin openai mcp fastmcp langchain-core langchain langchain-openai llama-index-core llama-index-embeddings-ollama ollama peft
    echo_title "finance"
    pin pyalgotrade tushare
    # echo_title "GUI"
    # pin pyQt5 pyglet
    # pin PyGraphviz PyQtGraph pygal celluloid
    # echo_title "optional"
    # pin pyahp scikit-fuzzy ngender feedparser nudepy face_recognition keras-rl gym pygame wordcloud snowNLP stanfordnlp foolnltk pyserial howdoi pywavelets scrapy
    # echo_title "wrapper"
    # pin genanki julia rpy2 pyopengl

# elif [ $1 == pygraphviz ] 
# then
#     version=2.44.1
#     pip install pygraphviz --install-option="--include-path=/usr/local/Cellar/graphviz/${version}/include" --install-option="--library-path=/usr/local/Cellar/graphviz/${version}/lib"
else
    pin $1
fi
