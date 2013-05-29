# github-backup-utils

Github Backup Utils

   * Pointers to some existing solutions and tools. 
   * Scripts to complement them. 

## Usage

   * Run `init.sh`: 
   it helps you interactively configure backup information, 
   e.g. your GitHub Username. 
   * `update-repo-list.sh`:
   List the repos of you on GitHub; Store in `conf/repo.list`.
   You can also write the list yourself for repos from other places. 
   * `backup.sh`:
   If a valid `conf/repo.list` is created, 
   You just run this script to backup the repos. 
   It uses git-fetch and git-pull for incremental backup. 

Others:

   * `auto.sh`: You can cron it. 

## Notes on GitHub Backup

   * A discussion on several Github backup methods. 
   <http://addyosmani.com/blog/backing-up-a-github-account/>. 
   A simple Ruby script and the below repo are mentioned. 
   * A top hit on Google and hundred star project: 
   <https://github.com/joeyh/github-backup>. 
   Writting in Haskell, it can backup everything associated with one GitHub repo. 
   Notably, all the forks and forks of forks are recursively backed-up. 
   * Another top hit GitHub repo on Google. 
   <https://github.com/avar/github-backup>
   cron, Perl, cpan, Megapull ... 
   [Megapull](http://search.cpan.org/~rjbs/Git-Megapull-0.101751/lib/Git/Megapull.pm)
   looks like a tool for batch fetching. 
   It is a cron job to backup GitHub repos of users on local system. 
   Users have to configure GitHub token (?) first. 
   * A SO discussion: <http://stackoverflow.com/questions/1251713/backup-of-github-repo>. 
   It points me to something I have not used in Git.
   `git bundle`, `git clone --mirror`. 
   * A lightweight GitHub backup shell script pointed to from the above SO. 
   <https://github.com/ptrofimov/github-backup-sh>. 
   That's really what I'm looking for. 
   I was just about to write one like that.
   It is good for those who have a small number of repos.
   I personally need incremental backup.
   I use it as a starting point. 
   
