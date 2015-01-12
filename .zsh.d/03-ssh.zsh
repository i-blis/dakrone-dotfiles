# for use with `brew install openssh --with-brewed-openssl --with-keychain-support`
if [ -s /usr/local/bin/ssh-agent ]; then
    eval $(ssh-agent)

    function cleanup-ssh-agent {
        echo "Killing SSH-Agent"
        kill -9 $SSH_AGENT_PID
    }

    trap cleanup-ssh-agent EXIT
fi