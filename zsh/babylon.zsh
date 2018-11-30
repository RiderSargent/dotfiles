# vim:syntax=zsh

source_if_exists "$HOME/babylon_credentials.sh"

service-version() {
  env=$1
  service=$2
  curl -s https://services-uk.$env.babylontech.co.uk/status/version | jq --arg s $service -r '.[] | select(.name == $s) | .version'
}

dev-version() {
  service-version dev $1
}

staging-version() {
  service-version staging $1
}
