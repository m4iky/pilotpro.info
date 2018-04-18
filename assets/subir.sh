# !/bin/bash
git add -A

git commit -m "Version estable"

git push

echo "###########################"
echo "SE ACABA DE SUBIR LA VERSION ESTABLE A GITLAB.COM"

cd src/assets/sub-dist && git pull

cd ../

rm -R sub-dist/*

cd ../../ && ng build -prod -aot false
echo "El proyecto ha compilado correctamente"
ls
mv dist/* src/assets/sub-dist

cd src/assets/sub-dist

git add -A

git commit -m "subiendo"

git push

echo "La pagina ha subido a gitlab.com"


