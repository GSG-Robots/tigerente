tigerente list-devices -n name address | while read line; do
    elms=($line)
    echo Updating firmware on ${elms[0]}
    tigerente fw-update --dev ${elms[1]} --no-reconnect
done
