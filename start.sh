if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/TeamEviral/sessionhack_bot.git /sessionhack_bot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /sessionhack_bot
fi
cd /sessionhack_bot
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
