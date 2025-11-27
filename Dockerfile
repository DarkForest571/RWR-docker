
FROM steamcmd/steamcmd:latest

ENV STEAM_USERNAME="anonymous"
ENV STEAM_PASSWORD=""

SHELL ["/bin/bash", "-c"]

ENTRYPOINT []

CMD steamcmd +@NoPromptForPassword 1 +force_install_dir /var/game_server +login $STEAM_USERNAME $STEAM_PASSWORD +app_update 270150 validate +quit && \
	/var/game_server/launch_server

EXPOSE 1234/udp
