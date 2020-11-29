alias backendpy='PYTHONPATH="/Users/dmitry.erokhin/git/backend/apps/ys/pdf_worker:/Users/dmitry.erokhin/git/backend/apps/ys/api:/Users/dmitry.erokhin/git/backend/" python'
alias backendcov='PYTHONPATH="/Users/dmitry.erokhin/git/backend/apps/ys/pdf_worker:/Users/dmitry.erokhin/git/backend/apps/ys/api:/Users/dmitry.erokhin/git/backend/" coverage run --branch'

function backendpkgtest() {
    package_dir=$1
    backendcov -m unittest discover -v -s ${package_dir}  && coverage report -m ${package_dir}/*.py
}

alias bazelenv='source /venv/python3.6.5/bazel/bin/activate'
alias ideaenv='source /venv/python3.6.5/intellij/bin/activate'
alias readlink='greadlink'

# terraform
alias tf='terraform'
alias tfgu='terraform get -update'
alias tfplan='terraform plan -out=.latest_plan'
alias tfal='terraform apply .latest_plan'

# kubectl stuff
alias kc='kubectl'
alias kcgn='kubectl get nodes'
alias kcgp='kubectl get pods'

function kpodname() {
    search_string=$1
    echo $(kubectl get pods | grep $search_string | awk {'print $1'} | tail -n1)
}

function kpodlogs() {
    podname=$(kpodname $1)
    kubectl logs $podname
}

function gitpc() {
    BRANCH=`git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'`
    git push origin $BRANCH
}

