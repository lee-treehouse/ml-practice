https://medium.com/data-science/dockerizing-jupyter-projects-39aad547484a
then adapted because jupyter notebooks not on dockerhub anymore, check out 
quay.io/jupyter/scipy-notebook

build 
docker build -t quay.io/jupyter/scipy-notebook:latest .

run
docker run --rm -it -p 8888:8888 quay.io/jupyter/scipy-notebook:latest

run w mount inside project
docker run --rm -it -p 8888:8888 -v $(pwd)/stuff:/stuff quay.io/jupyter/scipy-notebook:latest

using with 
https://www.udemy.com/course/deep-learning-machine-learning-practical/