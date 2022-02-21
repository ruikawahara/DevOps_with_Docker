import subprocess

# sample url:
# git@github.com:ruikawahara/docker-hy.github.io.git

gitRepo = input('Please enter URL for GitHub repo with valid Dockerfile: ')

# shallow url validity check
urlKeyWords = ['https://github.com/', 'git@github.com']

for k in urlKeyWords:
    if 'git@github.com' not in gitRepo:
        print('That is not a valid repository URL.')
        exit()

print(f'\n\n type: {type(gitRepo)} \n\n')

# download from GitHub
print('Cloning repository...')
gitclone = ['git', 'clone', gitRepo]
subprocess.run([gitclone])
# subprocess.run(['ls'])