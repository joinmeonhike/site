echo "###"
echo "Clear"
echo "###"
clear

echo "###"
echo "Building MeditationWebApp for tilda"
echo "###"
cd ../MeditationWebApp
yarn build-for-tilda

cd ../JoinMeOnHikeSite

echo "###"
echo "Copying MeditationWebApp for tilda"
echo "###"
mkdir ./dist-for-tilda
cp -r ../MeditationWebApp/dist-for-tilda/* ./

git add .
git commit -a -m "Deploy"   
git push