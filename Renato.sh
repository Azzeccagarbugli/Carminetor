#!/bin/bash

#Il tuo motivatore personale adatto
#per i  momenti più bui e oscuri 
#della tua intera vita

audioflag=false
DEFPLAYER="mplayer -really-quiet -ao alsa"
PLAYER="${PLAYER:-$DEFPLAYER}"

user_name=$USER

for parm in "$@"
        do
        ## LEGGE IL PARAMETRO, SE PRESENTE DETTA L'AUDIO
        if [ "$parm" = "--a" ]
             then
                     which "$(echo "$PLAYER" | awk '{print $1}')" >/dev/null 2>&1 || {
                          echo "Finocchio, devi installare il fottuto player." >&2
                          exit 255
                  }
                  audioflag=true
          fi
done

RENATO="CORRI $user_name!"
RENATOVOICE="http://www.ispeech.org/p/generic/getaudio?text=$RENATO%2C&voice=euritalianmale&speed=0&action=convert"

if [ "$audioflag" = true ]
          then
          $PLAYER "$RENATOVOICE" 2>/dev/null
fi

