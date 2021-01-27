# FROM ./Dockerfile.jupyterlab
FROM minhocomcomai/jupyterlab@sha256:6e9c0380023331dfa9c52894c8d8ceef999f0521ab9bc6990823c24ccefdb162

echo "Password: $PASSWORD"

EXPOSE 8020

CMD jupyter-lab --ip=0.0.0.0 --port=8000 --notebook-dir=/workspace/$REPO_NAME --LabApp.token="$PASSWORD" --allow-root


