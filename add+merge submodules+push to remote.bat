@echo off

set /p str=Enter new git submodule repository url(example https://github.com/user/repo.git):

git submodule add %str%

git submodule update

git submodule update --remote --merge

git add .

git commit -m "[Pull]: Update modules code"

git push