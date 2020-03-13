# abort on errors
set -e

#lint
npm run lint

# build
npm run build

# navigate into the build output directory
cd dist

git init
git add -A

git config user.name "Nacimiento Martin"
git config user.email "martinnacimiento98@gmail.com"

git commit -m 'deploy'

git remote add origin https://github.com/martinnacimiento/martinnacimiento.github.io.git
# if you are deploying to https://<USERNAME>.github.io/<REPO>
git push -f origin master

cd -