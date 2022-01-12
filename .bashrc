alias list.java.pids="ss -lntp | grep java | awk '{print \$6}' | awk -F, '{print \$2}' | sort | uniq"
function get.java.flags {
    [ "$1" == "" ] && echo Need \<pid\> as first argument. && return
    $JAVA_HOME/bin/jinfo -flags $1 | grep flags | tr ' ' '\n'
}
