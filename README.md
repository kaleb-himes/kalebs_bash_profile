clone these files into a directory with:

Example:
'''
git clone https://github.com/kaleb-himes/kalebs_bash_profile.git example_directory
Cloning into 'example_directory'...
remote: Counting objects: 15, done.
remote: Compressing objects: 100% (2/2), done.
remote: Total 15 (delta 0), reused 0 (delta 0), pack-reused 13
Unpacking objects: 100% (15/15), done.
Checking connectivity... done.
'''

the use copy/paste to move them to your home direcory

'''
cp .bash* ~/
'''

and now source the bashrc to update

'''
source .bashrc
'''

Now edit .bash_profile as you see fit and type "reset" to re-source the bashrc whenever you want.
