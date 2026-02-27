sudo locale-gen en_US en_US.UTF-8
echo "locales locales/default_locale select en_US.UTF-8" | sudo debconf-set-selections
