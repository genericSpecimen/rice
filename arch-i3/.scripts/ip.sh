ip addr show | awk '/inet /{print $2}' | tail -n1 | cut -d '/' -f1

