function phpinstall
  echo -e $argv[1] + '\n7.0.0' | sort --check=silent --version-sort

  if test (echo $status) -eq 0
    echo "** Legacy version: Using OpenSSL 1.0 **"
    set -x PKG_CONFIG_PATH "/usr/lib/openssl-1.0/pkgconfig"
  end

  set -l PHPUP_CONFIGURE_OPTS "
  --enable-ftp
  --enable-mbstring
  --enable-mysqlnd
  --enable-soap
  --with-mysql
  --with-mysqli
  --with-pdo-mysql
  --with-curl
  --with-openssl
  --with-gd
  --with-gettext
  --with-readline
  --with-iconv
  --with-zlib
  "

  phpup install $argv
end
