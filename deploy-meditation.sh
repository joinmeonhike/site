echo "###"
echo "Clear"
echo "###"
clear

rm -rf ./map

echo "###"
echo "Building MeditationWebApp"
echo "###"
cd ../MeditationWebApp
yarn build

cd ../JoinMeOnHikeSite

echo "###"
echo "Copying MeditationWebApp"
echo "###"
mkdir ./map
cp ../MeditationWebApp/dist/* ./map/

git add .
git commit -a -m "Deploy"
git push