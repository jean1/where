
getcomm() {
  rname=$(getname "$1")
  community=$(sed -n "/^$rname /s///p" $commfile)
  if [ -z "$community" ] ; then
    community=$DEFAULT_COMMUNITY
  fi

  echo $community
}

getname() {
  if echo $1 | egrep -q "^((25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$" ; then
    host $1|sed 's/.* //'|sed 's/\..*//'
  else 
    echo $1
  fi
}
