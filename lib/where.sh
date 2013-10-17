getcomm() {
  community=$(sed -n "/^$rname /s///p" $commfile)

  if [ -z "$community" ] ; then
    community=$DEFAULT_COMMUNITY
  fi

  echo $community
}
