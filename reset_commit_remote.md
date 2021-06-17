git reset --soft [되돌리려는 시점의 커밋]
(예: git reset --soft 2d8d45e)

git push origin [브랜치명] -f
(예: git push origin develop -f)

주의 사항: 만약 다른 팀원과 작업 중이라면 다른 팀원이 [되돌리려는 시점의 커밋] 이후의 커밋을 pull 받지 않았음을 사전에 확인해야 한다.

참조
https://gmlwjd9405.github.io/2018/05/25/git-add-cancle.html
