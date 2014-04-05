# Colorize Maven Output

  # regular colors
  BLK=$'\033[0;30m'    # black
  RED=$'\033[0;31m'    # red
  GRN=$'\033[0;32m'    # green
  YEL=$'\033[0;33m'    # yellow
  BLU=$'\033[0;34m'    # blue
  MAG=$'\033[0;35m'    # magenta(purple)
  CYN=$'\033[0;36m'    # cyan(white blue)
  WHT=$'\033[0;37m'    # white

  # emphasized (bolded) colors
  EMBLK=$'\033[1;30m'  # black
  EMRED=$'\033[1;31m'  # red
  EMGRN=$'\033[1;32m'  # green
  EMYEL=$'\033[1;33m'  # yellow
  EMBLU=$'\033[1;34m'  # blue
  EMMAG=$'\033[1;35m'  # magenta(purple)
  EMCYN=$'\033[1;36m'  # cyan(white blue)
  EMWHT=$'\033[1;37m'  # white

  # background colors
  BGBLK=$'\033[40m'  # black
  BGRED=$'\033[41m'  # red
  BGGRN=$'\033[42m'  # green
  BGYEL=$'\033[43m'  # yellow
  BGBLU=$'\033[44m'  # blue
  BGMAG=$'\033[45m'  # magenta(purple)
  BGCYN=$'\033[46m'  # cyan(white blue)
  BGWHT=$'\033[47m'  # white

  NONE=$'\033[0m'    # none



alias maven=$M2_HOME/bin/mvn
color_maven() {

  #checking whether $M2_HOME variable is set. This variable is required for this script
  if [ -z "$M2_HOME" ]
  then
  echo -e $RED"[colorize script error] env. variable \$M2_HOME is not set"$NONE
  return
  fi

  maven $* | sed \
    -e "s/Tests run: \([0-9]*\), Failures: \([0-9]*\), Errors: \([0-9]*\), Skipped: \([0-9]*\)/${GRN}Tests run: \1$NONE, Failures: $RED\2$NONE, Errors: $RED\3$NONE, Skipped: $YEL\4$NONE/g" \
    -e "s/\(Downloading: .*\)/$MAG\1$NONE/g" \
    -e "s/\(Downloaded: .*\)/$MAG\1$NONE/g" \
    -e "s/\(SKIPPED\)/$RED\1$NONE/g" \
    -e "s/\(\(FAILURE \)\[.*\]\)/$RED\1$NONE/g" \
    -e "s/\(\(SUCCESS \)\[.*\]\)/$GRN\1$NONE/g" \
    -e "s/\(\[\{0,1\}WARN\(ING\)\{0,1\}\]\{0,1\}.*\)/$YEL\1$NONE/g" \
    -e "s/\(\(BUILD \)FAILURE.*\)/$BGRED\1$NONE/g" \
    -e "s/\(\(BUILD \)SUCCESS.*\)/$BGGRN\1$NONE/g" \
    -e "s/\(\[DEBUG\].*\)/$BLU\1$NONE/g" \
    -e "s/\(\[INFO\].*\)/$WHT\1$NONE/g" \
    -e "s/\(\[ERROR\].*\)/$RED\1$NONE/g"
}
alias mvn=color_maven
