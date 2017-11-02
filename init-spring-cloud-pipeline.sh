# pass the branch (e.g. master) or a particular tag (e.g. v1.0.0.RELEASE)
SC_PIPELINES_RELEASE=master
GIT_REPOSITORY_URL=git@github.com:hecob-Inspiron-3542/pipeline.git
cd ~/git
curl -LOk https://github.com/spring-cloud/spring-cloud-pipelines/archive/${SC_PIPELINES_RELEASE}.zip
unzip ${SC_PIPELINES_RELEASE}.zip
cd spring-cloud-pipelines-${SC_PIPELINES_RELEASE}
git init
# modify the pipelines to suit your needs
git add .
git commit -m "Initial commit"
git remote add origin ${GIT_REPOSITORY_URL}
git push origin develop
