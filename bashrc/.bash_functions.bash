#/bin/bashrc
runVi ()
{
    x=$(echo $1 | cut -d '.' -f 2)
    if [ $x = tex ]; then
        x=$(echo $1 | cut -d '.' -f 1)
        if [ $x = main ]; then
            make
        else   
            gvim $1
        fi
    else   
        gvim $1
    fi
}


genpasswd() 
{
    local l=$1
    [ "$l" == "" ] && l=16
    tr -dc A-Za-z0-9_ < /dev/urandom | head -c ${l} | xargs
}


yta () 
{ 
    cookiefile="/tmp/cookies-$( date +%s.%N ).txt";
    url=$( youtube-dl --cookies $cookiefile -g "$@" );
    mplayer -vo  null -cookies -cookies-file $cookiefile $url;
    rm -f $cookiefile
}

yt () 
{ 
    cookiefile="/tmp/cookies-$( date +%s.%N ).txt";
    url=$( youtube-dl --cookies $cookiefile -g "$@" );
    mplayer -cookies -cookies-file $cookiefile $url;
    rm -f $cookiefile
}
