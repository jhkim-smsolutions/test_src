make clean
./Configure linux-x86_64 shared  no-md2 no-mdc2 no-rc5 no-rc4  --prefix=/usr/local
cov-build --dir ../result_openssl make
cov-analyze --dir ../result_openssl/
cov-commit-defects --scm git --scm-project-root=./ --dir ../result_openssl/ --stream Stream_git_test --url http://192.168.0.28:8080/ --user jhkim-smsolutions --password 80065227

