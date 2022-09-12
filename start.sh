if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/belugaop/TEST-s02.git /TEST-s02
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /TEST-s02
fi
cd /TEST-s02
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
