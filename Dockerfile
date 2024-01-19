FROM jupyter/minimal-notebook

RUN pip install numpy pandas matplotlib scipy

CMD ["start-notebook.sh", "--NotebookApp.token="]
