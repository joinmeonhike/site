echo "###"
echo "Clear"
echo "###"
clear

echo "###"
echo "Building MeditationWebApp for tilda"
echo "###"
cd ../MeditationWebApp
yarn build-for-tilda

echo "###"
echo "Copying MeditationWebApp for tilda"
echo "###"
mkdir ./map
cp ../MeditationWebApp/dist-for-tilda/* ./

git add .
git commit -a -m "Deploy"
git push