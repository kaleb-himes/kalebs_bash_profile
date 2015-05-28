clone these files into a directory with:
```
git clone https://github.com/kaleb-himes/kalebs_bash_profile.git example_directory
```
You should see output like the following:
```
Cloning into 'example_directory'...
remote: Counting objects: 15, done.
remote: Compressing objects: 100% (2/2), done.
remote: Total 15 (delta 0), reused 0 (delta 0), pack-reused 13
Unpacking objects: 100% (15/15), done.
Checking connectivity... done.
```
*** skip to NOTE if you're on a mac
then use copy/paste to move them to your home direcory
```
cp .bash* ~/
```
and now source the bashrc to update
```
source .bashrc
```
Now edit .bash_profile as you see fit and type "reset" to re-source the bashrc whenever you want.

*** NOTE: if you're on a mac os x you will just need the .bash_profile.mac no bashrc
```
mv .bash_profile.mac ~/.bash_profile
cd
source .bash_profile
```
