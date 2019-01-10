git fetch > rsyncLog.txt
git pull >> rsyncLog.txt

##디렉토리경로 마지막에 '/' 꼭 붙이세요!!
full_mockup_dir="/Users/dev/rep_git/mocup/melon-mma/resource/image/MMA2014/"
full_img_dir="/Users/dev/IdeaProjects/mockup/melon-image-dist/src/main/webapp/resource/image/MMA2014/"

echo full_mockup_dir :: ${full_mockup_dir}
echo full_img_dir :: ${full_img_dir}

echo "last update : $(date +%Y)년   $(date +%m)월 $(date +%d)일  $(date +%H) 시  $(date +%M) 분  $(date +%S) 초  " >> rsyncLog.txt
rsync -avrz --progress $full_mockup_dir $full_img_dir >> rsyncLog.txt
echo "complete sync!!"
